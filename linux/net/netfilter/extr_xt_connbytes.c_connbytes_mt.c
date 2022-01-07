
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct TYPE_2__ {scalar_t__ to; scalar_t__ from; } ;
struct xt_connbytes_info {int what; TYPE_1__ count; int direction; } ;
struct xt_action_param {struct xt_connbytes_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_conn_counter {int packets; int bytes; } ;
struct nf_conn_acct {struct nf_conn_counter* counter; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;






 scalar_t__ atomic64_read (int *) ;
 scalar_t__ div64_u64 (scalar_t__,scalar_t__) ;
 struct nf_conn_acct* nf_conn_acct_find (struct nf_conn const*) ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;

__attribute__((used)) static bool
connbytes_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_connbytes_info *sinfo = par->matchinfo;
 const struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 u_int64_t what = 0;
 u_int64_t bytes = 0;
 u_int64_t pkts = 0;
 const struct nf_conn_acct *acct;
 const struct nf_conn_counter *counters;

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct)
  return 0;

 acct = nf_conn_acct_find(ct);
 if (!acct)
  return 0;

 counters = acct->counter;
 switch (sinfo->what) {
 case 128:
  switch (sinfo->direction) {
  case 130:
   what = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].packets);
   break;
  case 129:
   what = atomic64_read(&counters[IP_CT_DIR_REPLY].packets);
   break;
  case 131:
   what = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].packets);
   what += atomic64_read(&counters[IP_CT_DIR_REPLY].packets);
   break;
  }
  break;
 case 132:
  switch (sinfo->direction) {
  case 130:
   what = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].bytes);
   break;
  case 129:
   what = atomic64_read(&counters[IP_CT_DIR_REPLY].bytes);
   break;
  case 131:
   what = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].bytes);
   what += atomic64_read(&counters[IP_CT_DIR_REPLY].bytes);
   break;
  }
  break;
 case 133:
  switch (sinfo->direction) {
  case 130:
   bytes = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].bytes);
   pkts = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].packets);
   break;
  case 129:
   bytes = atomic64_read(&counters[IP_CT_DIR_REPLY].bytes);
   pkts = atomic64_read(&counters[IP_CT_DIR_REPLY].packets);
   break;
  case 131:
   bytes = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].bytes) +
    atomic64_read(&counters[IP_CT_DIR_REPLY].bytes);
   pkts = atomic64_read(&counters[IP_CT_DIR_ORIGINAL].packets) +
    atomic64_read(&counters[IP_CT_DIR_REPLY].packets);
   break;
  }
  if (pkts != 0)
   what = div64_u64(bytes, pkts);
  break;
 }

 if (sinfo->count.to >= sinfo->count.from)
  return what <= sinfo->count.to && what >= sinfo->count.from;
 else
  return what < sinfo->count.to || what > sinfo->count.from;
}
