
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int EIO ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int squashfs_block_size(__le32 raw)
{
 u32 size = le32_to_cpu(raw);
 return (size >> 25) ? -EIO : size;
}
