
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fuse_io_args* pages; } ;
struct fuse_io_args {TYPE_1__ ap; } ;


 int kfree (struct fuse_io_args*) ;

__attribute__((used)) static void fuse_io_free(struct fuse_io_args *ia)
{
 kfree(ia->ap.pages);
 kfree(ia);
}
