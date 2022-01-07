
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int do_read (char*,unsigned long long) ;
 int free (char*) ;
 char* malloc (unsigned long long) ;
 int parse_saved_cmdline (struct tep_handle*,char*,unsigned long long) ;
 int pr_debug (char*) ;
 unsigned long long read8 (struct tep_handle*) ;

__attribute__((used)) static int read_saved_cmdline(struct tep_handle *pevent)
{
 unsigned long long size;
 char *buf;
 int ret;


 size = read8(pevent);
 if (!size)
  return 0;

 buf = malloc(size + 1);
 if (buf == ((void*)0)) {
  pr_debug("memory allocation failure\n");
  return -1;
 }

 ret = do_read(buf, size);
 if (ret < 0) {
  pr_debug("error reading saved cmdlines\n");
  goto out;
 }

 parse_saved_cmdline(pevent, buf, size);
 ret = 0;
out:
 free(buf);
 return ret;
}
