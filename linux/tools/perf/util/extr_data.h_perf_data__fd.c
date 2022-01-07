
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct perf_data {TYPE_1__ file; } ;



__attribute__((used)) static inline int perf_data__fd(struct perf_data *data)
{
 return data->file.fd;
}
