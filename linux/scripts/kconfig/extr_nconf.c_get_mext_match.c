
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ match_f ;
struct TYPE_2__ {char* str; } ;


 scalar_t__ FIND_NEXT_MATCH_DOWN ;
 scalar_t__ FIND_NEXT_MATCH_UP ;
 scalar_t__ MATCH_TINKER_PATTERN_UP ;
 int current_item (int ) ;
 int curses_menu ;
 int item_index (int ) ;
 int items_num ;
 TYPE_1__* k_menu_items ;
 int * strcasestr (char*,char const*) ;

__attribute__((used)) static int get_mext_match(const char *match_str, match_f flag)
{
 int match_start = item_index(current_item(curses_menu));
 int index;

 if (flag == FIND_NEXT_MATCH_DOWN)
  ++match_start;
 else if (flag == FIND_NEXT_MATCH_UP)
  --match_start;

 index = match_start;
 index = (index + items_num) % items_num;
 while (1) {
  char *str = k_menu_items[index].str;
  if (strcasestr(str, match_str) != ((void*)0))
   return index;
  if (flag == FIND_NEXT_MATCH_UP ||
      flag == MATCH_TINKER_PATTERN_UP)
   --index;
  else
   ++index;
  index = (index + items_num) % items_num;
  if (index == match_start)
   return -1;
 }
}
