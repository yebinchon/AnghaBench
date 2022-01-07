
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int overwrite_mmap; int mmap; } ;


 int evlist__munmap_nofree (struct evlist*) ;
 int zfree (int *) ;

void evlist__munmap(struct evlist *evlist)
{
 evlist__munmap_nofree(evlist);
 zfree(&evlist->mmap);
 zfree(&evlist->overwrite_mmap);
}
