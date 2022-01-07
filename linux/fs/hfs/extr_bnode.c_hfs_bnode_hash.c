
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NODE_HASH_SIZE ;

__attribute__((used)) static inline int hfs_bnode_hash(u32 num)
{
 num = (num >> 16) + num;
 num += num >> 8;
 return num & (NODE_HASH_SIZE - 1);
}
