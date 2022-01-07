
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



__attribute__((used)) static inline __u64 ptr_to_u64(const void *ptr)
{
 return (__u64) (unsigned long) ptr;
}
