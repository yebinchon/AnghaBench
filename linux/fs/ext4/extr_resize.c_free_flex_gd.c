
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_new_flex_group_data {struct ext4_new_flex_group_data* groups; struct ext4_new_flex_group_data* bg_flags; } ;


 int kfree (struct ext4_new_flex_group_data*) ;

__attribute__((used)) static void free_flex_gd(struct ext4_new_flex_group_data *flex_gd)
{
 kfree(flex_gd->bg_flags);
 kfree(flex_gd->groups);
 kfree(flex_gd);
}
