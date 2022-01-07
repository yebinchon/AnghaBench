
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sock {int dummy; } ;
struct TYPE_5__ {scalar_t__* vec; } ;
struct TYPE_6__ {scalar_t__ nn; TYPE_1__ sp; } ;
typedef TYPE_2__ dccp_feat_val ;
struct TYPE_7__ {int (* activation_hdlr ) (struct sock*,scalar_t__,int) ;scalar_t__ reconciliation; scalar_t__ rxtx; int feat_num; scalar_t__ default_value; } ;


 int DCCP_CRIT (char*,int const) ;
 int const DCCP_FEAT_SUPPORTED_MAX ;
 scalar_t__ FEAT_AT_RX ;
 scalar_t__ FEAT_SP ;
 int dccp_debug (char*,char*,int ,char*,unsigned long long) ;
 int dccp_feat_fname (int ) ;
 TYPE_3__* dccp_feat_table ;
 int stub1 (struct sock*,scalar_t__,int) ;

__attribute__((used)) static int __dccp_feat_activate(struct sock *sk, const int idx,
    const bool is_local, dccp_feat_val const *fval)
{
 bool rx;
 u64 val;

 if (idx < 0 || idx >= DCCP_FEAT_SUPPORTED_MAX)
  return -1;
 if (dccp_feat_table[idx].activation_hdlr == ((void*)0))
  return 0;

 if (fval == ((void*)0)) {
  val = dccp_feat_table[idx].default_value;
 } else if (dccp_feat_table[idx].reconciliation == FEAT_SP) {
  if (fval->sp.vec == ((void*)0)) {





   DCCP_CRIT("Feature #%d undefined: using default", idx);
   val = dccp_feat_table[idx].default_value;
  } else {
   val = fval->sp.vec[0];
  }
 } else {
  val = fval->nn;
 }


 rx = (is_local == (dccp_feat_table[idx].rxtx == FEAT_AT_RX));

 dccp_debug("   -> activating %s %s, %sval=%llu\n", rx ? "RX" : "TX",
     dccp_feat_fname(dccp_feat_table[idx].feat_num),
     fval ? "" : "default ", (unsigned long long)val);

 return dccp_feat_table[idx].activation_hdlr(sk, val, rx);
}
