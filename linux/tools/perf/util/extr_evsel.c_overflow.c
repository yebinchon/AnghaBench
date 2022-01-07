
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static inline bool overflow(const void *endp, u16 max_size, const void *offset,
       u64 size)
{
 return size > max_size || offset + size > endp;
}
