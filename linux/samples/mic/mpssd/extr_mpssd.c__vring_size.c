
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_used_elem {int dummy; } ;
struct vring_desc {int dummy; } ;
typedef int __u16 ;



__attribute__((used)) static inline unsigned _vring_size(unsigned int num, unsigned long align)
{
 return ((sizeof(struct vring_desc) * num + sizeof(__u16) * (3 + num)
    + align - 1) & ~(align - 1))
  + sizeof(__u16) * 3 + sizeof(struct vring_used_elem) * num;
}
