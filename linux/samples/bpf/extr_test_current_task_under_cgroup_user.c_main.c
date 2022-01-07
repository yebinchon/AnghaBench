
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int filename ;


 int BPF_ANY ;
 char* CGROUP_PATH ;
 char* bpf_log_buf ;
 int bpf_map_lookup_elem (int ,int*,scalar_t__*) ;
 scalar_t__ bpf_map_update_elem (int ,int*,...) ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ getpid () ;
 scalar_t__ join_cgroup (char*) ;
 scalar_t__ load_bpf_file (char*) ;
 int log_err (char*) ;
 int * map_fd ;
 int printf (char*,char*) ;
 scalar_t__ setup_cgroup_environment () ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int sync () ;

int main(int argc, char **argv)
{
 pid_t remote_pid, local_pid = getpid();
 int cg2, idx = 0, rc = 0;
 char filename[256];

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 if (setup_cgroup_environment())
  goto err;

 cg2 = create_and_get_cgroup(CGROUP_PATH);

 if (cg2 < 0)
  goto err;

 if (bpf_map_update_elem(map_fd[0], &idx, &cg2, BPF_ANY)) {
  log_err("Adding target cgroup to map");
  goto err;
 }

 if (join_cgroup(CGROUP_PATH))
  goto err;






 sync();
 bpf_map_lookup_elem(map_fd[1], &idx, &remote_pid);

 if (local_pid != remote_pid) {
  fprintf(stderr,
   "BPF Helper didn't write correct PID to map, but: %d\n",
   remote_pid);
  goto err;
 }


 if (join_cgroup("/"))
  goto err;

 remote_pid = 0;
 bpf_map_update_elem(map_fd[1], &idx, &remote_pid, BPF_ANY);

 sync();
 bpf_map_lookup_elem(map_fd[1], &idx, &remote_pid);

 if (local_pid == remote_pid) {
  fprintf(stderr, "BPF cgroup negative test did not work\n");
  goto err;
 }

 goto out;
err:
 rc = 1;

out:
 close(cg2);
 cleanup_cgroup_environment();
 return rc;
}
