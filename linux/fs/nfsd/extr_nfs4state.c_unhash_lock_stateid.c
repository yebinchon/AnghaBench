
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sc_client; } ;
struct nfs4_ol_stateid {TYPE_2__ st_stid; int st_locks; } ;
struct TYPE_3__ {int cl_lock; } ;


 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;
 int nfs4_unhash_stid (TYPE_2__*) ;
 int unhash_ol_stateid (struct nfs4_ol_stateid*) ;

__attribute__((used)) static bool unhash_lock_stateid(struct nfs4_ol_stateid *stp)
{
 lockdep_assert_held(&stp->st_stid.sc_client->cl_lock);

 list_del_init(&stp->st_locks);
 nfs4_unhash_stid(&stp->st_stid);
 return unhash_ol_stateid(stp);
}
