
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int dummy; } ;
struct virtual_item {int vi_index; } ;


 int TYPE_DIRECT ;

__attribute__((used)) static int direct_create_vi(struct virtual_node *vn,
       struct virtual_item *vi,
       int is_affected, int insert_size)
{
 vi->vi_index = TYPE_DIRECT;
 return 0;
}
