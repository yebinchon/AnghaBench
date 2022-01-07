
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_new_group_data {int dummy; } ;
struct ext4_new_flex_group_data {unsigned long count; struct ext4_new_flex_group_data* groups; int * bg_flags; } ;
typedef int __u16 ;


 int GFP_NOFS ;
 int UINT_MAX ;
 int kfree (struct ext4_new_flex_group_data*) ;
 struct ext4_new_flex_group_data* kmalloc (int,int ) ;
 void* kmalloc_array (unsigned long,int,int ) ;

__attribute__((used)) static struct ext4_new_flex_group_data *alloc_flex_gd(unsigned long flexbg_size)
{
 struct ext4_new_flex_group_data *flex_gd;

 flex_gd = kmalloc(sizeof(*flex_gd), GFP_NOFS);
 if (flex_gd == ((void*)0))
  goto out3;

 if (flexbg_size >= UINT_MAX / sizeof(struct ext4_new_group_data))
  goto out2;
 flex_gd->count = flexbg_size;

 flex_gd->groups = kmalloc_array(flexbg_size,
     sizeof(struct ext4_new_group_data),
     GFP_NOFS);
 if (flex_gd->groups == ((void*)0))
  goto out2;

 flex_gd->bg_flags = kmalloc_array(flexbg_size, sizeof(__u16),
       GFP_NOFS);
 if (flex_gd->bg_flags == ((void*)0))
  goto out1;

 return flex_gd;

out1:
 kfree(flex_gd->groups);
out2:
 kfree(flex_gd);
out3:
 return ((void*)0);
}
