
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nscookie {int oldns; int newns; scalar_t__ oldcwd; } ;


 int CLONE_NEWNS ;
 int WARN_ON_ONCE (int ) ;
 int chdir (scalar_t__) ;
 int close (int) ;
 int setns (int,int ) ;
 int zfree (scalar_t__*) ;

void nsinfo__mountns_exit(struct nscookie *nc)
{
 if (nc == ((void*)0) || nc->oldns == -1 || nc->newns == -1 || !nc->oldcwd)
  return;

 setns(nc->oldns, CLONE_NEWNS);

 if (nc->oldcwd) {
  WARN_ON_ONCE(chdir(nc->oldcwd));
  zfree(&nc->oldcwd);
 }

 if (nc->oldns > -1) {
  close(nc->oldns);
  nc->oldns = -1;
 }

 if (nc->newns > -1) {
  close(nc->newns);
  nc->newns = -1;
 }
}
