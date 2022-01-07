
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sc_file; } ;
struct nfs4_delegation {TYPE_3__ dl_stid; } ;
struct file_lock {int fl_file; int fl_pid; scalar_t__ fl_owner; int fl_end; int fl_type; int fl_flags; int * fl_lmops; } ;
typedef scalar_t__ fl_owner_t ;
struct TYPE_8__ {int tgid; } ;
struct TYPE_6__ {TYPE_1__* fi_deleg_file; } ;
struct TYPE_5__ {int nf_file; } ;


 int FL_DELEG ;
 int F_RDLCK ;
 int F_WRLCK ;
 int NFS4_OPEN_DELEGATE_READ ;
 int OFFSET_MAX ;
 TYPE_4__* current ;
 struct file_lock* locks_alloc_lock () ;
 int nfsd_lease_mng_ops ;

__attribute__((used)) static struct file_lock *nfs4_alloc_init_lease(struct nfs4_delegation *dp,
      int flag)
{
 struct file_lock *fl;

 fl = locks_alloc_lock();
 if (!fl)
  return ((void*)0);
 fl->fl_lmops = &nfsd_lease_mng_ops;
 fl->fl_flags = FL_DELEG;
 fl->fl_type = flag == NFS4_OPEN_DELEGATE_READ? F_RDLCK: F_WRLCK;
 fl->fl_end = OFFSET_MAX;
 fl->fl_owner = (fl_owner_t)dp;
 fl->fl_pid = current->tgid;
 fl->fl_file = dp->dl_stid.sc_file->fi_deleg_file->nf_file;
 return fl;
}
