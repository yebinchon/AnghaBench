
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct udf_bitmap {int s_nr_groups; } ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct udf_bitmap* kzalloc (int,int ) ;
 int udf_compute_nr_groups (struct super_block*,int ) ;
 struct udf_bitmap* vzalloc (int) ;

__attribute__((used)) static struct udf_bitmap *udf_sb_alloc_bitmap(struct super_block *sb, u32 index)
{
 struct udf_bitmap *bitmap;
 int nr_groups;
 int size;

 nr_groups = udf_compute_nr_groups(sb, index);
 size = sizeof(struct udf_bitmap) +
  (sizeof(struct buffer_head *) * nr_groups);

 if (size <= PAGE_SIZE)
  bitmap = kzalloc(size, GFP_KERNEL);
 else
  bitmap = vzalloc(size);

 if (!bitmap)
  return ((void*)0);

 bitmap->s_nr_groups = nr_groups;
 return bitmap;
}
