
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sctp_transport {int param_flags; int refcnt; int hb_nonce; int proto_unreach_timer; int reconf_timer; int hb_timer; int T3_rtx_timer; int transports; int send_ready; int transmitted; int pf_retrans; int pathmaxrxt; int last_time_ecne_reduced; scalar_t__ last_time_heard; int rto; scalar_t__ sack_generation; int saddr; TYPE_3__* af_specific; int ipaddr; } ;
struct TYPE_5__ {int pf_retrans; int max_retrans_path; int rto_initial; } ;
struct net {TYPE_2__ sctp; } ;
typedef int gfp_t ;
struct TYPE_6__ {int sockaddr_len; } ;


 int INIT_LIST_HEAD (int *) ;
 int SPP_HB_DISABLE ;
 int SPP_PMTUD_ENABLE ;
 int SPP_SACKDELAY_ENABLE ;
 int get_random_bytes (int *,int) ;
 int jiffies ;
 int memcpy (int *,union sctp_addr const*,int ) ;
 int memset (int *,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int refcount_set (int *,int) ;
 int sctp_generate_heartbeat_event ;
 int sctp_generate_proto_unreach_event ;
 int sctp_generate_reconf_event ;
 int sctp_generate_t3_rtx_event ;
 TYPE_3__* sctp_get_af_specific (int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct sctp_transport *sctp_transport_init(struct net *net,
        struct sctp_transport *peer,
        const union sctp_addr *addr,
        gfp_t gfp)
{

 peer->af_specific = sctp_get_af_specific(addr->sa.sa_family);
 memcpy(&peer->ipaddr, addr, peer->af_specific->sockaddr_len);
 memset(&peer->saddr, 0, sizeof(union sctp_addr));

 peer->sack_generation = 0;







 peer->rto = msecs_to_jiffies(net->sctp.rto_initial);

 peer->last_time_heard = 0;
 peer->last_time_ecne_reduced = jiffies;

 peer->param_flags = SPP_HB_DISABLE |
       SPP_PMTUD_ENABLE |
       SPP_SACKDELAY_ENABLE;


 peer->pathmaxrxt = net->sctp.max_retrans_path;
 peer->pf_retrans = net->sctp.pf_retrans;

 INIT_LIST_HEAD(&peer->transmitted);
 INIT_LIST_HEAD(&peer->send_ready);
 INIT_LIST_HEAD(&peer->transports);

 timer_setup(&peer->T3_rtx_timer, sctp_generate_t3_rtx_event, 0);
 timer_setup(&peer->hb_timer, sctp_generate_heartbeat_event, 0);
 timer_setup(&peer->reconf_timer, sctp_generate_reconf_event, 0);
 timer_setup(&peer->proto_unreach_timer,
      sctp_generate_proto_unreach_event, 0);


 get_random_bytes(&peer->hb_nonce, sizeof(peer->hb_nonce));

 refcount_set(&peer->refcnt, 1);

 return peer;
}
