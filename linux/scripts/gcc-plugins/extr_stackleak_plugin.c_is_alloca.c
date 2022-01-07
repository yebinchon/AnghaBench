
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gimple ;


 int BUILT_IN_ALLOCA ;
 int BUILT_IN_ALLOCA_WITH_ALIGN ;
 scalar_t__ gimple_call_builtin_p (int ,int ) ;

__attribute__((used)) static bool is_alloca(gimple stmt)
{
 if (gimple_call_builtin_p(stmt, BUILT_IN_ALLOCA))
  return 1;






 return 0;
}
