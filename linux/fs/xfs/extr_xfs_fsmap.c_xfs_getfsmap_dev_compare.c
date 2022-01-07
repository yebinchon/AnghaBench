
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_getfsmap_dev {int dev; } ;



__attribute__((used)) static int
xfs_getfsmap_dev_compare(
 const void *p1,
 const void *p2)
{
 const struct xfs_getfsmap_dev *d1 = p1;
 const struct xfs_getfsmap_dev *d2 = p2;

 return d1->dev - d2->dev;
}
