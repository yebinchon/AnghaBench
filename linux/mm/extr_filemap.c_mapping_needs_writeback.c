
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int nrexceptional; int nrpages; } ;


 scalar_t__ dax_mapping (struct address_space*) ;

__attribute__((used)) static bool mapping_needs_writeback(struct address_space *mapping)
{
 if (dax_mapping(mapping))
  return mapping->nrexceptional;

 return mapping->nrpages;
}
