
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int BPF_CGROUP_INET_EGRESS ;
 int BPF_F_ALLOW_MULTI ;
 int BPF_F_ALLOW_OVERRIDE ;
 int BPF_F_QUERY_EFFECTIVE ;
 scalar_t__ ENOSPC ;
 int PING_CMD ;
 int assert (int) ;
 scalar_t__ bpf_map_lookup_elem (int ,int*,unsigned long long*) ;
 scalar_t__ bpf_map_update_elem (int ,int*,unsigned long long*,int ) ;
 scalar_t__ bpf_prog_attach (int,int,int ,int ) ;
 scalar_t__ bpf_prog_detach2 (int,int,int ) ;
 int bpf_prog_query (int,int ,int ,int*,int*,int*) ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (char*) ;
 scalar_t__ errno ;
 scalar_t__ join_cgroup (char*) ;
 int log_err (char*) ;
 int map_fd ;
 int printf (char*) ;
 int prog_load_cnt (int,int) ;
 scalar_t__ setup_cgroup_environment () ;
 scalar_t__ system (int ) ;

__attribute__((used)) static int test_multiprog(void)
{
 __u32 prog_ids[4], prog_cnt = 0, attach_flags, saved_prog_id;
 int cg1 = 0, cg2 = 0, cg3 = 0, cg4 = 0, cg5 = 0, key = 0;
 int drop_prog, allow_prog[6] = {}, rc = 0;
 unsigned long long value;
 int i = 0;

 for (i = 0; i < 6; i++) {
  allow_prog[i] = prog_load_cnt(1, 1 << i);
  if (!allow_prog[i])
   goto err;
 }
 drop_prog = prog_load_cnt(0, 1);
 if (!drop_prog)
  goto err;

 if (setup_cgroup_environment())
  goto err;

 cg1 = create_and_get_cgroup("/cg1");
 if (cg1 < 0)
  goto err;
 cg2 = create_and_get_cgroup("/cg1/cg2");
 if (cg2 < 0)
  goto err;
 cg3 = create_and_get_cgroup("/cg1/cg2/cg3");
 if (cg3 < 0)
  goto err;
 cg4 = create_and_get_cgroup("/cg1/cg2/cg3/cg4");
 if (cg4 < 0)
  goto err;
 cg5 = create_and_get_cgroup("/cg1/cg2/cg3/cg4/cg5");
 if (cg5 < 0)
  goto err;

 if (join_cgroup("/cg1/cg2/cg3/cg4/cg5"))
  goto err;

 if (bpf_prog_attach(allow_prog[0], cg1, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_MULTI)) {
  log_err("Attaching prog to cg1");
  goto err;
 }
 if (!bpf_prog_attach(allow_prog[0], cg1, BPF_CGROUP_INET_EGRESS,
        BPF_F_ALLOW_MULTI)) {
  log_err("Unexpected success attaching the same prog to cg1");
  goto err;
 }
 if (bpf_prog_attach(allow_prog[1], cg1, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_MULTI)) {
  log_err("Attaching prog2 to cg1");
  goto err;
 }
 if (bpf_prog_attach(allow_prog[2], cg2, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_OVERRIDE)) {
  log_err("Attaching prog to cg2");
  goto err;
 }
 if (bpf_prog_attach(allow_prog[3], cg3, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_MULTI)) {
  log_err("Attaching prog to cg3");
  goto err;
 }
 if (bpf_prog_attach(allow_prog[4], cg4, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_OVERRIDE)) {
  log_err("Attaching prog to cg4");
  goto err;
 }
 if (bpf_prog_attach(allow_prog[5], cg5, BPF_CGROUP_INET_EGRESS, 0)) {
  log_err("Attaching prog to cg5");
  goto err;
 }
 assert(system(PING_CMD) == 0);
 assert(bpf_map_lookup_elem(map_fd, &key, &value) == 0);
 assert(value == 1 + 2 + 8 + 32);


 assert(bpf_prog_query(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
         ((void*)0), ((void*)0), &prog_cnt) == 0);
 assert(prog_cnt == 4);

 assert(bpf_prog_query(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
         &attach_flags, prog_ids, &prog_cnt) == 0);
 assert(prog_cnt == 4);
 assert(attach_flags == 0);
 saved_prog_id = prog_ids[0];

 prog_ids[0] = 0;
 prog_cnt = 2;
 assert(bpf_prog_query(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
         &attach_flags, prog_ids, &prog_cnt) == -1 &&
        errno == ENOSPC);
 assert(prog_cnt == 4);

 assert(prog_ids[0] == saved_prog_id);

 prog_ids[0] = 0;
 assert(bpf_prog_query(cg5, BPF_CGROUP_INET_EGRESS, 0,
         ((void*)0), prog_ids, &prog_cnt) == 0);
 assert(prog_cnt == 1);
 assert(prog_ids[0] == saved_prog_id);


 if (bpf_prog_detach2(-1, cg5, BPF_CGROUP_INET_EGRESS)) {
  log_err("Detaching prog from cg5");
  goto err;
 }
 value = 0;
 assert(bpf_map_update_elem(map_fd, &key, &value, 0) == 0);
 assert(system(PING_CMD) == 0);
 assert(bpf_map_lookup_elem(map_fd, &key, &value) == 0);
 assert(value == 1 + 2 + 8 + 16);


 errno = 0;
 if (!bpf_prog_detach2(0, cg3, BPF_CGROUP_INET_EGRESS)) {
  log_err("Unexpected success on detach from cg3");
  goto err;
 }
 if (bpf_prog_detach2(allow_prog[3], cg3, BPF_CGROUP_INET_EGRESS)) {
  log_err("Detaching from cg3");
  goto err;
 }
 value = 0;
 assert(bpf_map_update_elem(map_fd, &key, &value, 0) == 0);
 assert(system(PING_CMD) == 0);
 assert(bpf_map_lookup_elem(map_fd, &key, &value) == 0);
 assert(value == 1 + 2 + 16);


 if (bpf_prog_detach2(-1, cg4, BPF_CGROUP_INET_EGRESS)) {
  log_err("Detaching prog from cg4");
  goto err;
 }
 value = 0;
 assert(bpf_map_update_elem(map_fd, &key, &value, 0) == 0);
 assert(system(PING_CMD) == 0);
 assert(bpf_map_lookup_elem(map_fd, &key, &value) == 0);
 assert(value == 1 + 2 + 4);

 prog_cnt = 4;
 assert(bpf_prog_query(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
         &attach_flags, prog_ids, &prog_cnt) == 0);
 assert(prog_cnt == 3);
 assert(attach_flags == 0);
 assert(bpf_prog_query(cg5, BPF_CGROUP_INET_EGRESS, 0,
         ((void*)0), prog_ids, &prog_cnt) == 0);
 assert(prog_cnt == 0);
 goto out;
err:
 rc = 1;

out:
 for (i = 0; i < 6; i++)
  if (allow_prog[i] > 0)
   close(allow_prog[i]);
 close(cg1);
 close(cg2);
 close(cg3);
 close(cg4);
 close(cg5);
 cleanup_cgroup_environment();
 if (!rc)
  printf("#multi:PASS\n");
 else
  printf("#multi:FAIL\n");
 return rc;
}
