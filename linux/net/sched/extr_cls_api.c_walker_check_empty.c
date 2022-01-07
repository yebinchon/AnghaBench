
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {int nonempty; } ;
struct tcf_proto {int dummy; } ;



__attribute__((used)) static int walker_check_empty(struct tcf_proto *tp, void *fh,
         struct tcf_walker *arg)
{
 if (fh) {
  arg->nonempty = 1;
  return -1;
 }
 return 0;
}
