
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zstd_data {int * cstream; int * dstream; } ;


 int ZSTD_freeCStream (int *) ;
 int ZSTD_freeDStream (int *) ;

int zstd_fini(struct zstd_data *data)
{
 if (data->dstream) {
  ZSTD_freeDStream(data->dstream);
  data->dstream = ((void*)0);
 }

 if (data->cstream) {
  ZSTD_freeCStream(data->cstream);
  data->cstream = ((void*)0);
 }

 return 0;
}
