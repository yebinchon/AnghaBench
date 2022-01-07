
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int ih_key; } ;
typedef int loff_t ;


 int add_le_key_k_offset (int ,int *,int ) ;
 int ih_version (struct item_head*) ;

__attribute__((used)) static inline void add_le_ih_k_offset(struct item_head *ih, loff_t offset)
{
 add_le_key_k_offset(ih_version(ih), &(ih->ih_key), offset);
}
