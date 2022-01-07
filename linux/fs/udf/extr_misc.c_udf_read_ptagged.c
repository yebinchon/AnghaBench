
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {scalar_t__ logicalBlockNum; } ;
struct buffer_head {int dummy; } ;


 int udf_get_lb_pblock (struct super_block*,struct kernel_lb_addr*,scalar_t__) ;
 struct buffer_head* udf_read_tagged (struct super_block*,int ,scalar_t__,int *) ;

struct buffer_head *udf_read_ptagged(struct super_block *sb,
         struct kernel_lb_addr *loc,
         uint32_t offset, uint16_t *ident)
{
 return udf_read_tagged(sb, udf_get_lb_pblock(sb, loc, offset),
          loc->logicalBlockNum + offset, ident);
}
