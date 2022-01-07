
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_state; } ;
typedef int sector_t ;


 int isofs_get_block (struct inode*,int ,struct buffer_head*,int ) ;

__attribute__((used)) static int isofs_bmap(struct inode *inode, sector_t block)
{
 struct buffer_head dummy;
 int error;

 dummy.b_state = 0;
 dummy.b_blocknr = -1000;
 error = isofs_get_block(inode, block, &dummy, 0);
 if (!error)
  return dummy.b_blocknr;
 return 0;
}
