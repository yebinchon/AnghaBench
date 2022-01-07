
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Linetype ;


 int LT_FALSE ;
 scalar_t__ LT_IF ;
 int LT_TRUE ;

__attribute__((used)) static Linetype op_strict(int *p, int v, Linetype at, Linetype bt) {
 if(at == LT_IF || bt == LT_IF) return (LT_IF);
 return (*p = v, v ? LT_TRUE : LT_FALSE);
}
