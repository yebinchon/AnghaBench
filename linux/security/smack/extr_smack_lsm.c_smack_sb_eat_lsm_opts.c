
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int Opt_error ;
 int kfree (char*) ;
 char* kmemdup_nul (char*,int,int ) ;
 int match_opt_prefix (char*,int,char**) ;
 int memmove (char*,char*,int) ;
 int smack_add_opt (int,char*,void**) ;
 int smack_free_mnt_opts (void*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int smack_sb_eat_lsm_opts(char *options, void **mnt_opts)
{
 char *from = options, *to = options;
 bool first = 1;

 while (1) {
  char *next = strchr(from, ',');
  int token, len, rc;
  char *arg = ((void*)0);

  if (next)
   len = next - from;
  else
   len = strlen(from);

  token = match_opt_prefix(from, len, &arg);
  if (token != Opt_error) {
   arg = kmemdup_nul(arg, from + len - arg, GFP_KERNEL);
   rc = smack_add_opt(token, arg, mnt_opts);
   if (unlikely(rc)) {
    kfree(arg);
    if (*mnt_opts)
     smack_free_mnt_opts(*mnt_opts);
    *mnt_opts = ((void*)0);
    return rc;
   }
  } else {
   if (!first) {
    from--;
    len++;
   }
   if (to != from)
    memmove(to, from, len);
   to += len;
   first = 0;
  }
  if (!from[len])
   break;
  from += len + 1;
 }
 *to = '\0';
 return 0;
}
