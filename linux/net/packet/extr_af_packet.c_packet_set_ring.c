
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpacket_req3 {int tp_feature_req_word; scalar_t__ tp_sizeof_priv; int tp_retire_blk_tov; } ;
struct tpacket_req {int tp_block_nr; scalar_t__ tp_block_size; unsigned int tp_frame_size; int tp_frame_nr; } ;
union tpacket_req_u {struct tpacket_req3 req3; struct tpacket_req req; } ;
typedef int u64 ;
struct sk_buff_head {int lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; struct sk_buff_head sk_write_queue; } ;
struct pgv {int dummy; } ;
struct packet_ring_buffer {int pg_vec; int frames_per_block; int frame_max; int frame_size; int pg_vec_pages; int pg_vec_len; int pg_vec_order; scalar_t__ head; } ;
struct TYPE_2__ {int func; } ;
struct packet_sock {int tp_version; unsigned int tp_hdrlen; unsigned int tp_reserve; int running; int bind_lock; scalar_t__ num; int pg_vec_lock; int mapped; struct packet_ring_buffer rx_ring; TYPE_1__ prot_hook; struct packet_ring_buffer tx_ring; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ BLK_PLUS_PRIV (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int PAGE_ALIGNED (scalar_t__) ;
 int PAGE_SIZE ;
 unsigned int TPACKET2_HDRLEN ;
 unsigned int TPACKET3_HDRLEN ;
 int TPACKET_ALIGNMENT ;
 unsigned int TPACKET_HDRLEN ;



 int UINT_MAX ;
 int __unregister_prot_hook (struct sock*,int) ;
 struct pgv* alloc_pg_vec (struct tpacket_req*,int) ;
 scalar_t__ atomic_read (int *) ;
 int free_pg_vec (struct pgv*,int,int) ;
 int get_order (int) ;
 int init_prb_bdqc (struct packet_sock*,struct packet_ring_buffer*,struct pgv*,union tpacket_req_u*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int packet_rcv ;
 scalar_t__ packet_read_pending (struct packet_ring_buffer*) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int pr_err (char*,scalar_t__) ;
 int prb_shutdown_retire_blk_timer (struct packet_sock*,struct sk_buff_head*) ;
 int register_prot_hook (struct sock*) ;
 int skb_queue_purge (struct sk_buff_head*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int swap (int,int) ;
 int synchronize_net () ;
 int tpacket_rcv ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int packet_set_ring(struct sock *sk, union tpacket_req_u *req_u,
  int closing, int tx_ring)
{
 struct pgv *pg_vec = ((void*)0);
 struct packet_sock *po = pkt_sk(sk);
 int was_running, order = 0;
 struct packet_ring_buffer *rb;
 struct sk_buff_head *rb_queue;
 __be16 num;
 int err = -EINVAL;

 struct tpacket_req *req = &req_u->req;

 rb = tx_ring ? &po->tx_ring : &po->rx_ring;
 rb_queue = tx_ring ? &sk->sk_write_queue : &sk->sk_receive_queue;

 err = -EBUSY;
 if (!closing) {
  if (atomic_read(&po->mapped))
   goto out;
  if (packet_read_pending(rb))
   goto out;
 }

 if (req->tp_block_nr) {
  unsigned int min_frame_size;


  err = -EBUSY;
  if (unlikely(rb->pg_vec))
   goto out;

  switch (po->tp_version) {
  case 130:
   po->tp_hdrlen = TPACKET_HDRLEN;
   break;
  case 129:
   po->tp_hdrlen = TPACKET2_HDRLEN;
   break;
  case 128:
   po->tp_hdrlen = TPACKET3_HDRLEN;
   break;
  }

  err = -EINVAL;
  if (unlikely((int)req->tp_block_size <= 0))
   goto out;
  if (unlikely(!PAGE_ALIGNED(req->tp_block_size)))
   goto out;
  min_frame_size = po->tp_hdrlen + po->tp_reserve;
  if (po->tp_version >= 128 &&
      req->tp_block_size <
      BLK_PLUS_PRIV((u64)req_u->req3.tp_sizeof_priv) + min_frame_size)
   goto out;
  if (unlikely(req->tp_frame_size < min_frame_size))
   goto out;
  if (unlikely(req->tp_frame_size & (TPACKET_ALIGNMENT - 1)))
   goto out;

  rb->frames_per_block = req->tp_block_size / req->tp_frame_size;
  if (unlikely(rb->frames_per_block == 0))
   goto out;
  if (unlikely(rb->frames_per_block > UINT_MAX / req->tp_block_nr))
   goto out;
  if (unlikely((rb->frames_per_block * req->tp_block_nr) !=
     req->tp_frame_nr))
   goto out;

  err = -ENOMEM;
  order = get_order(req->tp_block_size);
  pg_vec = alloc_pg_vec(req, order);
  if (unlikely(!pg_vec))
   goto out;
  switch (po->tp_version) {
  case 128:

   if (!tx_ring) {
    init_prb_bdqc(po, rb, pg_vec, req_u);
   } else {
    struct tpacket_req3 *req3 = &req_u->req3;

    if (req3->tp_retire_blk_tov ||
        req3->tp_sizeof_priv ||
        req3->tp_feature_req_word) {
     err = -EINVAL;
     goto out_free_pg_vec;
    }
   }
   break;
  default:
   break;
  }
 }

 else {
  err = -EINVAL;
  if (unlikely(req->tp_frame_nr))
   goto out;
 }



 spin_lock(&po->bind_lock);
 was_running = po->running;
 num = po->num;
 if (was_running) {
  po->num = 0;
  __unregister_prot_hook(sk, 0);
 }
 spin_unlock(&po->bind_lock);

 synchronize_net();

 err = -EBUSY;
 mutex_lock(&po->pg_vec_lock);
 if (closing || atomic_read(&po->mapped) == 0) {
  err = 0;
  spin_lock_bh(&rb_queue->lock);
  swap(rb->pg_vec, pg_vec);
  rb->frame_max = (req->tp_frame_nr - 1);
  rb->head = 0;
  rb->frame_size = req->tp_frame_size;
  spin_unlock_bh(&rb_queue->lock);

  swap(rb->pg_vec_order, order);
  swap(rb->pg_vec_len, req->tp_block_nr);

  rb->pg_vec_pages = req->tp_block_size/PAGE_SIZE;
  po->prot_hook.func = (po->rx_ring.pg_vec) ?
      tpacket_rcv : packet_rcv;
  skb_queue_purge(rb_queue);
  if (atomic_read(&po->mapped))
   pr_err("packet_mmap: vma is busy: %d\n",
          atomic_read(&po->mapped));
 }
 mutex_unlock(&po->pg_vec_lock);

 spin_lock(&po->bind_lock);
 if (was_running) {
  po->num = num;
  register_prot_hook(sk);
 }
 spin_unlock(&po->bind_lock);
 if (pg_vec && (po->tp_version > 129)) {

  if (!tx_ring)
   prb_shutdown_retire_blk_timer(po, rb_queue);
 }

out_free_pg_vec:
 if (pg_vec)
  free_pg_vec(pg_vec, order, req->tp_block_nr);
out:
 return err;
}
