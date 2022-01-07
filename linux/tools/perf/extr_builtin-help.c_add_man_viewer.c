
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct man_viewer_list {int name; struct man_viewer_list* next; } ;


 struct man_viewer_list* man_viewer_list ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;
 struct man_viewer_list* zalloc (int) ;

__attribute__((used)) static void add_man_viewer(const char *name)
{
 struct man_viewer_list **p = &man_viewer_list;
 size_t len = strlen(name);

 while (*p)
  p = &((*p)->next);
 *p = zalloc(sizeof(**p) + len + 1);
 strcpy((*p)->name, name);
}
