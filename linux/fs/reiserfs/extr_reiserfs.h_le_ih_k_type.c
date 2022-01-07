
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int ih_key; } ;
typedef int loff_t ;


 int ih_version (struct item_head const*) ;
 int le_key_k_type (int ,int *) ;

__attribute__((used)) static inline loff_t le_ih_k_type(const struct item_head *ih)
{
 return le_key_k_type(ih_version(ih), &(ih->ih_key));
}
