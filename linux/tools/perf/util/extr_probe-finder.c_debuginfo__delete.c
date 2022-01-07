
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {scalar_t__ dwfl; } ;


 int dwfl_end (scalar_t__) ;
 int free (struct debuginfo*) ;

void debuginfo__delete(struct debuginfo *dbg)
{
 if (dbg) {
  if (dbg->dwfl)
   dwfl_end(dbg->dwfl);
  free(dbg);
 }
}
