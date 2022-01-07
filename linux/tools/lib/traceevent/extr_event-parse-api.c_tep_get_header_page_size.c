
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int header_page_size_size; } ;



int tep_get_header_page_size(struct tep_handle *tep)
{
 if (tep)
  return tep->header_page_size_size;
 return 0;
}
