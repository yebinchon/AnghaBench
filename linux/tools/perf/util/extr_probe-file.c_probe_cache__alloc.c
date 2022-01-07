
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_cache {int fd; int entries; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 struct probe_cache* zalloc (int) ;

__attribute__((used)) static struct probe_cache *probe_cache__alloc(void)
{
 struct probe_cache *pcache = zalloc(sizeof(*pcache));

 if (pcache) {
  INIT_LIST_HEAD(&pcache->entries);
  pcache->fd = -EINVAL;
 }
 return pcache;
}
