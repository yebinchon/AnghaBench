
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int next; int flags; } ;


 unsigned int VRING_DESC_F_NEXT ;
 unsigned int le16toh (int ) ;

__attribute__((used)) static unsigned next_desc(struct vring_desc *desc)
{
 unsigned int next;

 if (!(le16toh(desc->flags) & VRING_DESC_F_NEXT))
  return -1U;
 next = le16toh(desc->next);
 return next;
}
