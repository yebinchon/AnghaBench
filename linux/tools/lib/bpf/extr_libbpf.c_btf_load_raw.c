
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
struct btf {int dummy; } ;
typedef int FILE ;


 int EBADF ;
 int ENOMEM ;
 struct btf* ERR_PTR (int ) ;
 struct btf* btf__new (void*,size_t) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,size_t,int *) ;
 int free (void*) ;
 void* malloc (size_t) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static struct btf *btf_load_raw(const char *path)
{
 struct btf *btf;
 size_t read_cnt;
 struct stat st;
 void *data;
 FILE *f;

 if (stat(path, &st))
  return ERR_PTR(-errno);

 data = malloc(st.st_size);
 if (!data)
  return ERR_PTR(-ENOMEM);

 f = fopen(path, "rb");
 if (!f) {
  btf = ERR_PTR(-errno);
  goto cleanup;
 }

 read_cnt = fread(data, 1, st.st_size, f);
 fclose(f);
 if (read_cnt < st.st_size) {
  btf = ERR_PTR(-EBADF);
  goto cleanup;
 }

 btf = btf__new(data, read_cnt);

cleanup:
 free(data);
 return btf;
}
