
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static __u32 romfs_checksum(const void *data, int size)
{
 const __be32 *ptr = data;
 __u32 sum;

 sum = 0;
 size >>= 2;
 while (size > 0) {
  sum += be32_to_cpu(*ptr++);
  size--;
 }
 return sum;
}
