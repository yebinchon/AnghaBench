
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {unsigned int nf_hashval; unsigned int nf_may; int * nf_mark; scalar_t__ nf_flags; int nf_ref; struct inode* nf_inode; struct net* nf_net; int nf_cred; int * nf_file; int nf_lru; int nf_node; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int NFSD_FILE_BREAK_READ ;
 int NFSD_FILE_BREAK_WRITE ;
 unsigned int NFSD_FILE_MAY_MASK ;
 unsigned int NFSD_MAY_NOT_BREAK_LEASE ;
 unsigned int NFSD_MAY_READ ;
 unsigned int NFSD_MAY_WRITE ;
 int __set_bit (int ,scalar_t__*) ;
 int atomic_set (int *,int) ;
 int get_current_cred () ;
 struct nfsd_file* kmem_cache_alloc (int ,int ) ;
 int nfsd_file_slab ;
 int trace_nfsd_file_alloc (struct nfsd_file*) ;

__attribute__((used)) static struct nfsd_file *
nfsd_file_alloc(struct inode *inode, unsigned int may, unsigned int hashval,
  struct net *net)
{
 struct nfsd_file *nf;

 nf = kmem_cache_alloc(nfsd_file_slab, GFP_KERNEL);
 if (nf) {
  INIT_HLIST_NODE(&nf->nf_node);
  INIT_LIST_HEAD(&nf->nf_lru);
  nf->nf_file = ((void*)0);
  nf->nf_cred = get_current_cred();
  nf->nf_net = net;
  nf->nf_flags = 0;
  nf->nf_inode = inode;
  nf->nf_hashval = hashval;
  atomic_set(&nf->nf_ref, 1);
  nf->nf_may = may & NFSD_FILE_MAY_MASK;
  if (may & NFSD_MAY_NOT_BREAK_LEASE) {
   if (may & NFSD_MAY_WRITE)
    __set_bit(NFSD_FILE_BREAK_WRITE, &nf->nf_flags);
   if (may & NFSD_MAY_READ)
    __set_bit(NFSD_FILE_BREAK_READ, &nf->nf_flags);
  }
  nf->nf_mark = ((void*)0);
  trace_nfsd_file_alloc(nf);
 }
 return nf;
}
