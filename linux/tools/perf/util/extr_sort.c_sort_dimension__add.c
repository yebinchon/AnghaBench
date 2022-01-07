
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct sort_dimension {TYPE_1__* entry; int name; } ;
struct perf_hpp_list {int parent; int sym; int dso; int socket; int thread; int comm; } ;
struct hpp_dimension {TYPE_1__* entry; int name; } ;
struct evlist {int dummy; } ;
typedef int err ;
struct TYPE_11__ {int se_collapse; } ;


 unsigned int ARRAY_SIZE (struct sort_dimension*) ;
 int BUFSIZ ;
 int EINVAL ;
 int ESRCH ;
 int REG_EXTENDED ;
 scalar_t__ SORT_MODE__BRANCH ;
 scalar_t__ SORT_MODE__DIFF ;
 scalar_t__ SORT_MODE__MEMORY ;
 int __hpp_dimension__add (struct sort_dimension*,struct perf_hpp_list*,int) ;
 int __sort_dimension__add (struct sort_dimension*,struct perf_hpp_list*,int) ;
 int add_dynamic_entry (struct evlist*,char const*,int) ;
 struct sort_dimension* bstack_sort_dimensions ;
 scalar_t__ cacheline_size () ;
 struct sort_dimension* common_sort_dimensions ;
 struct sort_dimension* hpp_sort_dimensions ;
 struct sort_dimension* memory_sort_dimensions ;
 int parent_pattern ;
 int parent_regex ;
 int pr_err (char*,int ,char*) ;
 int regcomp (int *,int ,int ) ;
 int regerror (int,int *,char*,int) ;
 scalar_t__ sort__mode ;
 int sort__sym_sort ;
 TYPE_1__ sort_comm ;
 TYPE_1__ sort_dso ;
 TYPE_1__ sort_mem_daddr_sym ;
 TYPE_1__ sort_mem_dcacheline ;
 TYPE_1__ sort_parent ;
 TYPE_1__ sort_socket ;
 TYPE_1__ sort_sym ;
 TYPE_1__ sort_sym_from ;
 TYPE_1__ sort_sym_to ;
 TYPE_1__ sort_thread ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,int ,int ) ;

int sort_dimension__add(struct perf_hpp_list *list, const char *tok,
   struct evlist *evlist,
   int level)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(common_sort_dimensions); i++) {
  struct sort_dimension *sd = &common_sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;

  if (sd->entry == &sort_parent) {
   int ret = regcomp(&parent_regex, parent_pattern, REG_EXTENDED);
   if (ret) {
    char err[BUFSIZ];

    regerror(ret, &parent_regex, err, sizeof(err));
    pr_err("Invalid regex: %s\n%s", parent_pattern, err);
    return -EINVAL;
   }
   list->parent = 1;
  } else if (sd->entry == &sort_sym) {
   list->sym = 1;






   if (sort__mode == SORT_MODE__DIFF)
    sd->entry->se_collapse = sort__sym_sort;

  } else if (sd->entry == &sort_dso) {
   list->dso = 1;
  } else if (sd->entry == &sort_socket) {
   list->socket = 1;
  } else if (sd->entry == &sort_thread) {
   list->thread = 1;
  } else if (sd->entry == &sort_comm) {
   list->comm = 1;
  }

  return __sort_dimension__add(sd, list, level);
 }

 for (i = 0; i < ARRAY_SIZE(hpp_sort_dimensions); i++) {
  struct hpp_dimension *hd = &hpp_sort_dimensions[i];

  if (strncasecmp(tok, hd->name, strlen(tok)))
   continue;

  return __hpp_dimension__add(hd, list, level);
 }

 for (i = 0; i < ARRAY_SIZE(bstack_sort_dimensions); i++) {
  struct sort_dimension *sd = &bstack_sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;

  if (sort__mode != SORT_MODE__BRANCH)
   return -EINVAL;

  if (sd->entry == &sort_sym_from || sd->entry == &sort_sym_to)
   list->sym = 1;

  __sort_dimension__add(sd, list, level);
  return 0;
 }

 for (i = 0; i < ARRAY_SIZE(memory_sort_dimensions); i++) {
  struct sort_dimension *sd = &memory_sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;

  if (sort__mode != SORT_MODE__MEMORY)
   return -EINVAL;

  if (sd->entry == &sort_mem_dcacheline && cacheline_size() == 0)
   return -EINVAL;

  if (sd->entry == &sort_mem_daddr_sym)
   list->sym = 1;

  __sort_dimension__add(sd, list, level);
  return 0;
 }

 if (!add_dynamic_entry(evlist, tok, level))
  return 0;

 return -ESRCH;
}
