
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {scalar_t__ nr_entries; int entries; } ;


 int RB_ROOT_CACHED ;

void rblist__init(struct rblist *rblist)
{
 if (rblist != ((void*)0)) {
  rblist->entries = RB_ROOT_CACHED;
  rblist->nr_entries = 0;
 }

 return;
}
