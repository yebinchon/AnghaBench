
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_context {scalar_t__ lockowner; } ;



__attribute__((used)) static bool nfs_match_lock_context(const struct nfs_lock_context *l1,
  const struct nfs_lock_context *l2)
{
 return l1->lockowner == l2->lockowner;
}
