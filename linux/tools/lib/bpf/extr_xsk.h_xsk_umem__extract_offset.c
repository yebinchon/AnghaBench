
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int XSK_UNALIGNED_BUF_OFFSET_SHIFT ;

__attribute__((used)) static inline __u64 xsk_umem__extract_offset(__u64 addr)
{
 return addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT;
}
