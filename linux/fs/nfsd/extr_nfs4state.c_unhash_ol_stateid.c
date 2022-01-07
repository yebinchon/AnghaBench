
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {int st_perstateowner; int st_perfile; TYPE_3__* st_stateowner; TYPE_1__ st_stid; } ;
struct nfs4_file {int fi_lock; } ;
struct TYPE_6__ {TYPE_2__* so_client; } ;
struct TYPE_5__ {int cl_lock; } ;


 int list_del (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool unhash_ol_stateid(struct nfs4_ol_stateid *stp)
{
 struct nfs4_file *fp = stp->st_stid.sc_file;

 lockdep_assert_held(&stp->st_stateowner->so_client->cl_lock);

 if (list_empty(&stp->st_perfile))
  return 0;

 spin_lock(&fp->fi_lock);
 list_del_init(&stp->st_perfile);
 spin_unlock(&fp->fi_lock);
 list_del(&stp->st_perstateowner);
 return 1;
}
