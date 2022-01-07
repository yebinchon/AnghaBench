
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iunlink {int dummy; } ;


 int kmem_free (struct xfs_iunlink*) ;

__attribute__((used)) static void
xfs_iunlink_free_item(
 void *ptr,
 void *arg)
{
 struct xfs_iunlink *iu = ptr;
 bool *freed_anything = arg;

 *freed_anything = 1;
 kmem_free(iu);
}
