
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int value_size; int key_size; } ;
typedef int info ;
typedef int __u32 ;


 int BPF_ANY ;
 int alloc_key_value (struct bpf_map_info*,void**,void**) ;
 int bpf_map_update_elem (int,void*,void*,int) ;
 int close (int) ;
 int errno ;
 int free (void*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int map_parse_fd_and_info (int*,char***,struct bpf_map_info*,int*) ;
 int p_err (char*,int ) ;
 int parse_elem (char**,struct bpf_map_info*,void*,void*,int ,int ,int*,int**) ;
 int strerror (int ) ;
 int usage () ;

__attribute__((used)) static int do_update(int argc, char **argv)
{
 struct bpf_map_info info = {};
 __u32 len = sizeof(info);
 __u32 *value_fd = ((void*)0);
 __u32 flags = BPF_ANY;
 void *key, *value;
 int fd, err;

 if (argc < 2)
  usage();

 fd = map_parse_fd_and_info(&argc, &argv, &info, &len);
 if (fd < 0)
  return -1;

 err = alloc_key_value(&info, &key, &value);
 if (err)
  goto exit_free;

 err = parse_elem(argv, &info, key, value, info.key_size,
    info.value_size, &flags, &value_fd);
 if (err)
  goto exit_free;

 err = bpf_map_update_elem(fd, key, value, flags);
 if (err) {
  p_err("update failed: %s", strerror(errno));
  goto exit_free;
 }

exit_free:
 if (value_fd)
  close(*value_fd);
 free(key);
 free(value);
 close(fd);

 if (!err && json_output)
  jsonw_null(json_wtr);
 return err;
}
