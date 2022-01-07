
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_args_pages {int num_pages; struct fuse_writepage_args* pages; } ;
struct TYPE_2__ {scalar_t__ ff; struct fuse_args_pages ap; } ;
struct fuse_writepage_args {TYPE_1__ ia; } ;


 int __free_page (struct fuse_writepage_args) ;
 int fuse_file_put (scalar_t__,int,int) ;
 int kfree (struct fuse_writepage_args*) ;

__attribute__((used)) static void fuse_writepage_free(struct fuse_writepage_args *wpa)
{
 struct fuse_args_pages *ap = &wpa->ia.ap;
 int i;

 for (i = 0; i < ap->num_pages; i++)
  __free_page(ap->pages[i]);

 if (wpa->ia.ff)
  fuse_file_put(wpa->ia.ff, 0, 0);

 kfree(ap->pages);
 kfree(wpa);
}
