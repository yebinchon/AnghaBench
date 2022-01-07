
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closeout () ;
 int error (char*) ;
 int errx (int,char*,int ) ;
 int exit (int ) ;
 int exitstat ;
 scalar_t__ incomment ;
 int ofilename ;
 scalar_t__ overwriting ;
 int rename (int ,int ) ;
 int tempname ;
 int unlink (int ) ;
 int warn (char*) ;

__attribute__((used)) static void
done(void)
{
 if (incomment)
  error("EOF in comment");
 closeout();
 if (overwriting && rename(tempname, ofilename) == -1) {
  warn("couldn't rename temporary file");
  unlink(tempname);
  errx(2, "%s unchanged", ofilename);
 }
 exit(exitstat);
}
