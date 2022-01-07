
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
typedef int dsa_fdb_dump_cb_t ;
struct TYPE_2__ {int (* port_fdb_dump ) (struct dsa_switch*,int,int *,void*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct dsa_switch*,int,int *,void*) ;

int dsa_port_fdb_dump(struct dsa_port *dp, dsa_fdb_dump_cb_t *cb, void *data)
{
 struct dsa_switch *ds = dp->ds;
 int port = dp->index;

 if (!ds->ops->port_fdb_dump)
  return -EOPNOTSUPP;

 return ds->ops->port_fdb_dump(ds, port, cb, data);
}
