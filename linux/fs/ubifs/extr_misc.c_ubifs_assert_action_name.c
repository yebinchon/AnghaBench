
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {size_t assert_action; } ;


 char const** assert_names ;

const char *ubifs_assert_action_name(struct ubifs_info *c)
{
 return assert_names[c->assert_action];
}
