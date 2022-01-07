
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_file {int fi_lock; } ;
struct TYPE_2__ {int sc_type; struct nfs4_file* sc_file; } ;
struct nfs4_delegation {int dl_perfile; int dl_recall_lru; int dl_perclnt; int dl_time; TYPE_1__ dl_stid; } ;


 int NFS4_CLOSED_DELEG_STID ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int state_lock ;

__attribute__((used)) static bool
unhash_delegation_locked(struct nfs4_delegation *dp)
{
 struct nfs4_file *fp = dp->dl_stid.sc_file;

 lockdep_assert_held(&state_lock);

 if (list_empty(&dp->dl_perfile))
  return 0;

 dp->dl_stid.sc_type = NFS4_CLOSED_DELEG_STID;

 ++dp->dl_time;
 spin_lock(&fp->fi_lock);
 list_del_init(&dp->dl_perclnt);
 list_del_init(&dp->dl_recall_lru);
 list_del_init(&dp->dl_perfile);
 spin_unlock(&fp->fi_lock);
 return 1;
}
