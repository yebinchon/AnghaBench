
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int __u32 ;



__attribute__((used)) static __u32 rol32(__u32 word, unsigned int shift)
{
 return (word << shift) | (word >> ((-shift) & 31));
}
