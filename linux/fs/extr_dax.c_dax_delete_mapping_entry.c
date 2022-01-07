
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int WARN_ON_ONCE (int) ;
 int __dax_invalidate_entry (struct address_space*,int ,int) ;

int dax_delete_mapping_entry(struct address_space *mapping, pgoff_t index)
{
 int ret = __dax_invalidate_entry(mapping, index, 1);
 WARN_ON_ONCE(!ret);
 return ret;
}
