
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_dfa {int dummy; } ;


 int DEFINE_MATCH_WB (int ) ;
 unsigned int leftmatch_fb (struct aa_dfa*,unsigned int,char const*,int *,unsigned int*) ;
 int wb ;

unsigned int aa_dfa_leftmatch(struct aa_dfa *dfa, unsigned int start,
         const char *str, unsigned int *count)
{
 DEFINE_MATCH_WB(wb);



 return leftmatch_fb(dfa, start, str, &wb, count);
}
