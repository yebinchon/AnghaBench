
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int key_size; } ;
typedef int info ;
typedef int __u32 ;


 int bpf_map_get_next_key (int,void*,void*) ;
 int close (int) ;
 int errno ;
 int fprint_hex (int ,void*,int ,char*) ;
 int free (void*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,char*) ;
 int jsonw_null_field (int ,char*) ;
 int jsonw_start_object (int ) ;
 void* malloc (int ) ;
 int map_parse_fd_and_info (int*,char***,struct bpf_map_info*,int*) ;
 int p_err (char*,...) ;
 int parse_elem (char**,struct bpf_map_info*,void*,int *,int ,int ,int *,int *) ;
 int print_hex_data_json (void*,int ) ;
 int printf (char*) ;
 int stdout ;
 int strerror (int ) ;
 int usage () ;

__attribute__((used)) static int do_getnext(int argc, char **argv)
{
 struct bpf_map_info info = {};
 __u32 len = sizeof(info);
 void *key, *nextkey;
 int err;
 int fd;

 if (argc < 2)
  usage();

 fd = map_parse_fd_and_info(&argc, &argv, &info, &len);
 if (fd < 0)
  return -1;

 key = malloc(info.key_size);
 nextkey = malloc(info.key_size);
 if (!key || !nextkey) {
  p_err("mem alloc failed");
  err = -1;
  goto exit_free;
 }

 if (argc) {
  err = parse_elem(argv, &info, key, ((void*)0), info.key_size, 0,
     ((void*)0), ((void*)0));
  if (err)
   goto exit_free;
 } else {
  free(key);
  key = ((void*)0);
 }

 err = bpf_map_get_next_key(fd, key, nextkey);
 if (err) {
  p_err("can't get next key: %s", strerror(errno));
  goto exit_free;
 }

 if (json_output) {
  jsonw_start_object(json_wtr);
  if (key) {
   jsonw_name(json_wtr, "key");
   print_hex_data_json(key, info.key_size);
  } else {
   jsonw_null_field(json_wtr, "key");
  }
  jsonw_name(json_wtr, "next_key");
  print_hex_data_json(nextkey, info.key_size);
  jsonw_end_object(json_wtr);
 } else {
  if (key) {
   printf("key:\n");
   fprint_hex(stdout, key, info.key_size, " ");
   printf("\n");
  } else {
   printf("key: None\n");
  }
  printf("next key:\n");
  fprint_hex(stdout, nextkey, info.key_size, " ");
  printf("\n");
 }

exit_free:
 free(nextkey);
 free(key);
 close(fd);

 return err;
}
