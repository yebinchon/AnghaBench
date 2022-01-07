
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int Opt_error ;
 int kfree (char*) ;
 char* kmemdup_nul (char*,int,int ) ;
 int match_opt_prefix (char*,int,char**) ;
 int memmove (char*,char*,int) ;
 int opt_len (char*) ;
 int selinux_add_opt (int,char*,void**) ;
 int selinux_free_mnt_opts (void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int selinux_sb_eat_lsm_opts(char *options, void **mnt_opts)
{
 char *from = options;
 char *to = options;
 bool first = 1;
 int rc;

 while (1) {
  int len = opt_len(from);
  int token;
  char *arg = ((void*)0);

  token = match_opt_prefix(from, len, &arg);

  if (token != Opt_error) {
   char *p, *q;


   if (arg) {
    for (p = q = arg; p < from + len; p++) {
     char c = *p;
     if (c != '"')
      *q++ = c;
    }
    arg = kmemdup_nul(arg, q - arg, GFP_KERNEL);
    if (!arg) {
     rc = -ENOMEM;
     goto free_opt;
    }
   }
   rc = selinux_add_opt(token, arg, mnt_opts);
   if (unlikely(rc)) {
    kfree(arg);
    goto free_opt;
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

free_opt:
 if (*mnt_opts) {
  selinux_free_mnt_opts(*mnt_opts);
  *mnt_opts = ((void*)0);
 }
 return rc;
}
