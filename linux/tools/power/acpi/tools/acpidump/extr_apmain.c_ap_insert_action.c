
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* argument; int to_be_done; } ;


 size_t AP_MAX_ACTIONS ;
 TYPE_1__* action_table ;
 size_t current_action ;
 int fprintf (int ,char*,size_t) ;
 int stderr ;

__attribute__((used)) static int ap_insert_action(char *argument, u32 to_be_done)
{



 action_table[current_action].argument = argument;
 action_table[current_action].to_be_done = to_be_done;

 current_action++;
 if (current_action > AP_MAX_ACTIONS) {
  fprintf(stderr, "Too many table options (max %d)\n",
   AP_MAX_ACTIONS);
  return (-1);
 }

 return (0);
}
