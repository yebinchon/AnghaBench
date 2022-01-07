
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct sock {int sk_rcvbuf; scalar_t__ sk_family; } ;
struct TYPE_13__ {int sinit_max_init_timeo; int sinit_max_attempts; int sinit_num_ostreams; int sinit_max_instreams; } ;
struct TYPE_12__ {int srto_min; int srto_max; int srto_initial; } ;
struct TYPE_20__ {int sasoc_asocmaxrxt; int sasoc_cookie_life; } ;
struct sctp_sock {int autoclose; int default_rcv_context; int default_timetolive; int default_context; int default_flags; int default_ppid; int default_stream; int pathmtu; TYPE_2__ initmsg; int subscribe; int max_burst; int param_flags; int sackfreq; int sackdelay; int dscp; int flowlabel; int pathmaxrxt; int hbinterval; TYPE_1__ rtoinfo; int pf_retrans; TYPE_9__ assocparams; int user_frag; } ;
struct sctp_paramhdr {int length; int type; } ;
struct TYPE_18__ {int port; } ;
struct TYPE_19__ {TYPE_7__ bind_addr; } ;
struct sctp_endpoint {TYPE_10__* auth_chunk_list; TYPE_10__* auth_hmacs_list; int strreset_enable; int active_key_id; TYPE_8__ base; } ;
struct TYPE_17__ {struct sock* sk; int inqueue; int bind_addr; int refcnt; int type; } ;
struct TYPE_16__ {scalar_t__ auth_random; int auth_chunks; int auth_hmacs; int sinit_num_ostreams; scalar_t__ initial_tsn; int my_port; int my_vtag; int sinit_max_instreams; } ;
struct TYPE_14__ {int sack_needed; int sack_generation; int ipv4_address; int ipv6_address; int transport_addr_list; int rwnd; } ;
struct sctp_association {int rto_initial; int rto_max; int sackdelay; int* timeouts; int rwnd; int a_rwnd; struct sctp_endpoint* ep; TYPE_6__ base; int stream; TYPE_5__ c; int strreset_enable; int active_key_id; int endpoint_shared_keys; int default_rcv_context; int default_timetolive; int default_context; int default_flags; int default_ppid; int default_stream; int asocs; TYPE_3__ peer; int pathmtu; int ulpq; int outqueue; int asconf_ack_list; int addip_chunk_list; scalar_t__ strreset_outseq; scalar_t__ addip_serial; scalar_t__ ctsn_ack_point; scalar_t__ last_cwr_tsn; scalar_t__ highest_sacked; scalar_t__ adv_peer_ack_point; scalar_t__ next_tsn; int wait; int rmem_alloc; void* max_init_timeo; int max_init_attempts; int * timers; int subscribe; int max_burst; int param_flags; int sackfreq; int dscp; int flowlabel; int pathmaxrxt; void* hbinterval; void* rto_min; int pf_retrans; int max_retrans; int user_frag; int cookie_life; int state; } ;
typedef int gfp_t ;
typedef enum sctp_scope { ____Placeholder_sctp_scope } sctp_scope ;
struct TYPE_15__ {int length; } ;
struct TYPE_11__ {TYPE_4__ param_hdr; } ;


 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SCTP_AUTH_RANDOM_LENGTH ;
 int SCTP_DEFAULT_MAXWINDOW ;
 int SCTP_DEFAULT_MINWINDOW ;
 int SCTP_EP_TYPE_ASSOCIATION ;
 size_t SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 int SCTP_EVENT_TIMEOUT_NONE ;
 size_t SCTP_EVENT_TIMEOUT_SACK ;
 size_t SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 size_t SCTP_EVENT_TIMEOUT_T1_INIT ;
 size_t SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 size_t SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_NUM_TIMEOUT_TYPES ;
 int SCTP_PARAM_RANDOM ;
 int SCTP_STATE_CLOSED ;
 int atomic_set (int *,int ) ;
 int get_random_bytes (struct sctp_paramhdr*,scalar_t__) ;
 int htons (scalar_t__) ;
 int init_waitqueue_head (int *) ;
 int memcpy (int ,TYPE_10__*,int ) ;
 int ms_to_ktime (int ) ;
 void* msecs_to_jiffies (int ) ;
 int ntohs (int ) ;
 int refcount_set (int *,int) ;
 int sctp_assoc_bh_rcv ;
 int sctp_assoc_update_frag_point (struct sctp_association*) ;
 scalar_t__ sctp_auth_asoc_copy_shkeys (struct sctp_endpoint const*,struct sctp_association*,int ) ;
 int sctp_bind_addr_init (int *,int ) ;
 int sctp_endpoint_hold (struct sctp_endpoint*) ;
 int sctp_endpoint_put (struct sctp_endpoint*) ;
 int sctp_generate_tag (struct sctp_endpoint const*) ;
 scalar_t__ sctp_generate_tsn (struct sctp_endpoint const*) ;
 int sctp_inq_init (int *) ;
 int sctp_inq_set_th_handler (int *,int ) ;
 int sctp_outq_init (struct sctp_association*,int *) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 int sctp_stream_free (int *) ;
 scalar_t__ sctp_stream_init (int *,int ,int ,int ) ;
 int * sctp_timer_events ;
 int sctp_ulpq_init (int *,struct sctp_association*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct sctp_association *sctp_association_init(
     struct sctp_association *asoc,
     const struct sctp_endpoint *ep,
     const struct sock *sk,
     enum sctp_scope scope, gfp_t gfp)
{
 struct sctp_sock *sp;
 struct sctp_paramhdr *p;
 int i;


 sp = sctp_sk((struct sock *)sk);


 asoc->ep = (struct sctp_endpoint *)ep;
 asoc->base.sk = (struct sock *)sk;

 sctp_endpoint_hold(asoc->ep);
 sock_hold(asoc->base.sk);


 asoc->base.type = SCTP_EP_TYPE_ASSOCIATION;


 refcount_set(&asoc->base.refcnt, 1);


 sctp_bind_addr_init(&asoc->base.bind_addr, ep->base.bind_addr.port);

 asoc->state = SCTP_STATE_CLOSED;
 asoc->cookie_life = ms_to_ktime(sp->assocparams.sasoc_cookie_life);
 asoc->user_frag = sp->user_frag;




 asoc->max_retrans = sp->assocparams.sasoc_asocmaxrxt;
 asoc->pf_retrans = sp->pf_retrans;

 asoc->rto_initial = msecs_to_jiffies(sp->rtoinfo.srto_initial);
 asoc->rto_max = msecs_to_jiffies(sp->rtoinfo.srto_max);
 asoc->rto_min = msecs_to_jiffies(sp->rtoinfo.srto_min);




 asoc->hbinterval = msecs_to_jiffies(sp->hbinterval);


 asoc->pathmaxrxt = sp->pathmaxrxt;

 asoc->flowlabel = sp->flowlabel;
 asoc->dscp = sp->dscp;


 asoc->sackdelay = msecs_to_jiffies(sp->sackdelay);
 asoc->sackfreq = sp->sackfreq;




 asoc->param_flags = sp->param_flags;




 asoc->max_burst = sp->max_burst;

 asoc->subscribe = sp->subscribe;


 asoc->timeouts[SCTP_EVENT_TIMEOUT_T1_COOKIE] = asoc->rto_initial;
 asoc->timeouts[SCTP_EVENT_TIMEOUT_T1_INIT] = asoc->rto_initial;
 asoc->timeouts[SCTP_EVENT_TIMEOUT_T2_SHUTDOWN] = asoc->rto_initial;





 asoc->timeouts[SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD]
  = 5 * asoc->rto_max;

 asoc->timeouts[SCTP_EVENT_TIMEOUT_SACK] = asoc->sackdelay;
 asoc->timeouts[SCTP_EVENT_TIMEOUT_AUTOCLOSE] = sp->autoclose * HZ;


 for (i = SCTP_EVENT_TIMEOUT_NONE; i < SCTP_NUM_TIMEOUT_TYPES; ++i)
  timer_setup(&asoc->timers[i], sctp_timer_events[i], 0);





 asoc->c.sinit_max_instreams = sp->initmsg.sinit_max_instreams;
 asoc->c.sinit_num_ostreams = sp->initmsg.sinit_num_ostreams;
 asoc->max_init_attempts = sp->initmsg.sinit_max_attempts;

 asoc->max_init_timeo =
   msecs_to_jiffies(sp->initmsg.sinit_max_init_timeo);






 if ((sk->sk_rcvbuf/2) < SCTP_DEFAULT_MINWINDOW)
  asoc->rwnd = SCTP_DEFAULT_MINWINDOW;
 else
  asoc->rwnd = sk->sk_rcvbuf/2;

 asoc->a_rwnd = asoc->rwnd;


 asoc->peer.rwnd = SCTP_DEFAULT_MAXWINDOW;


 atomic_set(&asoc->rmem_alloc, 0);

 init_waitqueue_head(&asoc->wait);

 asoc->c.my_vtag = sctp_generate_tag(ep);
 asoc->c.my_port = ep->base.bind_addr.port;

 asoc->c.initial_tsn = sctp_generate_tsn(ep);

 asoc->next_tsn = asoc->c.initial_tsn;

 asoc->ctsn_ack_point = asoc->next_tsn - 1;
 asoc->adv_peer_ack_point = asoc->ctsn_ack_point;
 asoc->highest_sacked = asoc->ctsn_ack_point;
 asoc->last_cwr_tsn = asoc->ctsn_ack_point;
 asoc->addip_serial = asoc->c.initial_tsn;
 asoc->strreset_outseq = asoc->c.initial_tsn;

 INIT_LIST_HEAD(&asoc->addip_chunk_list);
 INIT_LIST_HEAD(&asoc->asconf_ack_list);


 INIT_LIST_HEAD(&asoc->peer.transport_addr_list);
 asoc->peer.sack_needed = 1;
 asoc->peer.sack_generation = 1;


 sctp_inq_init(&asoc->base.inqueue);
 sctp_inq_set_th_handler(&asoc->base.inqueue, sctp_assoc_bh_rcv);


 sctp_outq_init(asoc, &asoc->outqueue);

 if (!sctp_ulpq_init(&asoc->ulpq, asoc))
  goto fail_init;

 if (sctp_stream_init(&asoc->stream, asoc->c.sinit_num_ostreams,
        0, gfp))
  goto fail_init;


 asoc->pathmtu = sp->pathmtu;
 sctp_assoc_update_frag_point(asoc);




 asoc->peer.ipv4_address = 1;
 if (asoc->base.sk->sk_family == PF_INET6)
  asoc->peer.ipv6_address = 1;
 INIT_LIST_HEAD(&asoc->asocs);

 asoc->default_stream = sp->default_stream;
 asoc->default_ppid = sp->default_ppid;
 asoc->default_flags = sp->default_flags;
 asoc->default_context = sp->default_context;
 asoc->default_timetolive = sp->default_timetolive;
 asoc->default_rcv_context = sp->default_rcv_context;


 INIT_LIST_HEAD(&asoc->endpoint_shared_keys);
 if (sctp_auth_asoc_copy_shkeys(ep, asoc, gfp))
  goto stream_free;

 asoc->active_key_id = ep->active_key_id;
 asoc->strreset_enable = ep->strreset_enable;


 if (ep->auth_hmacs_list)
  memcpy(asoc->c.auth_hmacs, ep->auth_hmacs_list,
   ntohs(ep->auth_hmacs_list->param_hdr.length));
 if (ep->auth_chunk_list)
  memcpy(asoc->c.auth_chunks, ep->auth_chunk_list,
   ntohs(ep->auth_chunk_list->param_hdr.length));


 p = (struct sctp_paramhdr *)asoc->c.auth_random;
 p->type = SCTP_PARAM_RANDOM;
 p->length = htons(sizeof(*p) + SCTP_AUTH_RANDOM_LENGTH);
 get_random_bytes(p+1, SCTP_AUTH_RANDOM_LENGTH);

 return asoc;

stream_free:
 sctp_stream_free(&asoc->stream);
fail_init:
 sock_put(asoc->base.sk);
 sctp_endpoint_put(asoc->ep);
 return ((void*)0);
}
