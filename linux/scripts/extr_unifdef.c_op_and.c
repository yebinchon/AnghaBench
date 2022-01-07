
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Linetype ;


 scalar_t__ LT_FALSE ;
 scalar_t__ op_strict (int*,int,scalar_t__,scalar_t__) ;
 int strictlogic ;

__attribute__((used)) static Linetype op_and(int *p, Linetype at, int a, Linetype bt, int b) {
 if (!strictlogic && (at == LT_FALSE || bt == LT_FALSE))
  return (*p = 0, LT_FALSE);
 return op_strict(p, a && b, at, bt);
}
