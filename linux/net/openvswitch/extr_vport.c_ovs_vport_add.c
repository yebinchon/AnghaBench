
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_parms {int type; } ;
struct vport_ops {int owner; struct vport* (* create ) (struct vport_parms const*) ;} ;
struct vport {int hash_node; int dp; } ;
struct hlist_head {int dummy; } ;


 int EAFNOSUPPORT ;
 int EAGAIN ;
 struct vport* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct vport*) ;
 struct hlist_head* hash_bucket (int ,int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 int module_put (int ) ;
 int ovs_dp_get_net (int ) ;
 int ovs_lock () ;
 int ovs_unlock () ;
 struct vport_ops* ovs_vport_lookup (struct vport_parms const*) ;
 int ovs_vport_name (struct vport*) ;
 int request_module (char*,int ) ;
 struct vport* stub1 (struct vport_parms const*) ;
 int try_module_get (int ) ;

struct vport *ovs_vport_add(const struct vport_parms *parms)
{
 struct vport_ops *ops;
 struct vport *vport;

 ops = ovs_vport_lookup(parms);
 if (ops) {
  struct hlist_head *bucket;

  if (!try_module_get(ops->owner))
   return ERR_PTR(-EAFNOSUPPORT);

  vport = ops->create(parms);
  if (IS_ERR(vport)) {
   module_put(ops->owner);
   return vport;
  }

  bucket = hash_bucket(ovs_dp_get_net(vport->dp),
         ovs_vport_name(vport));
  hlist_add_head_rcu(&vport->hash_node, bucket);
  return vport;
 }





 ovs_unlock();
 request_module("vport-type-%d", parms->type);
 ovs_lock();

 if (!ovs_vport_lookup(parms))
  return ERR_PTR(-EAFNOSUPPORT);
 else
  return ERR_PTR(-EAGAIN);
}
