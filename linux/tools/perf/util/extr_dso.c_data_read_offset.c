
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ file_size; } ;
struct dso {TYPE_1__ data; } ;
typedef int ssize_t ;


 int cached_read (struct dso*,struct machine*,scalar_t__,int *,int) ;
 scalar_t__ dso__data_file_size (struct dso*,struct machine*) ;

__attribute__((used)) static ssize_t data_read_offset(struct dso *dso, struct machine *machine,
    u64 offset, u8 *data, ssize_t size)
{
 if (dso__data_file_size(dso, machine))
  return -1;


 if (offset > dso->data.file_size)
  return -1;

 if (offset + size < offset)
  return -1;

 return cached_read(dso, machine, offset, data, size);
}
