
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int page; scalar_t__ count; scalar_t__ nohomeok; } ;


 int get_page (int ) ;
 int lock_metapage (struct metapage*) ;
 int release_metapage (struct metapage*) ;
 int unlock_page (int ) ;

void put_metapage(struct metapage *mp)
{
 if (mp->count || mp->nohomeok) {

  unlock_page(mp->page);
  return;
 }
 get_page(mp->page);
 mp->count++;
 lock_metapage(mp);
 unlock_page(mp->page);
 release_metapage(mp);
}
