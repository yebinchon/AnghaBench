
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;
struct btf_dump {int dummy; } ;


 int hashmap__find (struct hashmap*,char const*,void**) ;
 int hashmap__set (struct hashmap*,char const*,void*,int *,int *) ;

__attribute__((used)) static size_t btf_dump_name_dups(struct btf_dump *d, struct hashmap *name_map,
     const char *orig_name)
{
 size_t dup_cnt = 0;

 hashmap__find(name_map, orig_name, (void **)&dup_cnt);
 dup_cnt++;
 hashmap__set(name_map, orig_name, (void *)dup_cnt, ((void*)0), ((void*)0));

 return dup_cnt;
}
