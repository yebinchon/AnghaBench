
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dummy; } ;
struct evlist {int dummy; } ;


 int EINVAL ;
 int ESRCH ;
 int cacheline_size () ;
 int pr_err (char*,...) ;
 int sort_dimension__add (struct perf_hpp_list*,char*,struct evlist*,int) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int ) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static int setup_sort_list(struct perf_hpp_list *list, char *str,
      struct evlist *evlist)
{
 char *tmp, *tok;
 int ret = 0;
 int level = 0;
 int next_level = 1;
 bool in_group = 0;

 do {
  tok = str;
  tmp = strpbrk(str, "{}, ");
  if (tmp) {
   if (in_group)
    next_level = level;
   else
    next_level = level + 1;

   if (*tmp == '{')
    in_group = 1;
   else if (*tmp == '}')
    in_group = 0;

   *tmp = '\0';
   str = tmp + 1;
  }

  if (*tok) {
   ret = sort_dimension__add(list, tok, evlist, level);
   if (ret == -EINVAL) {
    if (!cacheline_size() && !strncasecmp(tok, "dcacheline", strlen(tok)))
     pr_err("The \"dcacheline\" --sort key needs to know the cacheline size and it couldn't be determined on this system");
    else
     pr_err("Invalid --sort key: `%s'", tok);
    break;
   } else if (ret == -ESRCH) {
    pr_err("Unknown --sort key: `%s'", tok);
    break;
   }
  }

  level = next_level;
 } while (tmp);

 return ret;
}
