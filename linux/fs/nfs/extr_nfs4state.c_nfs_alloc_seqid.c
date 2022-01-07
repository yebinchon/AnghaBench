
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_seqid_counter {int dummy; } ;
struct nfs_seqid {int * task; int list; struct nfs_seqid_counter* sequence; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct nfs_seqid* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 struct nfs_seqid* kmalloc (int,int ) ;

struct nfs_seqid *nfs_alloc_seqid(struct nfs_seqid_counter *counter, gfp_t gfp_mask)
{
 struct nfs_seqid *new;

 new = kmalloc(sizeof(*new), gfp_mask);
 if (new == ((void*)0))
  return ERR_PTR(-ENOMEM);
 new->sequence = counter;
 INIT_LIST_HEAD(&new->list);
 new->task = ((void*)0);
 return new;
}
