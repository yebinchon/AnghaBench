
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int assert_action; } ;





 int BUG () ;
 int EINVAL ;
 int dump_stack () ;
 int ubifs_err (struct ubifs_info*,char*,char const*,char const*,int) ;
 int ubifs_ro_mode (struct ubifs_info*,int ) ;

void ubifs_assert_failed(struct ubifs_info *c, const char *expr,
    const char *file, int line)
{
 ubifs_err(c, "UBIFS assert failed: %s, in %s:%u", expr, file, line);

 switch (c->assert_action) {
  case 130:
  BUG();
  break;

  case 128:
  ubifs_ro_mode(c, -EINVAL);
  break;

  case 129:
  default:
  dump_stack();
  break;

 }
}
