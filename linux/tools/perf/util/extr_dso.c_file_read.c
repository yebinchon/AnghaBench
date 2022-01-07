
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ fd; int status; } ;
struct dso {TYPE_1__ data; } ;
typedef int ssize_t ;


 int DSO_DATA_STATUS_ERROR ;
 int DSO__DATA_CACHE_SIZE ;
 int dso__data_open_lock ;
 int errno ;
 int pread (scalar_t__,char*,int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int try_to_open_dso (struct dso*,struct machine*) ;

__attribute__((used)) static ssize_t file_read(struct dso *dso, struct machine *machine,
    u64 offset, char *data)
{
 ssize_t ret;

 pthread_mutex_lock(&dso__data_open_lock);





 try_to_open_dso(dso, machine);

 if (dso->data.fd < 0) {
  dso->data.status = DSO_DATA_STATUS_ERROR;
  ret = -errno;
  goto out;
 }

 ret = pread(dso->data.fd, data, DSO__DATA_CACHE_SIZE, offset);
out:
 pthread_mutex_unlock(&dso__data_open_lock);
 return ret;
}
