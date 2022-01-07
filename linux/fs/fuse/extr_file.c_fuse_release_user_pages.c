
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_args_pages {unsigned int num_pages; int * pages; } ;


 int put_page (int ) ;
 int set_page_dirty_lock (int ) ;

__attribute__((used)) static void fuse_release_user_pages(struct fuse_args_pages *ap,
        bool should_dirty)
{
 unsigned int i;

 for (i = 0; i < ap->num_pages; i++) {
  if (should_dirty)
   set_page_dirty_lock(ap->pages[i]);
  put_page(ap->pages[i]);
 }
}
