
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int vi_item_len; } ;


 int IH_SIZE ;

__attribute__((used)) static int direct_unit_num(struct virtual_item *vi)
{
 return vi->vi_item_len - IH_SIZE;
}
