
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str_node {char* s; } ;
typedef int buf ;


 int ENOTSUP ;
 int e_snprintf (char*,int,char*,char*) ;
 int errno ;
 int pr_debug (char*,char*) ;
 int pr_warning (char*,int ) ;
 int str_error_r (int,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

__attribute__((used)) static int __del_trace_probe_event(int fd, struct str_node *ent)
{
 char *p;
 char buf[128];
 int ret;


 ret = e_snprintf(buf, 128, "-:%s", ent->s);
 if (ret < 0)
  goto error;

 p = strchr(buf + 2, ':');
 if (!p) {
  pr_debug("Internal error: %s should have ':' but not.\n",
    ent->s);
  ret = -ENOTSUP;
  goto error;
 }
 *p = '/';

 pr_debug("Writing event: %s\n", buf);
 ret = write(fd, buf, strlen(buf));
 if (ret < 0) {
  ret = -errno;
  goto error;
 }

 return 0;
error:
 pr_warning("Failed to delete event: %s\n",
     str_error_r(-ret, buf, sizeof(buf)));
 return ret;
}
