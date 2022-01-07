
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_sb; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EPERM ;
 int capable (int ) ;
 int ext4_error (int ,char*,int,char const*) ;

__attribute__((used)) static ssize_t trigger_test_error(struct ext4_sb_info *sbi,
      const char *buf, size_t count)
{
 int len = count;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (len && buf[len-1] == '\n')
  len--;

 if (len)
  ext4_error(sbi->s_sb, "%.*s", len, buf);
 return count;
}
