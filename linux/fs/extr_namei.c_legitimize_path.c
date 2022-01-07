
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; int * mnt; } ;
struct nameidata {int m_seq; } ;
struct TYPE_2__ {int d_seq; int d_lockref; } ;


 int __legitimize_mnt (int *,int ) ;
 int lockref_get_not_dead (int *) ;
 int read_seqcount_retry (int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool legitimize_path(struct nameidata *nd,
       struct path *path, unsigned seq)
{
 int res = __legitimize_mnt(path->mnt, nd->m_seq);
 if (unlikely(res)) {
  if (res > 0)
   path->mnt = ((void*)0);
  path->dentry = ((void*)0);
  return 0;
 }
 if (unlikely(!lockref_get_not_dead(&path->dentry->d_lockref))) {
  path->dentry = ((void*)0);
  return 0;
 }
 return !read_seqcount_retry(&path->dentry->d_seq, seq);
}
