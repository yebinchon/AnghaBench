
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dsa_port {int index; TYPE_1__* ds; } ;
struct dsa_notifier_fdb_info {unsigned char const* addr; int vid; int port; int sw_index; } ;
struct TYPE_2__ {int index; } ;


 int DSA_NOTIFIER_FDB_ADD ;
 int dsa_port_notify (struct dsa_port*,int ,struct dsa_notifier_fdb_info*) ;

int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
       u16 vid)
{
 struct dsa_notifier_fdb_info info = {
  .sw_index = dp->ds->index,
  .port = dp->index,
  .addr = addr,
  .vid = vid,
 };

 return dsa_port_notify(dp, DSA_NOTIFIER_FDB_ADD, &info);
}
