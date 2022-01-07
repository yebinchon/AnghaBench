
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {int t_owner; } ;


 int module_put (int ) ;

void rds_trans_put(struct rds_transport *trans)
{
 if (trans)
  module_put(trans->t_owner);
}
