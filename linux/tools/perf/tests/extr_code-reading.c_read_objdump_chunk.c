
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bigendian () ;
 int hex (char) ;
 scalar_t__ isspace (char const) ;
 int isxdigit (char) ;

__attribute__((used)) static size_t read_objdump_chunk(const char **line, unsigned char **buf,
     size_t *buf_len)
{
 size_t bytes_read = 0;
 unsigned char *chunk_start = *buf;


 while (*buf_len > 0) {
  char c1, c2;


  c1 = *(*line)++;
  if (!isxdigit(c1))
   break;
  c2 = *(*line)++;
  if (!isxdigit(c2))
   break;


  **buf = (hex(c1) << 4) | hex(c2);
  (*buf)++;
  (*buf_len)--;
  bytes_read++;


  if (isspace(**line))
   break;
 }
 if (bytes_read > 1 && !bigendian()) {
  unsigned char *chunk_end = chunk_start + bytes_read - 1;
  unsigned char tmp;

  while (chunk_start < chunk_end) {
   tmp = *chunk_start;
   *chunk_start = *chunk_end;
   *chunk_end = tmp;
   chunk_start++;
   chunk_end--;
  }
 }

 return bytes_read;
}
