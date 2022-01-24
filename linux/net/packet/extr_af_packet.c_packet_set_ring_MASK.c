#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tpacket_req3 {int /*<<< orphan*/  tp_feature_req_word; scalar_t__ tp_sizeof_priv; int /*<<< orphan*/  tp_retire_blk_tov; } ;
struct tpacket_req {int tp_block_nr; scalar_t__ tp_block_size; unsigned int tp_frame_size; int tp_frame_nr; } ;
union tpacket_req_u {struct tpacket_req3 req3; struct tpacket_req req; } ;
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; struct sk_buff_head sk_write_queue; } ;
struct pgv {int dummy; } ;
struct packet_ring_buffer {int pg_vec; int frames_per_block; int frame_max; int frame_size; int pg_vec_pages; int /*<<< orphan*/  pg_vec_len; int /*<<< orphan*/  pg_vec_order; scalar_t__ head; } ;
struct TYPE_2__ {int /*<<< orphan*/  func; } ;
struct packet_sock {int tp_version; unsigned int tp_hdrlen; unsigned int tp_reserve; int running; int /*<<< orphan*/  bind_lock; scalar_t__ num; int /*<<< orphan*/  pg_vec_lock; int /*<<< orphan*/  mapped; struct packet_ring_buffer rx_ring; TYPE_1__ prot_hook; struct packet_ring_buffer tx_ring; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int PAGE_SIZE ; 
 unsigned int TPACKET2_HDRLEN ; 
 unsigned int TPACKET3_HDRLEN ; 
 int TPACKET_ALIGNMENT ; 
 unsigned int TPACKET_HDRLEN ; 
#define  TPACKET_V1 130 
#define  TPACKET_V2 129 
#define  TPACKET_V3 128 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 struct pgv* FUNC3 (struct tpacket_req*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pgv*,int,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct packet_sock*,struct packet_ring_buffer*,struct pgv*,union tpacket_req_u*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  packet_rcv ; 
 scalar_t__ FUNC10 (struct packet_ring_buffer*) ; 
 struct packet_sock* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct packet_sock*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  tpacket_rcv ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct sock *sk, union tpacket_req_u *req_u,
		int closing, int tx_ring)
{
	struct pgv *pg_vec = NULL;
	struct packet_sock *po = FUNC11(sk);
	int was_running, order = 0;
	struct packet_ring_buffer *rb;
	struct sk_buff_head *rb_queue;
	__be16 num;
	int err = -EINVAL;
	/* Added to avoid minimal code churn */
	struct tpacket_req *req = &req_u->req;

	rb = tx_ring ? &po->tx_ring : &po->rx_ring;
	rb_queue = tx_ring ? &sk->sk_write_queue : &sk->sk_receive_queue;

	err = -EBUSY;
	if (!closing) {
		if (FUNC4(&po->mapped))
			goto out;
		if (FUNC10(rb))
			goto out;
	}

	if (req->tp_block_nr) {
		unsigned int min_frame_size;

		/* Sanity tests and some calculations */
		err = -EBUSY;
		if (FUNC22(rb->pg_vec))
			goto out;

		switch (po->tp_version) {
		case TPACKET_V1:
			po->tp_hdrlen = TPACKET_HDRLEN;
			break;
		case TPACKET_V2:
			po->tp_hdrlen = TPACKET2_HDRLEN;
			break;
		case TPACKET_V3:
			po->tp_hdrlen = TPACKET3_HDRLEN;
			break;
		}

		err = -EINVAL;
		if (FUNC22((int)req->tp_block_size <= 0))
			goto out;
		if (FUNC22(!FUNC1(req->tp_block_size)))
			goto out;
		min_frame_size = po->tp_hdrlen + po->tp_reserve;
		if (po->tp_version >= TPACKET_V3 &&
		    req->tp_block_size <
		    FUNC0((u64)req_u->req3.tp_sizeof_priv) + min_frame_size)
			goto out;
		if (FUNC22(req->tp_frame_size < min_frame_size))
			goto out;
		if (FUNC22(req->tp_frame_size & (TPACKET_ALIGNMENT - 1)))
			goto out;

		rb->frames_per_block = req->tp_block_size / req->tp_frame_size;
		if (FUNC22(rb->frames_per_block == 0))
			goto out;
		if (FUNC22(rb->frames_per_block > UINT_MAX / req->tp_block_nr))
			goto out;
		if (FUNC22((rb->frames_per_block * req->tp_block_nr) !=
					req->tp_frame_nr))
			goto out;

		err = -ENOMEM;
		order = FUNC6(req->tp_block_size);
		pg_vec = FUNC3(req, order);
		if (FUNC22(!pg_vec))
			goto out;
		switch (po->tp_version) {
		case TPACKET_V3:
			/* Block transmit is not supported yet */
			if (!tx_ring) {
				FUNC7(po, rb, pg_vec, req_u);
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
	/* Done */
	else {
		err = -EINVAL;
		if (FUNC22(req->tp_frame_nr))
			goto out;
	}


	/* Detach socket from network */
	FUNC16(&po->bind_lock);
	was_running = po->running;
	num = po->num;
	if (was_running) {
		po->num = 0;
		FUNC2(sk, false);
	}
	FUNC18(&po->bind_lock);

	FUNC21();

	err = -EBUSY;
	FUNC8(&po->pg_vec_lock);
	if (closing || FUNC4(&po->mapped) == 0) {
		err = 0;
		FUNC17(&rb_queue->lock);
		FUNC20(rb->pg_vec, pg_vec);
		rb->frame_max = (req->tp_frame_nr - 1);
		rb->head = 0;
		rb->frame_size = req->tp_frame_size;
		FUNC19(&rb_queue->lock);

		FUNC20(rb->pg_vec_order, order);
		FUNC20(rb->pg_vec_len, req->tp_block_nr);

		rb->pg_vec_pages = req->tp_block_size/PAGE_SIZE;
		po->prot_hook.func = (po->rx_ring.pg_vec) ?
						tpacket_rcv : packet_rcv;
		FUNC15(rb_queue);
		if (FUNC4(&po->mapped))
			FUNC12("packet_mmap: vma is busy: %d\n",
			       FUNC4(&po->mapped));
	}
	FUNC9(&po->pg_vec_lock);

	FUNC16(&po->bind_lock);
	if (was_running) {
		po->num = num;
		FUNC14(sk);
	}
	FUNC18(&po->bind_lock);
	if (pg_vec && (po->tp_version > TPACKET_V2)) {
		/* Because we don't support block-based V3 on tx-ring */
		if (!tx_ring)
			FUNC13(po, rb_queue);
	}

out_free_pg_vec:
	if (pg_vec)
		FUNC5(pg_vec, order, req->tp_block_nr);
out:
	return err;
}