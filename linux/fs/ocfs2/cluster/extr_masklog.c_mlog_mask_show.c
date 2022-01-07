
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ __mlog_test_u64 (int ,int ) ;
 int mlog_and_bits ;
 int mlog_not_bits ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t mlog_mask_show(u64 mask, char *buf)
{
 char *state;

 if (__mlog_test_u64(mask, mlog_and_bits))
  state = "allow";
 else if (__mlog_test_u64(mask, mlog_not_bits))
  state = "deny";
 else
  state = "off";

 return snprintf(buf, PAGE_SIZE, "%s\n", state);
}
