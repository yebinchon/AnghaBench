
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strlist_config {char* dirname; int file_only; int dont_dupstr; } ;
struct TYPE_2__ {int node_delete; int node_new; int node_cmp; } ;
struct strlist {int dupstr; int file_only; TYPE_1__ rblist; } ;


 int free (struct strlist*) ;
 struct strlist* malloc (int) ;
 int rblist__init (TYPE_1__*) ;
 int strlist__node_cmp ;
 int strlist__node_delete ;
 int strlist__node_new ;
 scalar_t__ strlist__parse_list (struct strlist*,char const*,char const*) ;

struct strlist *strlist__new(const char *list, const struct strlist_config *config)
{
 struct strlist *slist = malloc(sizeof(*slist));

 if (slist != ((void*)0)) {
  bool dupstr = 1;
  bool file_only = 0;
  const char *dirname = ((void*)0);

  if (config) {
   dupstr = !config->dont_dupstr;
   dirname = config->dirname;
   file_only = config->file_only;
  }

  rblist__init(&slist->rblist);
  slist->rblist.node_cmp = strlist__node_cmp;
  slist->rblist.node_new = strlist__node_new;
  slist->rblist.node_delete = strlist__node_delete;

  slist->dupstr = dupstr;
  slist->file_only = file_only;

  if (list && strlist__parse_list(slist, list, dirname) != 0)
   goto out_error;
 }

 return slist;
out_error:
 free(slist);
 return ((void*)0);
}
