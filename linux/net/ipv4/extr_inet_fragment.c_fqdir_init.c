
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct inet_frags {int refcnt; int rhash_params; } ;
struct fqdir {struct inet_frags* f; int rhashtable; struct net* net; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct fqdir*) ;
 struct fqdir* kzalloc (int,int ) ;
 int refcount_inc (int *) ;
 int rhashtable_init (int *,int *) ;

int fqdir_init(struct fqdir **fqdirp, struct inet_frags *f, struct net *net)
{
 struct fqdir *fqdir = kzalloc(sizeof(*fqdir), GFP_KERNEL);
 int res;

 if (!fqdir)
  return -ENOMEM;
 fqdir->f = f;
 fqdir->net = net;
 res = rhashtable_init(&fqdir->rhashtable, &fqdir->f->rhash_params);
 if (res < 0) {
  kfree(fqdir);
  return res;
 }
 refcount_inc(&f->refcnt);
 *fqdirp = fqdir;
 return 0;
}
