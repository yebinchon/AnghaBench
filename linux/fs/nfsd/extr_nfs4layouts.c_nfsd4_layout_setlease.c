
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs4_layout_stateid {size_t ls_layout_type; TYPE_1__* ls_file; } ;
struct file_lock {int fl_type; int fl_file; int fl_pid; struct nfs4_layout_stateid* fl_owner; int fl_end; int fl_flags; int * fl_lmops; } ;
struct TYPE_6__ {int tgid; } ;
struct TYPE_5__ {scalar_t__ disable_recalls; } ;
struct TYPE_4__ {int nf_file; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int FL_LAYOUT ;
 int F_RDLCK ;
 int OFFSET_MAX ;
 TYPE_3__* current ;
 struct file_lock* locks_alloc_lock () ;
 int locks_free_lock (struct file_lock*) ;
 int locks_init_lock (struct file_lock*) ;
 TYPE_2__** nfsd4_layout_ops ;
 int nfsd4_layouts_lm_ops ;
 int vfs_setlease (int ,int ,struct file_lock**,int *) ;

__attribute__((used)) static int
nfsd4_layout_setlease(struct nfs4_layout_stateid *ls)
{
 struct file_lock *fl;
 int status;

 if (nfsd4_layout_ops[ls->ls_layout_type]->disable_recalls)
  return 0;

 fl = locks_alloc_lock();
 if (!fl)
  return -ENOMEM;
 locks_init_lock(fl);
 fl->fl_lmops = &nfsd4_layouts_lm_ops;
 fl->fl_flags = FL_LAYOUT;
 fl->fl_type = F_RDLCK;
 fl->fl_end = OFFSET_MAX;
 fl->fl_owner = ls;
 fl->fl_pid = current->tgid;
 fl->fl_file = ls->ls_file->nf_file;

 status = vfs_setlease(fl->fl_file, fl->fl_type, &fl, ((void*)0));
 if (status) {
  locks_free_lock(fl);
  return status;
 }
 BUG_ON(fl != ((void*)0));
 return 0;
}
