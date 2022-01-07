
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static inline int hci_test_bit(int nr, const void *addr)
{
 return *((const __u32 *) addr + (nr >> 5)) & ((__u32) 1 << (nr & 31));
}
