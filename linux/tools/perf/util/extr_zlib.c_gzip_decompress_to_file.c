
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* next_out; int avail_out; int avail_in; void* next_in; void* opaque; void* zfree; void* zalloc; } ;
typedef TYPE_1__ z_stream ;
struct stat {int st_size; } ;


 int CHUNK_SIZE ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 scalar_t__ MAX_WBITS ;
 int O_RDONLY ;
 int PROT_READ ;



 int Z_NO_FLUSH ;
 void* Z_NULL ;
 scalar_t__ Z_OK ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 scalar_t__ inflateInit2 (TYPE_1__*,scalar_t__) ;
 void* mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (void*,int ) ;
 int open (char const*,int ) ;
 int writen (int,unsigned char*,int) ;

int gzip_decompress_to_file(const char *input, int output_fd)
{
 int ret = Z_STREAM_ERROR;
 int input_fd;
 void *ptr;
 int len;
 struct stat stbuf;
 unsigned char buf[CHUNK_SIZE];
 z_stream zs = {
  .zalloc = Z_NULL,
  .zfree = Z_NULL,
  .opaque = Z_NULL,
  .avail_in = 0,
  .next_in = Z_NULL,
 };

 input_fd = open(input, O_RDONLY);
 if (input_fd < 0)
  return -1;

 if (fstat(input_fd, &stbuf) < 0)
  goto out_close;

 ptr = mmap(((void*)0), stbuf.st_size, PROT_READ, MAP_PRIVATE, input_fd, 0);
 if (ptr == MAP_FAILED)
  goto out_close;

 if (inflateInit2(&zs, 16 + MAX_WBITS) != Z_OK)
  goto out_unmap;

 zs.next_in = ptr;
 zs.avail_in = stbuf.st_size;

 do {
  zs.next_out = buf;
  zs.avail_out = CHUNK_SIZE;

  ret = inflate(&zs, Z_NO_FLUSH);
  switch (ret) {
  case 128:
   ret = 130;

  case 130:
  case 129:
   goto out;
  default:
   break;
  }

  len = CHUNK_SIZE - zs.avail_out;
  if (writen(output_fd, buf, len) != len) {
   ret = 130;
   goto out;
  }

 } while (ret != Z_STREAM_END);

out:
 inflateEnd(&zs);
out_unmap:
 munmap(ptr, stbuf.st_size);
out_close:
 close(input_fd);

 return ret == Z_STREAM_END ? 0 : -1;
}
