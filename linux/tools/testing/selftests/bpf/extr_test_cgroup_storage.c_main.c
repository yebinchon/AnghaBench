
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct bpf_insn {int imm; } ;
struct bpf_cgroup_storage_key {int dummy; } ;
typedef int prog ;
typedef int key ;


 int BPF_ADD ;
 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 int BPF_AND ;
 int BPF_CALL ;
 int BPF_CGROUP_INET_EGRESS ;
 int BPF_DW ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_FUNC_get_local_storage ;
 int BPF_JMP ;
 struct bpf_insn BPF_LDX_MEM (int ,int ,int ,int ) ;
 struct bpf_insn BPF_LD_MAP_FD (int ,int ) ;
 int BPF_LOG_BUF_SIZE ;
 int BPF_MAP_TYPE_CGROUP_STORAGE ;
 int BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE ;
 struct bpf_insn BPF_MOV64_IMM (int ,int) ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 int BPF_PROG_TYPE_CGROUP_SKB ;
 struct bpf_insn BPF_RAW_INSN (int,int ,int ,int ,int ) ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_2 ;
 int BPF_REG_3 ;
 struct bpf_insn BPF_STX_MEM (int ,int ,int ,int ) ;
 struct bpf_insn BPF_STX_XADD (int ,int ,int ,int ) ;
 int EXIT_FAILURE ;
 int TEST_CGROUP ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int ,int ) ;
 int bpf_load_program (int ,struct bpf_insn*,size_t,char*,int ,char*,int ) ;
 char* bpf_log_buf ;
 scalar_t__ bpf_map_get_next_key (int,int *,struct bpf_cgroup_storage_key*) ;
 scalar_t__ bpf_map_lookup_elem (int,struct bpf_cgroup_storage_key*,unsigned long long*) ;
 scalar_t__ bpf_map_update_elem (int,struct bpf_cgroup_storage_key*,unsigned long long*,int ) ;
 scalar_t__ bpf_prog_attach (int,int,int ,int ) ;
 int cleanup_cgroup_environment () ;
 int create_and_get_cgroup (int ) ;
 int errno ;
 int free (unsigned long long*) ;
 int get_nprocs_conf () ;
 scalar_t__ join_cgroup (int ) ;
 unsigned long long* malloc (int) ;
 int printf (char*,...) ;
 scalar_t__ setup_cgroup_environment () ;
 char* strerror (int ) ;
 int system (char*) ;

