
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Linetype ;


 int LT_ERROR ;
 int LT_IF ;
 int constexpr ;
 int debug (char*,...) ;
 int eval_ops ;
 int eval_table (int ,int*,char const**) ;
 scalar_t__ killconsts ;

__attribute__((used)) static Linetype
ifeval(const char **cpp)
{
 int ret;
 int val = 0;

 debug("eval %s", *cpp);
 constexpr = killconsts ? 0 : 1;
 ret = eval_table(eval_ops, &val, cpp);
 debug("eval = %d", val);
 return (constexpr ? LT_IF : ret == LT_ERROR ? LT_IF : ret);
}
