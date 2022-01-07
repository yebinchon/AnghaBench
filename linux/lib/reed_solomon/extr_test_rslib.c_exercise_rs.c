
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wspace {int dummy; } ;
struct rs_control {int dummy; } ;


 int IN_PLACE ;
 scalar_t__ V_PROGRESS ;
 int ex_rs_helper (struct rs_control*,struct wspace*,int,int,int) ;
 int pr_info (char*) ;
 scalar_t__ v ;

__attribute__((used)) static int exercise_rs(struct rs_control *rs, struct wspace *ws,
         int len, int trials)
{

 int retval = 0;
 int i;

 if (v >= V_PROGRESS)
  pr_info("Testing up to error correction capacity...\n");

 for (i = 0; i <= IN_PLACE; i++)
  retval |= ex_rs_helper(rs, ws, len, trials, i);

 return retval;
}