int main(int argc, char **argv)
{
 struct bpf_insn prog[] = {
  BPF_LD_MAP_FD(BPF_REG_1, 0),
  BPF_MOV64_IMM(BPF_REG_2, 0),
  BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0,
        BPF_FUNC_get_local_storage),
  BPF_LDX_MEM(BPF_DW, BPF_REG_3, BPF_REG_0, 0),
  BPF_ALU64_IMM(BPF_ADD, BPF_REG_3, 0x1),
  BPF_STX_MEM(BPF_DW, BPF_REG_0, BPF_REG_3, 0),

  BPF_LD_MAP_FD(BPF_REG_1, 0),
  BPF_MOV64_IMM(BPF_REG_2, 0),
  BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0,
        BPF_FUNC_get_local_storage),
  BPF_MOV64_IMM(BPF_REG_1, 1),
  BPF_STX_XADD(BPF_DW, BPF_REG_0, BPF_REG_1, 0),
  BPF_LDX_MEM(BPF_DW, BPF_REG_1, BPF_REG_0, 0),
  BPF_ALU64_IMM(BPF_AND, BPF_REG_1, 0x1),
  BPF_MOV64_REG(BPF_REG_0, BPF_REG_1),
  BPF_EXIT_INSN(),
 };
 size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);
 int error = EXIT_FAILURE;
 int map_fd, percpu_map_fd, prog_fd, cgroup_fd;
 struct bpf_cgroup_storage_key key;
 unsigned long long value;
 unsigned long long *percpu_value;
 int cpu, nproc;

 nproc = get_nprocs_conf();
 percpu_value = malloc(sizeof(*percpu_value) * nproc);
 if (!percpu_value) {
  printf("Not enough memory for per-cpu area (%d cpus)\n", nproc);
  goto err;
 }

 map_fd = bpf_create_map(BPF_MAP_TYPE_CGROUP_STORAGE, sizeof(key),
    sizeof(value), 0, 0);
 if (map_fd < 0) {
  printf("Failed to create map: %s\n", strerror(errno));
  goto out;
 }

 percpu_map_fd = bpf_create_map(BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE,
           sizeof(key), sizeof(value), 0, 0);
 if (percpu_map_fd < 0) {
  printf("Failed to create map: %s\n", strerror(errno));
  goto out;
 }

 prog[0].imm = percpu_map_fd;
 prog[7].imm = map_fd;
 prog_fd = bpf_load_program(BPF_PROG_TYPE_CGROUP_SKB,
       prog, insns_cnt, "GPL", 0,
       bpf_log_buf, BPF_LOG_BUF_SIZE);
 if (prog_fd < 0) {
  printf("Failed to load bpf program: %s\n", bpf_log_buf);
  goto out;
 }

 if (setup_cgroup_environment()) {
  printf("Failed to setup cgroup environment\n");
  goto err;
 }


 cgroup_fd = create_and_get_cgroup(TEST_CGROUP);
 if (cgroup_fd < 0) {
  printf("Failed to create test cgroup\n");
  goto err;
 }

 if (join_cgroup(TEST_CGROUP)) {
  printf("Failed to join cgroup\n");
  goto err;
 }


 if (bpf_prog_attach(prog_fd, cgroup_fd, BPF_CGROUP_INET_EGRESS, 0)) {
  printf("Failed to attach bpf program\n");
  goto err;
 }

 if (bpf_map_get_next_key(map_fd, ((void*)0), &key)) {
  printf("Failed to get the first key in cgroup storage\n");
  goto err;
 }

 if (bpf_map_lookup_elem(map_fd, &key, &value)) {
  printf("Failed to lookup cgroup storage 0\n");
  goto err;
 }

 for (cpu = 0; cpu < nproc; cpu++)
  percpu_value[cpu] = 1000;

 if (bpf_map_update_elem(percpu_map_fd, &key, percpu_value, 0)) {
  printf("Failed to update the data in the cgroup storage\n");
  goto err;
 }


 assert(system("ping localhost -c 1 -W 1 -q > /dev/null") == 0);
 assert(system("ping localhost -c 1 -W 1 -q > /dev/null"));
 assert(system("ping localhost -c 1 -W 1 -q > /dev/null") == 0);


 if (bpf_map_lookup_elem(map_fd, &key, &value)) {
  printf("Failed to lookup cgroup storage\n");
  goto err;
 }

 if (value != 3) {
  printf("Unexpected data in the cgroup storage: %llu\n", value);
  goto err;
 }


 value++;
 if (bpf_map_update_elem(map_fd, &key, &value, 0)) {
  printf("Failed to update the data in the cgroup storage\n");
  goto err;
 }


 assert(system("ping localhost -c 1 -W 1 -q > /dev/null") == 0);
 assert(system("ping localhost -c 1 -W 1 -q > /dev/null"));
 assert(system("ping localhost -c 1 -W 1 -q > /dev/null") == 0);


 if (bpf_map_lookup_elem(map_fd, &key, &value)) {
  printf("Failed to lookup the cgroup storage\n");
  goto err;
 }

 if (value != 7) {
  printf("Unexpected data in the cgroup storage: %llu\n", value);
  goto err;
 }



 for (cpu = 0; cpu < nproc; cpu++)
  percpu_value[cpu] = 0;

 if (bpf_map_lookup_elem(percpu_map_fd, &key, percpu_value)) {
  printf("Failed to lookup the per-cpu cgroup storage\n");
  goto err;
 }

 value = 0;
 for (cpu = 0; cpu < nproc; cpu++)
  value += percpu_value[cpu];

 if (value != nproc * 1000 + 6) {
  printf("Unexpected data in the per-cpu cgroup storage\n");
  goto err;
 }

 error = 0;
 printf("test_cgroup_storage:PASS\n");

err:
 cleanup_cgroup_environment();
 free(percpu_value);

out:
 return error;
}
