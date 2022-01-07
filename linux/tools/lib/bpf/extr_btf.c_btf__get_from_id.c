
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;
struct bpf_btf_info {int btf_size; void* btf; int member_0; } ;
typedef int btf_info ;
typedef int __u8 ;
typedef int __u32 ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct btf*) ;
 int PTR_ERR (struct btf*) ;
 int bpf_btf_get_fd_by_id (int) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_btf_info*,int*) ;
 struct btf* btf__new (int *,int) ;
 int close (int) ;
 int errno ;
 int free (void*) ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;
 void* ptr_to_u64 (void*) ;
 void* realloc (void*,int) ;

int btf__get_from_id(__u32 id, struct btf **btf)
{
 struct bpf_btf_info btf_info = { 0 };
 __u32 len = sizeof(btf_info);
 __u32 last_size;
 int btf_fd;
 void *ptr;
 int err;

 err = 0;
 *btf = ((void*)0);
 btf_fd = bpf_btf_get_fd_by_id(id);
 if (btf_fd < 0)
  return 0;





 btf_info.btf_size = 4096;
 last_size = btf_info.btf_size;
 ptr = malloc(last_size);
 if (!ptr) {
  err = -ENOMEM;
  goto exit_free;
 }

 memset(ptr, 0, last_size);
 btf_info.btf = ptr_to_u64(ptr);
 err = bpf_obj_get_info_by_fd(btf_fd, &btf_info, &len);

 if (!err && btf_info.btf_size > last_size) {
  void *temp_ptr;

  last_size = btf_info.btf_size;
  temp_ptr = realloc(ptr, last_size);
  if (!temp_ptr) {
   err = -ENOMEM;
   goto exit_free;
  }
  ptr = temp_ptr;
  memset(ptr, 0, last_size);
  btf_info.btf = ptr_to_u64(ptr);
  err = bpf_obj_get_info_by_fd(btf_fd, &btf_info, &len);
 }

 if (err || btf_info.btf_size > last_size) {
  err = errno;
  goto exit_free;
 }

 *btf = btf__new((__u8 *)(long)btf_info.btf, btf_info.btf_size);
 if (IS_ERR(*btf)) {
  err = PTR_ERR(*btf);
  *btf = ((void*)0);
 }

exit_free:
 close(btf_fd);
 free(ptr);

 return err;
}
