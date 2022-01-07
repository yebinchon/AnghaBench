
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __highest_present_section_nr ;
 scalar_t__ present_section_nr (unsigned long) ;

__attribute__((used)) static inline unsigned long next_present_section_nr(unsigned long section_nr)
{
 do {
  section_nr++;
  if (present_section_nr(section_nr))
   return section_nr;
 } while ((section_nr <= __highest_present_section_nr));

 return -1;
}
