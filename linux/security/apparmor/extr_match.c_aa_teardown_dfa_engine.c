
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aa_put_dfa (int ) ;
 int nulldfa ;
 int stacksplitdfa ;

void aa_teardown_dfa_engine(void)
{
 aa_put_dfa(stacksplitdfa);
 aa_put_dfa(nulldfa);
}
