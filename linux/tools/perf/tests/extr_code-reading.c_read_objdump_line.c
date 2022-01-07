
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;
 size_t read_objdump_chunk (char const**,unsigned char**,size_t*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static size_t read_objdump_line(const char *line, unsigned char *buf,
    size_t buf_len)
{
 const char *p;
 size_t ret, bytes_read = 0;


 p = strchr(line, ':');
 if (!p)
  return 0;
 p++;


 while (*p) {
  if (!isspace(*p))
   break;
  p++;
 }

 do {
  ret = read_objdump_chunk(&p, &buf, &buf_len);
  bytes_read += ret;
  p++;
 } while (ret > 0);


 return bytes_read;
}
