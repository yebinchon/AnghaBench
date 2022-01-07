
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {int nr_map_ids; scalar_t__ type; int map_ids; } ;
typedef int info ;
typedef int __u64 ;
typedef int __u32 ;


 scalar_t__ BPF_PROG_TYPE_XDP ;
 int bpf_map_get_fd_by_id (int) ;
 scalar_t__ bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 int bpf_prog_get_fd_by_id (int) ;
 int close (int) ;
 int log_err (char*,int) ;

__attribute__((used)) static int get_map_fd_by_prog_id(int prog_id, bool *xdp)
{
 struct bpf_prog_info info = {};
 __u32 info_len = sizeof(info);
 __u32 map_ids[1];
 int prog_fd = -1;
 int map_fd = -1;

 prog_fd = bpf_prog_get_fd_by_id(prog_id);
 if (prog_fd < 0) {
  log_err("Failed to get fd by prog id %d", prog_id);
  goto err;
 }

 info.nr_map_ids = 1;
 info.map_ids = (__u64)(unsigned long)map_ids;

 if (bpf_obj_get_info_by_fd(prog_fd, &info, &info_len)) {
  log_err("Failed to get info by prog fd %d", prog_fd);
  goto err;
 }

 if (!info.nr_map_ids) {
  log_err("No maps found for prog fd %d", prog_fd);
  goto err;
 }

 *xdp = info.type == BPF_PROG_TYPE_XDP;

 map_fd = bpf_map_get_fd_by_id(map_ids[0]);
 if (map_fd < 0)
  log_err("Failed to get fd by map id %d", map_ids[0]);
err:
 if (prog_fd >= 0)
  close(prog_fd);
 return map_fd;
}
