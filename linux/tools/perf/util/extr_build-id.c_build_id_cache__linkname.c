
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asnprintf (char**,size_t,char*,int ,char const*,char const*) ;
 int buildid_dir ;

char *build_id_cache__linkname(const char *sbuild_id, char *bf, size_t size)
{
 char *tmp = bf;
 int ret = asnprintf(&bf, size, "%s/.build-id/%.2s/%s", buildid_dir,
       sbuild_id, sbuild_id + 2);
 if (ret < 0 || (tmp && size < (unsigned int)ret))
  return ((void*)0);
 return bf;
}
