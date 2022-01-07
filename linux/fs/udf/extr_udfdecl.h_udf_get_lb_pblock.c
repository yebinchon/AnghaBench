
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;


 int udf_get_pblock (struct super_block*,int ,int ,int ) ;

__attribute__((used)) static inline uint32_t
udf_get_lb_pblock(struct super_block *sb, struct kernel_lb_addr *loc,
    uint32_t offset)
{
 return udf_get_pblock(sb, loc->logicalBlockNum,
   loc->partitionReferenceNum, offset);
}
