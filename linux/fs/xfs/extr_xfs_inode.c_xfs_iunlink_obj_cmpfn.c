
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agino_t ;
struct xfs_iunlink {scalar_t__ const iu_next_unlinked; } ;
struct rhashtable_compare_arg {scalar_t__* key; } ;



__attribute__((used)) static int
xfs_iunlink_obj_cmpfn(
 struct rhashtable_compare_arg *arg,
 const void *obj)
{
 const xfs_agino_t *key = arg->key;
 const struct xfs_iunlink *iu = obj;

 if (iu->iu_next_unlinked != *key)
  return 1;
 return 0;
}
