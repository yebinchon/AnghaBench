
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nscookie {int dummy; } ;
struct machine {int dummy; } ;
struct dso {scalar_t__ binary_type; int nsinfo; } ;


 scalar_t__ DSO_BINARY_TYPE__BUILD_ID_CACHE ;
 int __open_dso (struct dso*,struct machine*) ;
 int check_data_close () ;
 int dso__list_add (struct dso*) ;
 int nsinfo__mountns_enter (int ,struct nscookie*) ;
 int nsinfo__mountns_exit (struct nscookie*) ;

__attribute__((used)) static int open_dso(struct dso *dso, struct machine *machine)
{
 int fd;
 struct nscookie nsc;

 if (dso->binary_type != DSO_BINARY_TYPE__BUILD_ID_CACHE)
  nsinfo__mountns_enter(dso->nsinfo, &nsc);
 fd = __open_dso(dso, machine);
 if (dso->binary_type != DSO_BINARY_TYPE__BUILD_ID_CACHE)
  nsinfo__mountns_exit(&nsc);

 if (fd >= 0) {
  dso__list_add(dso);




  check_data_close();
 }

 return fd;
}
