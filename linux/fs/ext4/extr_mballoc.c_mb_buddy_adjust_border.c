
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mb_clear_bit (int,void*) ;
 int mb_set_bit (int,void*) ;
 scalar_t__ mb_test_bit (int,void*) ;

__attribute__((used)) static inline int mb_buddy_adjust_border(int* bit, void* bitmap, int side)
{
 if (mb_test_bit(*bit + side, bitmap)) {
  mb_clear_bit(*bit, bitmap);
  (*bit) -= side;
  return 1;
 }
 else {
  (*bit) += side;
  mb_set_bit(*bit, bitmap);
  return -1;
 }
}
