
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 size_t PATH_MAX ;
 scalar_t__ access (char*,int ) ;
 int build_id_cache__linkname (char const*,char*,size_t const) ;
 int free (char*) ;
 scalar_t__ readlink (char*,char*,size_t const) ;
 scalar_t__ rm_rf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ unlink (char*) ;
 char* zalloc (size_t const) ;

int build_id_cache__remove_s(const char *sbuild_id)
{
 const size_t size = PATH_MAX;
 char *filename = zalloc(size),
      *linkname = zalloc(size), *tmp;
 int err = -1;

 if (filename == ((void*)0) || linkname == ((void*)0))
  goto out_free;

 if (!build_id_cache__linkname(sbuild_id, linkname, size))
  goto out_free;

 if (access(linkname, F_OK))
  goto out_free;

 if (readlink(linkname, filename, size - 1) < 0)
  goto out_free;

 if (unlink(linkname))
  goto out_free;




 tmp = strrchr(linkname, '/') + 1;
 snprintf(tmp, size - (tmp - linkname), "%s", filename);

 if (rm_rf(linkname))
  goto out_free;

 err = 0;
out_free:
 free(filename);
 free(linkname);
 return err;
}
