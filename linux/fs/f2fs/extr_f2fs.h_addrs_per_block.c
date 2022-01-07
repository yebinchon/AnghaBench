
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 unsigned int ALIGN_DOWN (int ,int) ;
 int DEF_ADDRS_PER_BLOCK ;

__attribute__((used)) static inline unsigned int addrs_per_block(struct inode *inode)
{
 return ALIGN_DOWN(DEF_ADDRS_PER_BLOCK, 1);
}
