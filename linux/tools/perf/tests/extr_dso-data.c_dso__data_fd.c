
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct dso {int dummy; } ;


 int dso__data_get_fd (struct dso*,struct machine*) ;
 int dso__data_put_fd (struct dso*) ;

__attribute__((used)) static int dso__data_fd(struct dso *dso, struct machine *machine)
{
 int fd = dso__data_get_fd(dso, machine);

 if (fd >= 0)
  dso__data_put_fd(dso);

 return fd;
}
