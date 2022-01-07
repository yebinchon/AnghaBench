
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfs4_client* sc_client; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;
struct nfs4_client {int net; int cl_lock; scalar_t__ cl_minorversion; } ;


 int LIST_HEAD (int ) ;
 int free_ol_stateid_reaplist (int *) ;
 int move_to_close_lru (struct nfs4_ol_stateid*,int ) ;
 int put_ol_stateid_locked (struct nfs4_ol_stateid*,int *) ;
 int reaplist ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unhash_open_stateid (struct nfs4_ol_stateid*,int *) ;

__attribute__((used)) static void nfsd4_close_open_stateid(struct nfs4_ol_stateid *s)
{
 struct nfs4_client *clp = s->st_stid.sc_client;
 bool unhashed;
 LIST_HEAD(reaplist);

 spin_lock(&clp->cl_lock);
 unhashed = unhash_open_stateid(s, &reaplist);

 if (clp->cl_minorversion) {
  if (unhashed)
   put_ol_stateid_locked(s, &reaplist);
  spin_unlock(&clp->cl_lock);
  free_ol_stateid_reaplist(&reaplist);
 } else {
  spin_unlock(&clp->cl_lock);
  free_ol_stateid_reaplist(&reaplist);
  if (unhashed)
   move_to_close_lru(s, clp->net);
 }
}
