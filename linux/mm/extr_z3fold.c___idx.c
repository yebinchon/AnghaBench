
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {int first_num; } ;
typedef enum buddy { ____Placeholder_buddy } buddy ;


 int BUDDY_MASK ;

__attribute__((used)) static inline int __idx(struct z3fold_header *zhdr, enum buddy bud)
{
 return (bud + zhdr->first_num) & BUDDY_MASK;
}
