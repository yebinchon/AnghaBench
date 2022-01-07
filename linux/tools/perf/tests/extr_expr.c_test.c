
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_ctx {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 scalar_t__ expr__parse (double*,struct parse_ctx*,char const**) ;

__attribute__((used)) static int test(struct parse_ctx *ctx, const char *e, double val2)
{
 double val;

 if (expr__parse(&val, ctx, &e))
  TEST_ASSERT_VAL("parse test failed", 0);
 TEST_ASSERT_VAL("unexpected value", val == val2);
 return 0;
}
