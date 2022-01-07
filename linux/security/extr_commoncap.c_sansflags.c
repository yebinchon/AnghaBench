
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int VFS_CAP_FLAGS_EFFECTIVE ;

__attribute__((used)) static __u32 sansflags(__u32 m)
{
 return m & ~VFS_CAP_FLAGS_EFFECTIVE;
}
