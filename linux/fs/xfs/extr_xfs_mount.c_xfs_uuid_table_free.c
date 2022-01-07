
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_free (int *) ;
 int * xfs_uuid_table ;
 scalar_t__ xfs_uuid_table_size ;

void
xfs_uuid_table_free(void)
{
 if (xfs_uuid_table_size == 0)
  return;
 kmem_free(xfs_uuid_table);
 xfs_uuid_table = ((void*)0);
 xfs_uuid_table_size = 0;
}
