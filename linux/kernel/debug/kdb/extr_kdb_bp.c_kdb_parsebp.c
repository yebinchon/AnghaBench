
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bph_length; int bp_type; } ;
typedef TYPE_1__ kdb_bp_t ;


 int BP_ACCESS_WATCHPOINT ;
 int BP_HARDWARE_BREAKPOINT ;
 int BP_WRITE_WATCHPOINT ;
 int KDB_ARGCOUNT ;
 int KDB_BADLENGTH ;
 int kdbgetularg (char*,unsigned long*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int kdb_parsebp(int argc, const char **argv, int *nextargp, kdb_bp_t *bp)
{
 int nextarg = *nextargp;
 int diag;

 bp->bph_length = 1;
 if ((argc + 1) != nextarg) {
  if (strncasecmp(argv[nextarg], "datar", sizeof("datar")) == 0)
   bp->bp_type = BP_ACCESS_WATCHPOINT;
  else if (strncasecmp(argv[nextarg], "dataw", sizeof("dataw")) == 0)
   bp->bp_type = BP_WRITE_WATCHPOINT;
  else if (strncasecmp(argv[nextarg], "inst", sizeof("inst")) == 0)
   bp->bp_type = BP_HARDWARE_BREAKPOINT;
  else
   return KDB_ARGCOUNT;

  bp->bph_length = 1;

  nextarg++;

  if ((argc + 1) != nextarg) {
   unsigned long len;

   diag = kdbgetularg((char *)argv[nextarg],
        &len);
   if (diag)
    return diag;


   if (len > 8)
    return KDB_BADLENGTH;

   bp->bph_length = len;
   nextarg++;
  }

  if ((argc + 1) != nextarg)
   return KDB_ARGCOUNT;
 }

 *nextargp = nextarg;
 return 0;
}
