
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_commit (struct seq_file*,int) ;
 size_t seq_get_buf (struct seq_file*,char**) ;
 int string_escape_mem_ascii (char const*,size_t,char*,size_t) ;

void seq_escape_mem_ascii(struct seq_file *m, const char *src, size_t isz)
{
 char *buf;
 size_t size = seq_get_buf(m, &buf);
 int ret;

 ret = string_escape_mem_ascii(src, isz, buf, size);
 seq_commit(m, ret < size ? ret : -1);
}
