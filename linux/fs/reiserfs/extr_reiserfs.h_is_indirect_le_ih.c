
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int ih_key; } ;


 int ih_version (struct item_head*) ;
 int is_indirect_le_key (int ,int *) ;

__attribute__((used)) static inline int is_indirect_le_ih(struct item_head *ih)
{
 return is_indirect_le_key(ih_version(ih), &ih->ih_key);
}
