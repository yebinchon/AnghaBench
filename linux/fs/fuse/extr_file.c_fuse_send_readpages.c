
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attr_ver; } ;
struct TYPE_6__ {int out_pages; int page_zeroing; int page_replace; int (* end ) (struct fuse_conn*,TYPE_2__*,int) ;} ;
struct fuse_args_pages {size_t num_pages; TYPE_2__ args; int * pages; } ;
struct fuse_io_args {int ff; TYPE_1__ read; struct fuse_args_pages ap; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {scalar_t__ async_read; } ;
struct file {struct fuse_file* private_data; } ;
typedef int loff_t ;


 int FUSE_READ ;
 int GFP_KERNEL ;
 size_t PAGE_SHIFT ;
 int fuse_file_get (struct fuse_file*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 int fuse_read_args_fill (struct fuse_io_args*,struct file*,int ,size_t,int ) ;
 int fuse_readpages_end (struct fuse_conn*,TYPE_2__*,int) ;
 int fuse_simple_background (struct fuse_conn*,TYPE_2__*,int ) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 int page_offset (int ) ;

__attribute__((used)) static void fuse_send_readpages(struct fuse_io_args *ia, struct file *file)
{
 struct fuse_file *ff = file->private_data;
 struct fuse_conn *fc = ff->fc;
 struct fuse_args_pages *ap = &ia->ap;
 loff_t pos = page_offset(ap->pages[0]);
 size_t count = ap->num_pages << PAGE_SHIFT;
 int err;

 ap->args.out_pages = 1;
 ap->args.page_zeroing = 1;
 ap->args.page_replace = 1;
 fuse_read_args_fill(ia, file, pos, count, FUSE_READ);
 ia->read.attr_ver = fuse_get_attr_version(fc);
 if (fc->async_read) {
  ia->ff = fuse_file_get(ff);
  ap->args.end = fuse_readpages_end;
  err = fuse_simple_background(fc, &ap->args, GFP_KERNEL);
  if (!err)
   return;
 } else {
  err = fuse_simple_request(fc, &ap->args);
 }
 fuse_readpages_end(fc, &ap->args, err);
}
