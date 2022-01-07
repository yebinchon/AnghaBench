
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int clear_shadow_entry (struct address_space*,int ,void*) ;
 scalar_t__ dax_mapping (struct address_space*) ;
 scalar_t__ shmem_mapping (struct address_space*) ;

__attribute__((used)) static int invalidate_exceptional_entry(struct address_space *mapping,
     pgoff_t index, void *entry)
{

 if (shmem_mapping(mapping) || dax_mapping(mapping))
  return 1;
 clear_shadow_entry(mapping, index, entry);
 return 1;
}
