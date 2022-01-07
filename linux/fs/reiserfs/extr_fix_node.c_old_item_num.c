
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CUT ;
 int M_DELETE ;
 int M_INSERT ;
 int M_PASTE ;
 int RFALSE (int,char*,...) ;

__attribute__((used)) static inline int old_item_num(int new_num, int affected_item_num, int mode)
{
 if (mode == M_PASTE || mode == M_CUT || new_num < affected_item_num)
  return new_num;

 if (mode == M_INSERT) {

  RFALSE(new_num == 0,
         "vs-8005: for INSERT mode and item number of inserted item");

  return new_num - 1;
 }

 RFALSE(mode != M_DELETE,
        "vs-8010: old_item_num: mode must be M_DELETE (mode = \'%c\'",
        mode);

 return new_num + 1;
}
