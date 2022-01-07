
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_attr {int id; } ;
typedef int ssize_t ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t f2fs_feature_show(struct f2fs_attr *a,
  struct f2fs_sb_info *sbi, char *buf)
{
 switch (a->id) {
 case 137:
 case 139:
 case 140:
 case 136:
 case 131:
 case 134:
 case 135:
 case 130:
 case 133:
 case 132:
 case 128:
 case 129:
 case 138:
  return snprintf(buf, PAGE_SIZE, "supported\n");
 }
 return 0;
}
