
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ USHRT_MAX ;
 int accept (int,int *,int ) ;
 scalar_t__ bpf_map_lookup_elem (int,scalar_t__*,scalar_t__*) ;
 scalar_t__ bpf_map_update_elem (int,scalar_t__*,scalar_t__*,int ) ;
 int close (int) ;
 int connect_to_server (int) ;
 int log_err (char*,...) ;
 int printf (char*) ;

__attribute__((used)) static int run_test(int server_fd, int results_fd, bool xdp)
{
 int client = -1, srv_client = -1;
 int ret = 0;
 __u32 key = 0;
 __u32 key_gen = 1;
 __u32 key_mss = 2;
 __u32 value = 0;
 __u32 value_gen = 0;
 __u32 value_mss = 0;

 if (bpf_map_update_elem(results_fd, &key, &value, 0) < 0) {
  log_err("Can't clear results");
  goto err;
 }

 if (bpf_map_update_elem(results_fd, &key_gen, &value_gen, 0) < 0) {
  log_err("Can't clear results");
  goto err;
 }

 if (bpf_map_update_elem(results_fd, &key_mss, &value_mss, 0) < 0) {
  log_err("Can't clear results");
  goto err;
 }

 client = connect_to_server(server_fd);
 if (client == -1)
  goto err;

 srv_client = accept(server_fd, ((void*)0), 0);
 if (srv_client == -1) {
  log_err("Can't accept connection");
  goto err;
 }

 if (bpf_map_lookup_elem(results_fd, &key, &value) < 0) {
  log_err("Can't lookup result");
  goto err;
 }

 if (value == 0) {
  log_err("Didn't match syncookie: %u", value);
  goto err;
 }

 if (bpf_map_lookup_elem(results_fd, &key_gen, &value_gen) < 0) {
  log_err("Can't lookup result");
  goto err;
 }

 if (xdp && value_gen == 0) {


  printf("Skipping XDP cookie check\n");
  goto out;
 }

 if (bpf_map_lookup_elem(results_fd, &key_mss, &value_mss) < 0) {
  log_err("Can't lookup result");
  goto err;
 }

 if (value != value_gen) {
  log_err("BPF generated cookie does not match kernel one");
  goto err;
 }

 if (value_mss < 536 || value_mss > USHRT_MAX) {
  log_err("Unexpected MSS retrieved");
  goto err;
 }

 goto out;

err:
 ret = 1;
out:
 close(client);
 close(srv_client);
 return ret;
}
