
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LVL_DEPTH ;
 unsigned long LVL_MASK ;
 unsigned long LVL_START (int) ;
 unsigned long WHEEL_TIMEOUT_CUTOFF ;
 unsigned long WHEEL_TIMEOUT_MAX ;
 unsigned int calc_index (unsigned long,int) ;

__attribute__((used)) static int calc_wheel_index(unsigned long expires, unsigned long clk)
{
 unsigned long delta = expires - clk;
 unsigned int idx;

 if (delta < LVL_START(1)) {
  idx = calc_index(expires, 0);
 } else if (delta < LVL_START(2)) {
  idx = calc_index(expires, 1);
 } else if (delta < LVL_START(3)) {
  idx = calc_index(expires, 2);
 } else if (delta < LVL_START(4)) {
  idx = calc_index(expires, 3);
 } else if (delta < LVL_START(5)) {
  idx = calc_index(expires, 4);
 } else if (delta < LVL_START(6)) {
  idx = calc_index(expires, 5);
 } else if (delta < LVL_START(7)) {
  idx = calc_index(expires, 6);
 } else if (LVL_DEPTH > 8 && delta < LVL_START(8)) {
  idx = calc_index(expires, 7);
 } else if ((long) delta < 0) {
  idx = clk & LVL_MASK;
 } else {




  if (expires >= WHEEL_TIMEOUT_CUTOFF)
   expires = WHEEL_TIMEOUT_MAX;

  idx = calc_index(expires, LVL_DEPTH - 1);
 }
 return idx;
}
