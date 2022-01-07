
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ext4_has_feature_sparse_super (struct super_block*) ;

__attribute__((used)) static unsigned ext4_list_backups(struct super_block *sb, unsigned *three,
      unsigned *five, unsigned *seven)
{
 unsigned *min = three;
 int mult = 3;
 unsigned ret;

 if (!ext4_has_feature_sparse_super(sb)) {
  ret = *min;
  *min += 1;
  return ret;
 }

 if (*five < *min) {
  min = five;
  mult = 5;
 }
 if (*seven < *min) {
  min = seven;
  mult = 7;
 }

 ret = *min;
 *min *= mult;

 return ret;
}
