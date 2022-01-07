
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsrc {int fd; int type; int name; } ;
struct dso {int load_errno; } ;
typedef enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;


 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 int strdup (char const*) ;

int symsrc__init(struct symsrc *ss, struct dso *dso, const char *name,
          enum dso_binary_type type)
{
 int fd = open(name, O_RDONLY);
 if (fd < 0)
  goto out_errno;

 ss->name = strdup(name);
 if (!ss->name)
  goto out_close;

 ss->fd = fd;
 ss->type = type;

 return 0;
out_close:
 close(fd);
out_errno:
 dso->load_errno = errno;
 return -1;
}
