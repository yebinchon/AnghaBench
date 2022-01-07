
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blankcount ;
 int blankmax ;
 scalar_t__ compblank ;
 int complement ;
 scalar_t__ debugging ;
 scalar_t__ delcount ;
 int exitstat ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 int linenum ;
 scalar_t__ lnblank ;
 scalar_t__ lnnum ;
 char* newline ;
 int output ;
 int printf (char*,int,char*) ;
 size_t strspn (char*,char*) ;
 scalar_t__ symlist ;
 char* tline ;

__attribute__((used)) static void
flushline(bool keep)
{
 if (symlist)
  return;
 if (keep ^ complement) {
  bool blankline = tline[strspn(tline, " \t\r\n")] == '\0';
  if (blankline && compblank && blankcount != blankmax) {
   delcount += 1;
   blankcount += 1;
  } else {
   if (lnnum && delcount > 0)
    printf("#line %d%s", linenum, newline);
   fputs(tline, output);
   delcount = 0;
   blankmax = blankcount = blankline ? blankcount + 1 : 0;
  }
 } else {
  if (lnblank)
   fputs(newline, output);
  exitstat = 1;
  delcount += 1;
  blankcount = 0;
 }
 if (debugging)
  fflush(output);
}
