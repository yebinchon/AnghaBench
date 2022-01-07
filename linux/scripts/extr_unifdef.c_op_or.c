
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Linetype ;


 scalar_t__ LT_TRUE ;
 scalar_t__ op_strict (int*,int,scalar_t__,scalar_t__) ;
 int strictlogic ;

__attribute__((used)) static Linetype op_or(int *p, Linetype at, int a, Linetype bt, int b) {
 if (!strictlogic && (at == LT_TRUE || bt == LT_TRUE))
  return (*p = 1, LT_TRUE);
 return op_strict(p, a || b, at, bt);
}
