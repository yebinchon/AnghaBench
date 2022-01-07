
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {scalar_t__ mnt; } ;
struct saved {unsigned int seq; int done; struct path link; } ;
struct TYPE_2__ {scalar_t__ mnt; int * dentry; } ;
struct nameidata {int flags; struct inode* link_inode; scalar_t__ depth; struct saved* stack; TYPE_1__ path; int total_link_count; } ;
struct inode {int dummy; } ;


 int ECHILD ;
 int ELOOP ;
 int LOOKUP_RCU ;
 scalar_t__ MAXSYMLINKS ;
 int clear_delayed_call (int *) ;
 int drop_links (struct nameidata*) ;
 int legitimize_path (struct nameidata*,struct path*,unsigned int) ;
 scalar_t__ likely (int ) ;
 int mntget (scalar_t__) ;
 int nd_alloc_stack (struct nameidata*) ;
 int path_put (struct path*) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 int rcu_read_unlock () ;
 int unlazy_walk (struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pick_link(struct nameidata *nd, struct path *link,
       struct inode *inode, unsigned seq)
{
 int error;
 struct saved *last;
 if (unlikely(nd->total_link_count++ >= MAXSYMLINKS)) {
  path_to_nameidata(link, nd);
  return -ELOOP;
 }
 if (!(nd->flags & LOOKUP_RCU)) {
  if (link->mnt == nd->path.mnt)
   mntget(link->mnt);
 }
 error = nd_alloc_stack(nd);
 if (unlikely(error)) {
  if (error == -ECHILD) {
   if (unlikely(!legitimize_path(nd, link, seq))) {
    drop_links(nd);
    nd->depth = 0;
    nd->flags &= ~LOOKUP_RCU;
    nd->path.mnt = ((void*)0);
    nd->path.dentry = ((void*)0);
    rcu_read_unlock();
   } else if (likely(unlazy_walk(nd)) == 0)
    error = nd_alloc_stack(nd);
  }
  if (error) {
   path_put(link);
   return error;
  }
 }

 last = nd->stack + nd->depth++;
 last->link = *link;
 clear_delayed_call(&last->done);
 nd->link_inode = inode;
 last->seq = seq;
 return 1;
}
