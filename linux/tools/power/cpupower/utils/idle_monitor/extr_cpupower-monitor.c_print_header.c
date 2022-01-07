
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ cstate_t ;
struct TYPE_4__ {int hw_states_num; char* name; TYPE_1__* hw_states; } ;


 int MAX_COL_WIDTH ;
 unsigned int avail_monitors ;
 int fill_string_with_spaces (char*,int) ;
 TYPE_2__** monitors ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*) ;

void print_header(int topology_depth)
{
 int unsigned mon;
 int state, need_len;
 cstate_t s;
 char buf[128] = "";

 fill_string_with_spaces(buf, topology_depth * 5 - 1);
 printf("%s|", buf);

 for (mon = 0; mon < avail_monitors; mon++) {
  need_len = monitors[mon]->hw_states_num * (MAX_COL_WIDTH + 1)
   - 1;
  if (mon != 0)
   printf("||");
  sprintf(buf, "%s", monitors[mon]->name);
  fill_string_with_spaces(buf, need_len);
  printf("%s", buf);
 }
 printf("\n");

 if (topology_depth > 2)
  printf(" PKG|");
 if (topology_depth > 1)
  printf("CORE|");
 if (topology_depth > 0)
  printf(" CPU|");

 for (mon = 0; mon < avail_monitors; mon++) {
  if (mon != 0)
   printf("||");
  for (state = 0; state < monitors[mon]->hw_states_num; state++) {
   if (state != 0)
    printf("|");
   s = monitors[mon]->hw_states[state];
   sprintf(buf, "%s", s.name);
   fill_string_with_spaces(buf, MAX_COL_WIDTH);
   printf("%s", buf);
  }
  printf(" ");
 }
 printf("\n");
}
