
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct dso {TYPE_1__ data; } ;
typedef int ssize_t ;


 scalar_t__ DSO_DATA_STATUS_ERROR ;
 int data_read_offset (struct dso*,struct machine*,int ,int *,int) ;

ssize_t dso__data_read_offset(struct dso *dso, struct machine *machine,
         u64 offset, u8 *data, ssize_t size)
{
 if (dso->data.status == DSO_DATA_STATUS_ERROR)
  return -1;

 return data_read_offset(dso, machine, offset, data, size);
}
