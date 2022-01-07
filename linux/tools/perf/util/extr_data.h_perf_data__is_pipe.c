
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data {int is_pipe; } ;



__attribute__((used)) static inline int perf_data__is_pipe(struct perf_data *data)
{
 return data->is_pipe;
}
