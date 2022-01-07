
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct canfd_frame {scalar_t__ data; } ;



__attribute__((used)) static inline u64 get_u64(const struct canfd_frame *cp, int offset)
{
 return *(u64 *)(cp->data + offset);
}
