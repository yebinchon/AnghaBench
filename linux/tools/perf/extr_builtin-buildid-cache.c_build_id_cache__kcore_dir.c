
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fetch_current_timestamp (char*,size_t) ;

__attribute__((used)) static int build_id_cache__kcore_dir(char *dir, size_t sz)
{
 return fetch_current_timestamp(dir, sz);
}
