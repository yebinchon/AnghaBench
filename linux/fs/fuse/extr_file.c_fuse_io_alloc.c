
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_io_priv {int dummy; } ;
struct TYPE_2__ {int pages; int descs; } ;
struct fuse_io_args {TYPE_1__ ap; struct fuse_io_priv* io; } ;


 int GFP_KERNEL ;
 int fuse_pages_alloc (unsigned int,int ,int *) ;
 int kfree (struct fuse_io_args*) ;
 struct fuse_io_args* kzalloc (int,int ) ;

__attribute__((used)) static struct fuse_io_args *fuse_io_alloc(struct fuse_io_priv *io,
       unsigned int npages)
{
 struct fuse_io_args *ia;

 ia = kzalloc(sizeof(*ia), GFP_KERNEL);
 if (ia) {
  ia->io = io;
  ia->ap.pages = fuse_pages_alloc(npages, GFP_KERNEL,
      &ia->ap.descs);
  if (!ia->ap.pages) {
   kfree(ia);
   ia = ((void*)0);
  }
 }
 return ia;
}
