
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int openowner_id; } ;
struct TYPE_2__ {scalar_t__ owner_id; } ;
struct nfs4_state_owner {int so_delegreturn_mutex; int so_reclaim_seqcount; int so_lru; int so_count; TYPE_1__ so_seqid; int so_states; int so_lock; int so_cred; struct nfs_server* so_server; } ;
struct cred {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int get_cred (struct cred const*) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nfs4_state_owner*) ;
 struct nfs4_state_owner* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nfs4_init_seqid_counter (TYPE_1__*) ;
 int seqcount_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nfs4_state_owner *
nfs4_alloc_state_owner(struct nfs_server *server,
  const struct cred *cred,
  gfp_t gfp_flags)
{
 struct nfs4_state_owner *sp;

 sp = kzalloc(sizeof(*sp), gfp_flags);
 if (!sp)
  return ((void*)0);
 sp->so_seqid.owner_id = ida_simple_get(&server->openowner_id, 0, 0,
      gfp_flags);
 if (sp->so_seqid.owner_id < 0) {
  kfree(sp);
  return ((void*)0);
 }
 sp->so_server = server;
 sp->so_cred = get_cred(cred);
 spin_lock_init(&sp->so_lock);
 INIT_LIST_HEAD(&sp->so_states);
 nfs4_init_seqid_counter(&sp->so_seqid);
 atomic_set(&sp->so_count, 1);
 INIT_LIST_HEAD(&sp->so_lru);
 seqcount_init(&sp->so_reclaim_seqcount);
 mutex_init(&sp->so_delegreturn_mutex);
 return sp;
}
