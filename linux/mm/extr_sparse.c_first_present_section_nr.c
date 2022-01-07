
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long next_present_section_nr (int) ;

__attribute__((used)) static inline unsigned long first_present_section_nr(void)
{
 return next_present_section_nr(-1);
}
