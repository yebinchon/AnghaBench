
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_file {int fi_had_conflict; int fi_lock; } ;
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_delegation {TYPE_1__ dl_stid; } ;
struct file_lock {scalar_t__ fl_break_time; scalar_t__ fl_owner; } ;


 int nfsd_break_one_deleg (struct nfs4_delegation*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool
nfsd_break_deleg_cb(struct file_lock *fl)
{
 bool ret = 0;
 struct nfs4_delegation *dp = (struct nfs4_delegation *)fl->fl_owner;
 struct nfs4_file *fp = dp->dl_stid.sc_file;






 fl->fl_break_time = 0;

 spin_lock(&fp->fi_lock);
 fp->fi_had_conflict = 1;
 nfsd_break_one_deleg(dp);
 spin_unlock(&fp->fi_lock);
 return ret;
}
