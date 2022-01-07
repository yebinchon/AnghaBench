
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int tmp ;
typedef int __u8 ;
typedef int __u32 ;


 int EPERM ;
 scalar_t__ POINTER_VALUE ;
 int TEST_DATA_LEN ;
 int bpf_prog_test_run (int,int,void*,size_t,int *,int*,scalar_t__*,int *) ;
 int errno ;
 int printf (char*,...) ;
 int set_admin (int) ;

__attribute__((used)) static int do_prog_test_run(int fd_prog, bool unpriv, uint32_t expected_val,
       void *data, size_t size_data)
{
 __u8 tmp[TEST_DATA_LEN << 2];
 __u32 size_tmp = sizeof(tmp);
 uint32_t retval;
 int err;

 if (unpriv)
  set_admin(1);
 err = bpf_prog_test_run(fd_prog, 1, data, size_data,
    tmp, &size_tmp, &retval, ((void*)0));
 if (unpriv)
  set_admin(0);
 if (err && errno != 524 && errno != EPERM) {
  printf("Unexpected bpf_prog_test_run error ");
  return err;
 }
 if (!err && retval != expected_val &&
     expected_val != POINTER_VALUE) {
  printf("FAIL retval %d != %d ", retval, expected_val);
  return 1;
 }

 return 0;
}
