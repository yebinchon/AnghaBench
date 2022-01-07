
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; scalar_t__ file_size; } ;
struct dso {TYPE_1__ data; } ;


 int close (scalar_t__) ;
 int dso__list_del (struct dso*) ;

__attribute__((used)) static void close_data_fd(struct dso *dso)
{
 if (dso->data.fd >= 0) {
  close(dso->data.fd);
  dso->data.fd = -1;
  dso->data.file_size = 0;
  dso__list_del(dso);
 }
}
