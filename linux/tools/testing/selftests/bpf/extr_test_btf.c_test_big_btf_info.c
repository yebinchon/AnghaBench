
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct btf_get_info_test {int str_sec_size; int str_sec; int raw_types; } ;
struct bpf_btf_info {unsigned int btf_size; int btf; } ;
typedef int info_garbage ;
struct TYPE_2__ {scalar_t__ always_log; } ;


 int BTF_LOG_BUF_SIZE ;
 scalar_t__ CHECK (int,char*,...) ;
 TYPE_1__ args ;
 int bpf_load_btf (int *,unsigned int,char*,int ,scalar_t__) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_btf_info*,int*) ;
 char* btf_log_buf ;
 int * btf_raw_create (int *,int ,int ,int ,unsigned int*,int *) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 struct btf_get_info_test* get_info_tests ;
 int hdr_tmpl ;
 int * malloc (unsigned int) ;
 int memset (struct bpf_btf_info*,int ,int) ;
 int ptr_to_u64 (int *) ;
 int stderr ;

__attribute__((used)) static int test_big_btf_info(unsigned int test_num)
{
 const struct btf_get_info_test *test = &get_info_tests[test_num - 1];
 uint8_t *raw_btf = ((void*)0), *user_btf = ((void*)0);
 unsigned int raw_btf_size;
 struct {
  struct bpf_btf_info info;
  uint64_t garbage;
 } info_garbage;
 struct bpf_btf_info *info;
 int btf_fd = -1, err;
 uint32_t info_len;

 raw_btf = btf_raw_create(&hdr_tmpl,
     test->raw_types,
     test->str_sec,
     test->str_sec_size,
     &raw_btf_size, ((void*)0));

 if (!raw_btf)
  return -1;

 *btf_log_buf = '\0';

 user_btf = malloc(raw_btf_size);
 if (CHECK(!user_btf, "!user_btf")) {
  err = -1;
  goto done;
 }

 btf_fd = bpf_load_btf(raw_btf, raw_btf_size,
         btf_log_buf, BTF_LOG_BUF_SIZE,
         args.always_log);
 if (CHECK(btf_fd == -1, "errno:%d", errno)) {
  err = -1;
  goto done;
 }





 info = &info_garbage.info;
 memset(info, 0, sizeof(*info));
 info_garbage.garbage = 0xdeadbeef;
 info_len = sizeof(info_garbage);
 info->btf = ptr_to_u64(user_btf);
 info->btf_size = raw_btf_size;

 err = bpf_obj_get_info_by_fd(btf_fd, info, &info_len);
 if (CHECK(!err, "!err")) {
  err = -1;
  goto done;
 }







 info_garbage.garbage = 0;
 err = bpf_obj_get_info_by_fd(btf_fd, info, &info_len);
 if (CHECK(err || info_len != sizeof(*info),
    "err:%d errno:%d info_len:%u sizeof(*info):%lu",
    err, errno, info_len, sizeof(*info))) {
  err = -1;
  goto done;
 }

 fprintf(stderr, "OK");

done:
 if (*btf_log_buf && (err || args.always_log))
  fprintf(stderr, "\n%s", btf_log_buf);

 free(raw_btf);
 free(user_btf);

 if (btf_fd != -1)
  close(btf_fd);

 return err;
}
