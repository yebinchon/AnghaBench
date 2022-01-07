
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_data {scalar_t__ mode; } ;


 scalar_t__ PERF_DATA_MODE_WRITE ;

__attribute__((used)) static inline bool perf_data__is_write(struct perf_data *data)
{
 return data->mode == PERF_DATA_MODE_WRITE;
}
