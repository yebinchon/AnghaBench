
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CStream ;


 int * ZSTD_createCStream () ;
 int ZSTD_freeCStream (int *) ;

int main(void)
{
 ZSTD_CStream *cstream;

 cstream = ZSTD_createCStream();
 ZSTD_freeCStream(cstream);

 return 0;
}
