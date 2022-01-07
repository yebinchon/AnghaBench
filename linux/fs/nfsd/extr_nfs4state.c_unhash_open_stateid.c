
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sc_client; } ;
struct nfs4_ol_stateid {TYPE_2__ st_stid; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {int cl_lock; } ;


 int lockdep_assert_held (int *) ;
 int release_open_stateid_locks (struct nfs4_ol_stateid*,struct list_head*) ;
 int unhash_ol_stateid (struct nfs4_ol_stateid*) ;

__attribute__((used)) static bool unhash_open_stateid(struct nfs4_ol_stateid *stp,
    struct list_head *reaplist)
{
 bool unhashed;

 lockdep_assert_held(&stp->st_stid.sc_client->cl_lock);

 unhashed = unhash_ol_stateid(stp);
 release_open_stateid_locks(stp, reaplist);
 return unhashed;
}
