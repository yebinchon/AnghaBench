
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int key_size; } ;
typedef int info ;
typedef int __u32 ;


 int bpf_map_delete_elem (int,void*) ;
 int close (int) ;
 int errno ;
 int free (void*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 void* malloc (int ) ;
 int map_parse_fd_and_info (int*,char***,struct bpf_map_info*,int*) ;
 int p_err (char*,...) ;
 int parse_elem (char**,struct bpf_map_info*,void*,int *,int ,int ,int *,int *) ;
 int strerror (int ) ;
 int usage () ;

__attribute__((used)) static int do_delete(int argc, char **argv)
{
 struct bpf_map_info info = {};
 __u32 len = sizeof(info);
 void *key;
 int err;
 int fd;

 if (argc < 2)
  usage();

 fd = map_parse_fd_and_info(&argc, &argv, &info, &len);
 if (fd < 0)
  return -1;

 key = malloc(info.key_size);
 if (!key) {
  p_err("mem alloc failed");
  err = -1;
  goto exit_free;
 }

 err = parse_elem(argv, &info, key, ((void*)0), info.key_size, 0, ((void*)0), ((void*)0));
 if (err)
  goto exit_free;

 err = bpf_map_delete_elem(fd, key);
 if (err)
  p_err("delete failed: %s", strerror(errno));

exit_free:
 free(key);
 close(fd);

 if (!err && json_output)
  jsonw_null(json_wtr);
 return err;
}
