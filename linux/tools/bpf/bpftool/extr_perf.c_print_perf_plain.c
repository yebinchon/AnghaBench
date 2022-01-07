
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;
 int printf (char*,...) ;

__attribute__((used)) static void print_perf_plain(int pid, int fd, __u32 prog_id, __u32 fd_type,
        char *buf, __u64 probe_offset, __u64 probe_addr)
{
 printf("pid %d  fd %d: prog_id %u  ", pid, fd, prog_id);
 switch (fd_type) {
 case 131:
  printf("raw_tracepoint  %s\n", buf);
  break;
 case 130:
  printf("tracepoint  %s\n", buf);
  break;
 case 133:
  if (buf[0] != '\0')
   printf("kprobe  func %s  offset %llu\n", buf,
          probe_offset);
  else
   printf("kprobe  addr %llu\n", probe_addr);
  break;
 case 132:
  if (buf[0] != '\0')
   printf("kretprobe  func %s  offset %llu\n", buf,
          probe_offset);
  else
   printf("kretprobe  addr %llu\n", probe_addr);
  break;
 case 129:
  printf("uprobe  filename %s  offset %llu\n", buf, probe_offset);
  break;
 case 128:
  printf("uretprobe  filename %s  offset %llu\n", buf,
         probe_offset);
  break;
 default:
  break;
 }
}
