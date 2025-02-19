
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdarray {int nr; TYPE_1__* entries; } ;
struct TYPE_2__ {int fd; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

int fdarray__fprintf(struct fdarray *fda, FILE *fp)
{
 int fd, printed = fprintf(fp, "%d [ ", fda->nr);

 for (fd = 0; fd < fda->nr; ++fd)
  printed += fprintf(fp, "%s%d", fd ? ", " : "", fda->entries[fd].fd);

 return printed + fprintf(fp, " ]");
}
