
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int pgoff_t ;


 int NO_CHECK_TYPE ;
 int __get_data_block (struct inode*,int ,struct buffer_head*,int,int,int *,int ,int) ;

__attribute__((used)) static int get_data_block(struct inode *inode, sector_t iblock,
   struct buffer_head *bh_result, int create, int flag,
   pgoff_t *next_pgofs)
{
 return __get_data_block(inode, iblock, bh_result, create,
       flag, next_pgofs,
       NO_CHECK_TYPE, create);
}
