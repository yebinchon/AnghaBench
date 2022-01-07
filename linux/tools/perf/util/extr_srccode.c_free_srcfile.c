
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcfile {int fn; int lines; scalar_t__ maplen; int map; int hash_nd; int nd; } ;


 int free (struct srcfile*) ;
 int hlist_del (int *) ;
 int list_del_init (int *) ;
 int map_total_sz ;
 int munmap (int ,scalar_t__) ;
 int num_srcfiles ;
 int zfree (int *) ;

__attribute__((used)) static void free_srcfile(struct srcfile *sf)
{
 list_del_init(&sf->nd);
 hlist_del(&sf->hash_nd);
 map_total_sz -= sf->maplen;
 munmap(sf->map, sf->maplen);
 zfree(&sf->lines);
 zfree(&sf->fn);
 free(sf);
 num_srcfiles--;
}
