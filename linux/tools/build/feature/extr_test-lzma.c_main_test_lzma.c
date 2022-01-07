
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_stream ;


 int LZMA_CONCATENATED ;
 int LZMA_STREAM_INIT ;
 int UINT64_MAX ;
 int lzma_stream_decoder (int *,int ,int ) ;

int main(void)
{
 lzma_stream strm = LZMA_STREAM_INIT;
 int ret;

 ret = lzma_stream_decoder(&strm, UINT64_MAX, LZMA_CONCATENATED);
 return ret ? -1 : 0;
}
