
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pollfd; } ;
struct evlist {TYPE_1__ core; int overwrite_mmap; int mmap; } ;


 int fdarray__exit (int *) ;
 int zfree (int *) ;

void evlist__exit(struct evlist *evlist)
{
 zfree(&evlist->mmap);
 zfree(&evlist->overwrite_mmap);
 fdarray__exit(&evlist->core.pollfd);
}
