
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct FTW {int dummy; } ;
typedef int buf ;
typedef int __u64 ;
typedef int __u32 ;


 int FTW_SKIP_SUBTREE ;
 int bpf_task_fd_query (int,int,int ,char*,int*,int*,int*,int *,int *) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ json_output ;
 int print_perf_json (int,int,int,int,char*,int ,int ) ;
 int print_perf_plain (int,int,int,int,char*,int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int show_proc(const char *fpath, const struct stat *sb,
       int tflag, struct FTW *ftwbuf)
{
 __u64 probe_offset, probe_addr;
 __u32 len, prog_id, fd_type;
 int err, pid = 0, fd = 0;
 const char *pch;
 char buf[4096];


 pch = fpath + 5;
 if (*pch == '\0')
  return 0;


 pch++;
 while (isdigit(*pch)) {
  pid = pid * 10 + *pch - '0';
  pch++;
 }
 if (*pch == '\0')
  return 0;
 if (*pch != '/')
  return FTW_SKIP_SUBTREE;


 pch++;
 if (strncmp(pch, "fd", 2))
  return FTW_SKIP_SUBTREE;
 pch += 2;
 if (*pch == '\0')
  return 0;
 if (*pch != '/')
  return FTW_SKIP_SUBTREE;


 pch++;
 while (isdigit(*pch)) {
  fd = fd * 10 + *pch - '0';
  pch++;
 }
 if (*pch != '\0')
  return FTW_SKIP_SUBTREE;


 len = sizeof(buf);
 err = bpf_task_fd_query(pid, fd, 0, buf, &len, &prog_id, &fd_type,
    &probe_offset, &probe_addr);
 if (err < 0)
  return 0;

 if (json_output)
  print_perf_json(pid, fd, prog_id, fd_type, buf, probe_offset,
    probe_addr);
 else
  print_perf_plain(pid, fd, prog_id, fd_type, buf, probe_offset,
     probe_addr);

 return 0;
}
