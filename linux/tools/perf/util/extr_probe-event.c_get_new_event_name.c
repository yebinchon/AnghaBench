
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 int MAX_EVENT_INDEX ;
 int e_snprintf (char*,size_t,char*,char*,...) ;
 int free (char*) ;
 int is_c_func_name (char*) ;
 int pr_debug (char*,int) ;
 int pr_warning (char*,...) ;
 char* strdup (char const*) ;
 int strlist__has_entry (struct strlist*,char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static int get_new_event_name(char *buf, size_t len, const char *base,
         struct strlist *namelist, bool ret_event,
         bool allow_suffix)
{
 int i, ret;
 char *p, *nbase;

 if (*base == '.')
  base++;
 nbase = strdup(base);
 if (!nbase)
  return -ENOMEM;


 p = strpbrk(nbase, ".@");
 if (p && p != nbase)
  *p = '\0';


 ret = e_snprintf(buf, len, "%s%s", nbase, ret_event ? "__return" : "");
 if (ret < 0) {
  pr_debug("snprintf() failed: %d\n", ret);
  goto out;
 }
 if (!strlist__has_entry(namelist, buf))
  goto out;

 if (!allow_suffix) {
  pr_warning("Error: event \"%s\" already exists.\n"
      " Hint: Remove existing event by 'perf probe -d'\n"
      "       or force duplicates by 'perf probe -f'\n"
      "       or set 'force=yes' in BPF source.\n",
      buf);
  ret = -EEXIST;
  goto out;
 }


 for (i = 1; i < MAX_EVENT_INDEX; i++) {
  ret = e_snprintf(buf, len, "%s_%d", nbase, i);
  if (ret < 0) {
   pr_debug("snprintf() failed: %d\n", ret);
   goto out;
  }
  if (!strlist__has_entry(namelist, buf))
   break;
 }
 if (i == MAX_EVENT_INDEX) {
  pr_warning("Too many events are on the same function.\n");
  ret = -ERANGE;
 }

out:
 free(nbase);


 if (ret >= 0 && !is_c_func_name(buf)) {
  pr_warning("Internal error: \"%s\" is an invalid event name.\n",
      buf);
  ret = -EINVAL;
 }

 return ret;
}
