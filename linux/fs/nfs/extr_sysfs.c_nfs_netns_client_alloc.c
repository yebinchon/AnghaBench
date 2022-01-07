
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kset; } ;
struct nfs_netns_client {TYPE_1__ kobject; struct net* net; } ;
struct net {int dummy; } ;
struct kobject {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ kobject_init_and_add (TYPE_1__*,int *,struct kobject*,char*) ;
 int kobject_put (TYPE_1__*) ;
 struct nfs_netns_client* kzalloc (int,int ) ;
 int nfs_client_kset ;
 int nfs_netns_client_type ;

__attribute__((used)) static struct nfs_netns_client *nfs_netns_client_alloc(struct kobject *parent,
  struct net *net)
{
 struct nfs_netns_client *p;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (p) {
  p->net = net;
  p->kobject.kset = nfs_client_kset;
  if (kobject_init_and_add(&p->kobject, &nfs_netns_client_type,
     parent, "nfs_client") == 0)
   return p;
  kobject_put(&p->kobject);
 }
 return ((void*)0);
}
