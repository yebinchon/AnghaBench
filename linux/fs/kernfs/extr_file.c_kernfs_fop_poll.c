
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernfs_open_file {int dummy; } ;
struct TYPE_5__ {TYPE_3__* ops; } ;
struct kernfs_node {TYPE_2__ attr; } ;
struct TYPE_4__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_6__ {int (* poll ) (struct kernfs_open_file*,int *) ;} ;


 int DEFAULT_POLLMASK ;
 int EPOLLERR ;
 int EPOLLPRI ;
 struct kernfs_node* kernfs_dentry_node (int ) ;
 int kernfs_generic_poll (struct kernfs_open_file*,int *) ;
 int kernfs_get_active (struct kernfs_node*) ;
 struct kernfs_open_file* kernfs_of (struct file*) ;
 int kernfs_put_active (struct kernfs_node*) ;
 int stub1 (struct kernfs_open_file*,int *) ;

__attribute__((used)) static __poll_t kernfs_fop_poll(struct file *filp, poll_table *wait)
{
 struct kernfs_open_file *of = kernfs_of(filp);
 struct kernfs_node *kn = kernfs_dentry_node(filp->f_path.dentry);
 __poll_t ret;

 if (!kernfs_get_active(kn))
  return DEFAULT_POLLMASK|EPOLLERR|EPOLLPRI;

 if (kn->attr.ops->poll)
  ret = kn->attr.ops->poll(of, wait);
 else
  ret = kernfs_generic_poll(of, wait);

 kernfs_put_active(kn);
 return ret;
}
