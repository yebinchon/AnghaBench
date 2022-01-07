
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sc_client; } ;
struct nfs4_ol_stateid {TYPE_2__ st_stid; } ;
struct TYPE_3__ {int cl_lock; } ;


 int LIST_HEAD (int ) ;
 int free_ol_stateid_reaplist (int *) ;
 int put_ol_stateid_locked (struct nfs4_ol_stateid*,int *) ;
 int reaplist ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unhash_open_stateid (struct nfs4_ol_stateid*,int *) ;

__attribute__((used)) static void release_open_stateid(struct nfs4_ol_stateid *stp)
{
 LIST_HEAD(reaplist);

 spin_lock(&stp->st_stid.sc_client->cl_lock);
 if (unhash_open_stateid(stp, &reaplist))
  put_ol_stateid_locked(stp, &reaplist);
 spin_unlock(&stp->st_stid.sc_client->cl_lock);
 free_ol_stateid_reaplist(&reaplist);
}
