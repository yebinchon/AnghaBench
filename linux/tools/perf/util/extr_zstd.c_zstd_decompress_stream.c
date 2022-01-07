
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zstd_data {int dstream; } ;
struct TYPE_5__ {void* member_0; size_t member_1; int size; int pos; void* dst; int member_2; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {void* member_0; size_t member_1; scalar_t__ pos; scalar_t__ size; int member_2; } ;
typedef TYPE_2__ ZSTD_inBuffer ;


 size_t ZSTD_decompressStream (int ,TYPE_1__*,TYPE_2__*) ;
 int ZSTD_getErrorName (size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int pr_err (char*,size_t,int,size_t,int ) ;

size_t zstd_decompress_stream(struct zstd_data *data, void *src, size_t src_size,
         void *dst, size_t dst_size)
{
 size_t ret;
 ZSTD_inBuffer input = { src, src_size, 0 };
 ZSTD_outBuffer output = { dst, dst_size, 0 };

 while (input.pos < input.size) {
  ret = ZSTD_decompressStream(data->dstream, &output, &input);
  if (ZSTD_isError(ret)) {
   pr_err("failed to decompress (B): %ld -> %ld, dst_size %ld : %s\n",
          src_size, output.size, dst_size, ZSTD_getErrorName(ret));
   break;
  }
  output.dst = dst + output.pos;
  output.size = dst_size - output.pos;
 }

 return output.pos;
}
