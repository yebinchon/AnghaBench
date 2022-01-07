
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data {int is_dir; } ;



__attribute__((used)) static inline bool perf_data__is_dir(struct perf_data *data)
{
 return data->is_dir;
}
