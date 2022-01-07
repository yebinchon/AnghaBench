
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_domain_info {int acl_info_list; int ns; } ;


 int GFP_NOFS ;
 int TOMOYO_STAT_POLICY_UPDATES ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 int tomoyo_addprintf (char*,int,char*,char*) ;
 int tomoyo_normalize_line (char*) ;
 scalar_t__ tomoyo_truncate (char*) ;
 int tomoyo_update_stat (int ) ;
 int tomoyo_write_domain2 (int ,int *,char*,int) ;

__attribute__((used)) static void tomoyo_add_entry(struct tomoyo_domain_info *domain, char *header)
{
 char *buffer;
 char *realpath = ((void*)0);
 char *argv0 = ((void*)0);
 char *symlink = ((void*)0);
 char *cp = strchr(header, '\n');
 int len;

 if (!cp)
  return;
 cp = strchr(cp + 1, '\n');
 if (!cp)
  return;
 *cp++ = '\0';
 len = strlen(cp) + 1;

 if (*cp == 'f') {
  argv0 = strstr(header, " argv[]={ \"");
  if (argv0) {
   argv0 += 10;
   len += tomoyo_truncate(argv0) + 14;
  }
  realpath = strstr(header, " exec={ realpath=\"");
  if (realpath) {
   realpath += 8;
   len += tomoyo_truncate(realpath) + 6;
  }
  symlink = strstr(header, " symlink.target=\"");
  if (symlink)
   len += tomoyo_truncate(symlink + 1) + 1;
 }
 buffer = kmalloc(len, GFP_NOFS);
 if (!buffer)
  return;
 snprintf(buffer, len - 1, "%s", cp);
 if (realpath)
  tomoyo_addprintf(buffer, len, " exec.%s", realpath);
 if (argv0)
  tomoyo_addprintf(buffer, len, " exec.argv[0]=%s", argv0);
 if (symlink)
  tomoyo_addprintf(buffer, len, "%s", symlink);
 tomoyo_normalize_line(buffer);
 if (!tomoyo_write_domain2(domain->ns, &domain->acl_info_list, buffer,
      0))
  tomoyo_update_stat(TOMOYO_STAT_POLICY_UPDATES);
 kfree(buffer);
}
