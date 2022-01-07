
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_eval_map {int eval_value; } ;


 int memmove (char*,char*,int) ;
 int snprintf (char*,int,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *eval_replace(char *ptr, struct trace_eval_map *map, int len)
{
 int rlen;
 int elen;


 elen = snprintf(ptr, 0, "%ld", map->eval_value);

 if (len < elen)
  return ((void*)0);

 snprintf(ptr, elen + 1, "%ld", map->eval_value);


 rlen = strlen(ptr + len);
 memmove(ptr + elen, ptr + len, rlen);

 ptr[elen + rlen] = 0;

 return ptr + elen;
}
