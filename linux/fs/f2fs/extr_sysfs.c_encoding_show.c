
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {TYPE_1__* s_encoding; } ;
struct f2fs_attr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* charset; int version; } ;


 int PAGE_SIZE ;
 scalar_t__ f2fs_sb_has_casefold (struct f2fs_sb_info*) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t encoding_show(struct f2fs_attr *a,
  struct f2fs_sb_info *sbi, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "(none)");
}
