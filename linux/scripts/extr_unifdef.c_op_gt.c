
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Linetype ;


 int op_strict (int*,int,int ,int ) ;

__attribute__((used)) static Linetype op_gt(int *p, Linetype at, int a, Linetype bt, int b) {
 return op_strict(p, a > b, at, bt);
}
