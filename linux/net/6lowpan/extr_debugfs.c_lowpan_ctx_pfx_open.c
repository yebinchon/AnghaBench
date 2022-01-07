
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int lowpan_ctx_pfx_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int lowpan_ctx_pfx_open(struct inode *inode, struct file *file)
{
 return single_open(file, lowpan_ctx_pfx_show, inode->i_private);
}
