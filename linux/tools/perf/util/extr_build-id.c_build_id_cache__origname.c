
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int buf ;


 int PATH_MAX ;
 char* build_id_cache__linkname (char const*,int *,int ) ;
 int free (char*) ;
 size_t readlink (char*,char*,int) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;

char *build_id_cache__origname(const char *sbuild_id)
{
 char *linkname;
 char buf[PATH_MAX];
 char *ret = ((void*)0), *p;
 size_t offs = 5;
 ssize_t len;

 linkname = build_id_cache__linkname(sbuild_id, ((void*)0), 0);
 if (!linkname)
  return ((void*)0);

 len = readlink(linkname, buf, sizeof(buf) - 1);
 if (len <= 0)
  goto out;
 buf[len] = '\0';


 p = strrchr(buf, '/');
 if (p && (p > buf + offs)) {
  *p = '\0';
  if (buf[offs + 1] == '[')
   offs++;




  ret = strdup(buf + offs);
 }
out:
 free(linkname);
 return ret;
}
