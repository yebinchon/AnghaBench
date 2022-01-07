
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hashf_t ;


 int BUG () ;
 int R5_HASH ;
 int TEA_HASH ;
 int YURA_HASH ;
 scalar_t__ keyed_hash ;
 scalar_t__ r5_hash ;
 scalar_t__ yura_hash ;

__attribute__((used)) static int function2code(hashf_t func)
{
 if (func == keyed_hash)
  return TEA_HASH;
 if (func == yura_hash)
  return YURA_HASH;
 if (func == r5_hash)
  return R5_HASH;

 BUG();

 return 0;
}
