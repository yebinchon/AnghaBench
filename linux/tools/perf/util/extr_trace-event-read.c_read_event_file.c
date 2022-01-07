
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int do_read (char*,unsigned long long) ;
 int free (char*) ;
 char* malloc (unsigned long long) ;
 int parse_event_file (struct tep_handle*,char*,unsigned long long,char*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int read_event_file(struct tep_handle *pevent, char *sys,
      unsigned long long size)
{
 int ret;
 char *buf;

 buf = malloc(size);
 if (buf == ((void*)0)) {
  pr_debug("memory allocation failure\n");
  return -1;
 }

 ret = do_read(buf, size);
 if (ret < 0)
  goto out;

 ret = parse_event_file(pevent, buf, size, sys);
 if (ret < 0)
  pr_debug("error parsing event file.\n");
out:
 free(buf);
 return ret;
}
