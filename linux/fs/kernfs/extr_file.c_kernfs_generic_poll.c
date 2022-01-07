
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernfs_open_node {int event; int poll; } ;
struct kernfs_open_file {scalar_t__ event; TYPE_3__* file; } ;
struct TYPE_5__ {struct kernfs_open_node* open; } ;
struct kernfs_node {TYPE_2__ attr; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_4__ {int dentry; } ;
struct TYPE_6__ {TYPE_1__ f_path; } ;


 int DEFAULT_POLLMASK ;
 int EPOLLERR ;
 int EPOLLPRI ;
 scalar_t__ atomic_read (int *) ;
 struct kernfs_node* kernfs_dentry_node (int ) ;
 int poll_wait (TYPE_3__*,int *,int *) ;

__poll_t kernfs_generic_poll(struct kernfs_open_file *of, poll_table *wait)
{
 struct kernfs_node *kn = kernfs_dentry_node(of->file->f_path.dentry);
 struct kernfs_open_node *on = kn->attr.open;

 poll_wait(of->file, &on->poll, wait);

 if (of->event != atomic_read(&on->event))
  return DEFAULT_POLLMASK|EPOLLERR|EPOLLPRI;

 return DEFAULT_POLLMASK;
}
