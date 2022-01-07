
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dccp_sock {struct ccid* dccps_hc_tx_ccid; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int ccid_id; } ;



__attribute__((used)) static inline int ccid_get_current_tx_ccid(struct dccp_sock *dp)
{
 struct ccid *ccid = dp->dccps_hc_tx_ccid;

 if (ccid == ((void*)0) || ccid->ccid_ops == ((void*)0))
  return -1;
 return ccid->ccid_ops->ccid_id;
}
