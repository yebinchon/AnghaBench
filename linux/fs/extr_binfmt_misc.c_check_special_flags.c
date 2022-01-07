
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ Node ;


 int MISC_FMT_CREDENTIALS ;
 int MISC_FMT_OPEN_BINARY ;
 int MISC_FMT_OPEN_FILE ;
 int MISC_FMT_PRESERVE_ARGV0 ;
 int pr_debug (char*) ;

__attribute__((used)) static char *check_special_flags(char *sfs, Node *e)
{
 char *p = sfs;
 int cont = 1;


 while (cont) {
  switch (*p) {
  case 'P':
   pr_debug("register: flag: P (preserve argv0)\n");
   p++;
   e->flags |= MISC_FMT_PRESERVE_ARGV0;
   break;
  case 'O':
   pr_debug("register: flag: O (open binary)\n");
   p++;
   e->flags |= MISC_FMT_OPEN_BINARY;
   break;
  case 'C':
   pr_debug("register: flag: C (preserve creds)\n");
   p++;


   e->flags |= (MISC_FMT_CREDENTIALS |
     MISC_FMT_OPEN_BINARY);
   break;
  case 'F':
   pr_debug("register: flag: F: open interpreter file now\n");
   p++;
   e->flags |= MISC_FMT_OPEN_FILE;
   break;
  default:
   cont = 0;
  }
 }

 return p;
}
