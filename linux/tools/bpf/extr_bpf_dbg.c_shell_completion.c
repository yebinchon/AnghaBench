
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** rl_completion_matches (char const*,int ) ;
 int shell_comp_gen ;

__attribute__((used)) static char **shell_completion(const char *buf, int start, int end)
{
 char **matches = ((void*)0);

 if (start == 0)
  matches = rl_completion_matches(buf, shell_comp_gen);

 return matches;
}
