
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct inode* host; } ;


 int DATA ;
 int EAGAIN ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int f2fs_mpage_readpages (TYPE_1__*,int *,struct page*,int,int) ;
 int f2fs_read_inline_data (struct inode*,struct page*) ;
 TYPE_1__* page_file_mapping (struct page*) ;
 int trace_f2fs_readpage (struct page*,int ) ;

__attribute__((used)) static int f2fs_read_data_page(struct file *file, struct page *page)
{
 struct inode *inode = page_file_mapping(page)->host;
 int ret = -EAGAIN;

 trace_f2fs_readpage(page, DATA);


 if (f2fs_has_inline_data(inode))
  ret = f2fs_read_inline_data(inode, page);
 if (ret == -EAGAIN)
  ret = f2fs_mpage_readpages(page_file_mapping(page),
      ((void*)0), page, 1, 0);
 return ret;
}
