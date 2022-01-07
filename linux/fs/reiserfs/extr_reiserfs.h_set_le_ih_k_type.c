
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int ih_key; } ;


 int ih_version (struct item_head*) ;
 int set_le_key_k_type (int ,int *,int) ;

__attribute__((used)) static inline void set_le_ih_k_type(struct item_head *ih, int type)
{
 set_le_key_k_type(ih_version(ih), &(ih->ih_key), type);
}
