
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ESCAPE_OCTAL ;
 int seq_commit (struct seq_file*,int) ;
 size_t seq_get_buf (struct seq_file*,char**) ;
 int string_escape_str (char const*,char*,size_t,int ,char const*) ;

void seq_escape(struct seq_file *m, const char *s, const char *esc)
{
 char *buf;
 size_t size = seq_get_buf(m, &buf);
 int ret;

 ret = string_escape_str(s, buf, size, ESCAPE_OCTAL, esc);
 seq_commit(m, ret < size ? ret : -1);
}
