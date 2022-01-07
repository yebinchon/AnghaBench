
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prog_entry {int target; int when_to_branch; } ;



__attribute__((used)) static void update_preds(struct prog_entry *prog, int N, int invert)
{
 int t, s;

 t = prog[N].target;
 s = prog[t].target;
 prog[t].when_to_branch = invert;
 prog[t].target = N;
 prog[N].target = s;
}
