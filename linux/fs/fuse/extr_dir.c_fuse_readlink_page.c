
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_page_desc {int length; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_4__ {int out_pages; int out_argvar; int page_zeroing; int out_numargs; TYPE_1__* out_args; int nodeid; int opcode; } ;
struct fuse_args_pages {int num_pages; TYPE_2__ args; struct fuse_page_desc* descs; struct page** pages; } ;
typedef int ssize_t ;
struct TYPE_3__ {int size; } ;


 int EIO ;
 int FUSE_READLINK ;
 int PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int fuse_invalidate_atime (struct inode*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 char* page_address (struct page*) ;

__attribute__((used)) static int fuse_readlink_page(struct inode *inode, struct page *page)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_page_desc desc = { .length = PAGE_SIZE - 1 };
 struct fuse_args_pages ap = {
  .num_pages = 1,
  .pages = &page,
  .descs = &desc,
 };
 char *link;
 ssize_t res;

 ap.args.opcode = FUSE_READLINK;
 ap.args.nodeid = get_node_id(inode);
 ap.args.out_pages = 1;
 ap.args.out_argvar = 1;
 ap.args.page_zeroing = 1;
 ap.args.out_numargs = 1;
 ap.args.out_args[0].size = desc.length;
 res = fuse_simple_request(fc, &ap.args);

 fuse_invalidate_atime(inode);

 if (res < 0)
  return res;

 if (WARN_ON(res >= PAGE_SIZE))
  return -EIO;

 link = page_address(page);
 link[res] = '\0';

 return 0;
}
