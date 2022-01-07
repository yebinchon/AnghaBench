
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; int files; } ;
struct perf_data {TYPE_1__ dir; } ;


 int close_dir (int ,int ) ;

void perf_data__close_dir(struct perf_data *data)
{
 close_dir(data->dir.files, data->dir.nr);
}
