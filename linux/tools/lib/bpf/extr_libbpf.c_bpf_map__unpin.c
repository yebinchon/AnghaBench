
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int EINVAL ;
 int check_path (char const*) ;
 int errno ;
 int pr_debug (char*,char const*) ;
 int pr_warning (char*) ;
 int unlink (char const*) ;

int bpf_map__unpin(struct bpf_map *map, const char *path)
{
 int err;

 err = check_path(path);
 if (err)
  return err;

 if (map == ((void*)0)) {
  pr_warning("invalid map pointer\n");
  return -EINVAL;
 }

 err = unlink(path);
 if (err != 0)
  return -errno;
 pr_debug("unpinned map '%s'\n", path);

 return 0;
}
