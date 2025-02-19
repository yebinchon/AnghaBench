
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_page_dump {char* data; } ;
struct linux_binprm {unsigned long p; int argc; int envc; } ;


 int GFP_NOFS ;
 unsigned long PAGE_SIZE ;
 char* kzalloc (int const,int ) ;
 int memmove (char*,char*,int) ;
 int snprintf (char*,int const,char*) ;
 int tomoyo_dump_page (struct linux_binprm*,unsigned long,struct tomoyo_page_dump*) ;

__attribute__((used)) static char *tomoyo_print_bprm(struct linux_binprm *bprm,
          struct tomoyo_page_dump *dump)
{
 static const int tomoyo_buffer_len = 4096 * 2;
 char *buffer = kzalloc(tomoyo_buffer_len, GFP_NOFS);
 char *cp;
 char *last_start;
 int len;
 unsigned long pos = bprm->p;
 int offset = pos % PAGE_SIZE;
 int argv_count = bprm->argc;
 int envp_count = bprm->envc;
 bool truncated = 0;

 if (!buffer)
  return ((void*)0);
 len = snprintf(buffer, tomoyo_buffer_len - 1, "argv[]={ ");
 cp = buffer + len;
 if (!argv_count) {
  memmove(cp, "} envp[]={ ", 11);
  cp += 11;
 }
 last_start = cp;
 while (argv_count || envp_count) {
  if (!tomoyo_dump_page(bprm, pos, dump))
   goto out;
  pos += PAGE_SIZE - offset;

  while (offset < PAGE_SIZE) {
   const char *kaddr = dump->data;
   const unsigned char c = kaddr[offset++];

   if (cp == last_start)
    *cp++ = '"';
   if (cp >= buffer + tomoyo_buffer_len - 32) {

    truncated = 1;
   } else if (c == '\\') {
    *cp++ = '\\';
    *cp++ = '\\';
   } else if (c > ' ' && c < 127) {
    *cp++ = c;
   } else if (!c) {
    *cp++ = '"';
    *cp++ = ' ';
    last_start = cp;
   } else {
    *cp++ = '\\';
    *cp++ = (c >> 6) + '0';
    *cp++ = ((c >> 3) & 7) + '0';
    *cp++ = (c & 7) + '0';
   }
   if (c)
    continue;
   if (argv_count) {
    if (--argv_count == 0) {
     if (truncated) {
      cp = last_start;
      memmove(cp, "... ", 4);
      cp += 4;
     }
     memmove(cp, "} envp[]={ ", 11);
     cp += 11;
     last_start = cp;
     truncated = 0;
    }
   } else if (envp_count) {
    if (--envp_count == 0) {
     if (truncated) {
      cp = last_start;
      memmove(cp, "... ", 4);
      cp += 4;
     }
    }
   }
   if (!argv_count && !envp_count)
    break;
  }
  offset = 0;
 }
 *cp++ = '}';
 *cp = '\0';
 return buffer;
out:
 snprintf(buffer, tomoyo_buffer_len - 1,
   "argv[]={ ... } envp[]= { ... }");
 return buffer;
}
