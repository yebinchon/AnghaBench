
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 scalar_t__ do_read (char*,unsigned int) ;
 int free (char*) ;
 char* malloc (unsigned int) ;
 int parse_ftrace_printk (struct tep_handle*,char*,unsigned int) ;
 unsigned int read4 (struct tep_handle*) ;

__attribute__((used)) static int read_ftrace_printk(struct tep_handle *pevent)
{
 unsigned int size;
 char *buf;


 size = read4(pevent);
 if (!size)
  return 0;

 buf = malloc(size + 1);
 if (buf == ((void*)0))
  return -1;

 if (do_read(buf, size) < 0) {
  free(buf);
  return -1;
 }

 buf[size] = '\0';

 parse_ftrace_printk(pevent, buf, size);

 free(buf);
 return 0;
}
