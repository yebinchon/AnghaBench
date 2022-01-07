
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int __mlog_clear_u64 (int ,int ) ;
 int __mlog_set_u64 (int ,int ) ;
 int mlog_and_bits ;
 int mlog_not_bits ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t mlog_mask_store(u64 mask, const char *buf, size_t count)
{
 if (!strncasecmp(buf, "allow", 5)) {
  __mlog_set_u64(mask, mlog_and_bits);
  __mlog_clear_u64(mask, mlog_not_bits);
 } else if (!strncasecmp(buf, "deny", 4)) {
  __mlog_set_u64(mask, mlog_not_bits);
  __mlog_clear_u64(mask, mlog_and_bits);
 } else if (!strncasecmp(buf, "off", 3)) {
  __mlog_clear_u64(mask, mlog_not_bits);
  __mlog_clear_u64(mask, mlog_and_bits);
 } else
  return -EINVAL;

 return count;
}
