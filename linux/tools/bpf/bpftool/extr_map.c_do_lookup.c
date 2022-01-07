
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int key_size; } ;
typedef int info ;
typedef int __u32 ;


 scalar_t__ ENOENT ;
 int alloc_key_value (struct bpf_map_info*,void**,void**) ;
 int bpf_map_lookup_elem (int,void*,void*) ;
 int close (int) ;
 scalar_t__ errno ;
 int fprint_hex (int ,void*,int ,char*) ;
 int free (void*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int map_parse_fd_and_info (int*,char***,struct bpf_map_info*,int*) ;
 int p_err (char*,int ) ;
 int parse_elem (char**,struct bpf_map_info*,void*,int *,int ,int ,int *,int *) ;
 int print_key_value (struct bpf_map_info*,void*,void*) ;
 int printf (char*) ;
 int stdout ;
 int strerror (scalar_t__) ;
 int usage () ;

__attribute__((used)) static int do_lookup(int argc, char **argv)
{
 struct bpf_map_info info = {};
 __u32 len = sizeof(info);
 void *key, *value;
 int err;
 int fd;

 if (argc < 2)
  usage();

 fd = map_parse_fd_and_info(&argc, &argv, &info, &len);
 if (fd < 0)
  return -1;

 err = alloc_key_value(&info, &key, &value);
 if (err)
  goto exit_free;

 err = parse_elem(argv, &info, key, ((void*)0), info.key_size, 0, ((void*)0), ((void*)0));
 if (err)
  goto exit_free;

 err = bpf_map_lookup_elem(fd, key, value);
 if (err) {
  if (errno == ENOENT) {
   if (json_output) {
    jsonw_null(json_wtr);
   } else {
    printf("key:\n");
    fprint_hex(stdout, key, info.key_size, " ");
    printf("\n\nNot found\n");
   }
  } else {
   p_err("lookup failed: %s", strerror(errno));
  }

  goto exit_free;
 }


 print_key_value(&info, key, value);

exit_free:
 free(key);
 free(value);
 close(fd);

 return err;
}
