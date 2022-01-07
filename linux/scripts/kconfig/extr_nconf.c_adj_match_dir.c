
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ match_f ;


 scalar_t__ FIND_NEXT_MATCH_DOWN ;
 scalar_t__ FIND_NEXT_MATCH_UP ;
 scalar_t__ MATCH_TINKER_PATTERN_DOWN ;
 scalar_t__ MATCH_TINKER_PATTERN_UP ;

__attribute__((used)) static void adj_match_dir(match_f *match_direction)
{
 if (*match_direction == FIND_NEXT_MATCH_DOWN)
  *match_direction =
   MATCH_TINKER_PATTERN_DOWN;
 else if (*match_direction == FIND_NEXT_MATCH_UP)
  *match_direction =
   MATCH_TINKER_PATTERN_UP;

}
