
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int page_size; } ;



void tep_set_page_size(struct tep_handle *tep, int _page_size)
{
 if (tep)
  tep->page_size = _page_size;
}
