
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zstd_data {int * cstream; int * dstream; } ;


 int * ZSTD_createCStream () ;
 int * ZSTD_createDStream () ;
 int ZSTD_getErrorName (size_t) ;
 size_t ZSTD_initCStream (int *,int) ;
 size_t ZSTD_initDStream (int *) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int pr_err (char*,...) ;

int zstd_init(struct zstd_data *data, int level)
{
 size_t ret;

 data->dstream = ZSTD_createDStream();
 if (data->dstream == ((void*)0)) {
  pr_err("Couldn't create decompression stream.\n");
  return -1;
 }

 ret = ZSTD_initDStream(data->dstream);
 if (ZSTD_isError(ret)) {
  pr_err("Failed to initialize decompression stream: %s\n", ZSTD_getErrorName(ret));
  return -1;
 }

 if (!level)
  return 0;

 data->cstream = ZSTD_createCStream();
 if (data->cstream == ((void*)0)) {
  pr_err("Couldn't create compression stream.\n");
  return -1;
 }

 ret = ZSTD_initCStream(data->cstream, level);
 if (ZSTD_isError(ret)) {
  pr_err("Failed to initialize compression stream: %s\n", ZSTD_getErrorName(ret));
  return -1;
 }

 return 0;
}
