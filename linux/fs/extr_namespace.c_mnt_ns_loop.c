
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mnt_namespace {scalar_t__ seq; } ;
struct dentry {int d_inode; } ;
struct TYPE_6__ {TYPE_2__* nsproxy; } ;
struct TYPE_5__ {TYPE_1__* mnt_ns; } ;
struct TYPE_4__ {scalar_t__ seq; } ;


 TYPE_3__* current ;
 int get_proc_ns (int ) ;
 int is_mnt_ns_file (struct dentry*) ;
 struct mnt_namespace* to_mnt_ns (int ) ;

__attribute__((used)) static bool mnt_ns_loop(struct dentry *dentry)
{



 struct mnt_namespace *mnt_ns;
 if (!is_mnt_ns_file(dentry))
  return 0;

 mnt_ns = to_mnt_ns(get_proc_ns(dentry->d_inode));
 return current->nsproxy->mnt_ns->seq >= mnt_ns->seq;
}
