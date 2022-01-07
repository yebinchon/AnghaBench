
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int addrtype_validate_match_data(struct nlattr **tb, u8 mrev)
{
 if (mrev != 1) {
  pr_err("only addrtype match revision 1 supported");
  return -EINVAL;
 }

 return 0;
}
