
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_0; int member_1; } ;
typedef int filename ;
typedef int buf ;
typedef int __u64 ;


 int BPF_FD_TYPE_KPROBE ;
 int BPF_FD_TYPE_KRETPROBE ;
 int BPF_FD_TYPE_UPROBE ;
 int BPF_FD_TYPE_URETPROBE ;
 int CHECK_AND_RET (int ) ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 char* bpf_log_buf ;
 int ksym_get_addr (char*) ;
 scalar_t__ load_bpf_file (char*) ;
 scalar_t__ load_kallsyms () ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int snprintf (char*,int,char*,char*) ;
 int test_debug_fs_kprobe (int,char*,int ) ;
 int test_debug_fs_uprobe (char*,int,int) ;
 int test_nondebug_fs_probe (char*,char*,int,int,int,int ,int ,char*,int) ;

int main(int argc, char **argv)
{
 struct rlimit r = {1024*1024, RLIM_INFINITY};
 extern char __executable_start;
 char filename[256], buf[256];
 __u64 uprobe_file_offset;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return 1;
 }

 if (load_kallsyms()) {
  printf("failed to process /proc/kallsyms\n");
  return 1;
 }

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }


 CHECK_AND_RET(test_debug_fs_kprobe(0, "blk_mq_start_request",
        BPF_FD_TYPE_KPROBE));
 CHECK_AND_RET(test_debug_fs_kprobe(1, "blk_account_io_completion",
        BPF_FD_TYPE_KRETPROBE));


 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", "bpf_check", 0x0, 0x0,
          0, BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          buf, sizeof(buf)));


 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", "bpf_check", 0x5, 0x0,
          0, BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          buf, sizeof(buf)));

 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", "bpf_check", 0x0, 0x0,
          1, BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          buf, sizeof(buf)));
 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", ((void*)0), 0x0,
          ksym_get_addr("bpf_check"), 0,
          BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          buf, sizeof(buf)));
 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", ((void*)0), 0x0,
          ksym_get_addr("bpf_check"), 0,
          BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          ((void*)0), 0));
 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", ((void*)0), 0x0,
          ksym_get_addr("bpf_check"), 1,
          BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          buf, sizeof(buf)));
 CHECK_AND_RET(test_nondebug_fs_probe("kprobe", ((void*)0), 0x0,
          ksym_get_addr("bpf_check"), 1,
          BPF_FD_TYPE_KPROBE,
          BPF_FD_TYPE_KRETPROBE,
          0, 0));
 uprobe_file_offset = (__u64)main - (__u64)&__executable_start;
 CHECK_AND_RET(test_nondebug_fs_probe("uprobe", (char *)argv[0],
          uprobe_file_offset, 0x0, 0,
          BPF_FD_TYPE_UPROBE,
          BPF_FD_TYPE_URETPROBE,
          buf, sizeof(buf)));
 CHECK_AND_RET(test_nondebug_fs_probe("uprobe", (char *)argv[0],
          uprobe_file_offset, 0x0, 1,
          BPF_FD_TYPE_UPROBE,
          BPF_FD_TYPE_URETPROBE,
          buf, sizeof(buf)));


 CHECK_AND_RET(test_debug_fs_uprobe((char *)argv[0], uprobe_file_offset,
        0));
 CHECK_AND_RET(test_debug_fs_uprobe((char *)argv[0], uprobe_file_offset,
        1));

 return 0;
}
