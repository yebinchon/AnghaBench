
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_conn_tstamp {scalar_t__ stop; } ;
struct nf_conn {int status; } ;


 int IPCT_DESTROY ;
 int IPS_DYING_BIT ;
 scalar_t__ ktime_get_real_ns () ;
 struct nf_conn_tstamp* nf_conn_tstamp_find (struct nf_conn*) ;
 int nf_conntrack_ecache_delayed_work (int ) ;
 int nf_conntrack_ecache_work (int ) ;
 scalar_t__ nf_conntrack_event_report (int ,struct nf_conn*,int ,int) ;
 int nf_ct_delete_from_lists (struct nf_conn*) ;
 int nf_ct_net (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

bool nf_ct_delete(struct nf_conn *ct, u32 portid, int report)
{
 struct nf_conn_tstamp *tstamp;

 if (test_and_set_bit(IPS_DYING_BIT, &ct->status))
  return 0;

 tstamp = nf_conn_tstamp_find(ct);
 if (tstamp && tstamp->stop == 0)
  tstamp->stop = ktime_get_real_ns();

 if (nf_conntrack_event_report(IPCT_DESTROY, ct,
        portid, report) < 0) {



  nf_ct_delete_from_lists(ct);
  nf_conntrack_ecache_delayed_work(nf_ct_net(ct));
  return 0;
 }

 nf_conntrack_ecache_work(nf_ct_net(ct));
 nf_ct_delete_from_lists(ct);
 nf_ct_put(ct);
 return 1;
}
