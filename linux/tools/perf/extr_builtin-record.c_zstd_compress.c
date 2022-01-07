
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {size_t bytes_transferred; size_t bytes_compressed; int zstd_data; } ;
struct perf_record_compressed {int dummy; } ;


 int PERF_SAMPLE_MAX_SIZE ;
 int process_comp_header ;
 size_t zstd_compress_stream_to_records (int *,void*,size_t,void*,size_t,size_t,int ) ;

__attribute__((used)) static size_t zstd_compress(struct perf_session *session, void *dst, size_t dst_size,
       void *src, size_t src_size)
{
 size_t compressed;
 size_t max_record_size = PERF_SAMPLE_MAX_SIZE - sizeof(struct perf_record_compressed) - 1;

 compressed = zstd_compress_stream_to_records(&session->zstd_data, dst, dst_size, src, src_size,
           max_record_size, process_comp_header);

 session->bytes_transferred += src_size;
 session->bytes_compressed += compressed;

 return compressed;
}
