
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int __dax_invalidate_entry (struct address_space*,int ,int) ;

int dax_invalidate_mapping_entry_sync(struct address_space *mapping,
          pgoff_t index)
{
 return __dax_invalidate_entry(mapping, index, 0);
}
