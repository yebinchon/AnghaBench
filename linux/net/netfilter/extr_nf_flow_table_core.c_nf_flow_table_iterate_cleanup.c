
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_flowtable {int gc_work; } ;
struct net_device {int dummy; } ;


 int flush_delayed_work (int *) ;
 int nf_flow_table_do_cleanup ;
 int nf_flow_table_iterate (struct nf_flowtable*,int ,struct net_device*) ;

__attribute__((used)) static void nf_flow_table_iterate_cleanup(struct nf_flowtable *flowtable,
       struct net_device *dev)
{
 nf_flow_table_iterate(flowtable, nf_flow_table_do_cleanup, dev);
 flush_delayed_work(&flowtable->gc_work);
}
