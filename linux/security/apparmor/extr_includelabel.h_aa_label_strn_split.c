
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ACCEPT_TABLE (int ) ;
 int DFA_START ;
 unsigned int aa_dfa_matchn_until (int ,int ,char const*,int,char const**) ;
 int stacksplitdfa ;

__attribute__((used)) static inline const char *aa_label_strn_split(const char *str, int n)
{
 const char *pos;
 unsigned int state;

 state = aa_dfa_matchn_until(stacksplitdfa, DFA_START, str, n, &pos);
 if (!ACCEPT_TABLE(stacksplitdfa)[state])
  return ((void*)0);

 return pos - 3;
}
