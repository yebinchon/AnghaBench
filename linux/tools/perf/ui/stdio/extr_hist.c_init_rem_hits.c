
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sym; } ;
struct TYPE_7__ {TYPE_1__ ms; } ;
struct TYPE_6__ {int name; } ;


 int fprintf (int ,char*) ;
 TYPE_2__* malloc (int) ;
 TYPE_3__ rem_hits ;
 TYPE_2__* rem_sq_bracket ;
 int stderr ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void init_rem_hits(void)
{
 rem_sq_bracket = malloc(sizeof(*rem_sq_bracket) + 6);
 if (!rem_sq_bracket) {
  fprintf(stderr, "Not enough memory to display remaining hits\n");
  return;
 }

 strcpy(rem_sq_bracket->name, "[...]");
 rem_hits.ms.sym = rem_sq_bracket;
}
