
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strlist {int dummy; } ;
struct TYPE_2__ {char* s; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,char*) ;
 TYPE_1__* strlist__entry (struct strlist*,int ) ;
 int strlist__nr_entries (struct strlist*) ;

__attribute__((used)) static bool __get_elide(struct strlist *list, const char *list_name, FILE *fp)
{
 if (list && strlist__nr_entries(list) == 1) {
  if (fp != ((void*)0))
   fprintf(fp, "# %s: %s\n", list_name,
    strlist__entry(list, 0)->s);
  return 1;
 }
 return 0;
}
