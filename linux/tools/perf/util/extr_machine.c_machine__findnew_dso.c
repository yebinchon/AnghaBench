
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dsos; } ;
struct dso {int dummy; } ;


 struct dso* dsos__findnew (int *,char const*) ;

struct dso *machine__findnew_dso(struct machine *machine, const char *filename)
{
 return dsos__findnew(&machine->dsos, filename);
}
