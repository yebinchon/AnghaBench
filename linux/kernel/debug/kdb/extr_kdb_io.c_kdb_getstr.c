
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUFLEN ;
 int kdb_nextline ;
 int kdb_printf (char const*) ;
 char const* kdb_prompt_str ;
 char* kdb_read (char*,size_t) ;
 int strscpy (char const*,char const*,int ) ;

char *kdb_getstr(char *buffer, size_t bufsize, const char *prompt)
{
 if (prompt && kdb_prompt_str != prompt)
  strscpy(kdb_prompt_str, prompt, CMD_BUFLEN);
 kdb_printf(kdb_prompt_str);
 kdb_nextline = 1;
 return kdb_read(buffer, bufsize);
}
