
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int errx (int,char*,int ) ;
 int exit (int) ;
 scalar_t__ fclose (int ) ;
 int filename ;
 int ofilename ;
 int output ;
 scalar_t__ overwriting ;
 int printf (char*) ;
 scalar_t__ symdepth ;
 int tempname ;
 int unlink (int ) ;
 int warn (char*,int ) ;
 int zerosyms ;

__attribute__((used)) static void
closeout(void)
{
 if (symdepth && !zerosyms)
  printf("\n");
 if (fclose(output) == EOF) {
  warn("couldn't write to %s", ofilename);
  if (overwriting) {
   unlink(tempname);
   errx(2, "%s unchanged", filename);
  } else {
   exit(2);
  }
 }
}
