
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
typedef int socklen_t ;
typedef int __u8 ;


 int IP_TOS ;
 int SOL_IP ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int log_err (char*,...) ;
 int prog_attach (struct bpf_object*,int,char*) ;
 int prog_detach (struct bpf_object*,int,char*) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int run_getsockopt_test(struct bpf_object *obj, int cg_parent,
          int cg_child, int sock_fd)
{
 socklen_t optlen;
 __u8 buf;
 int err;



 buf = 0x80;
 err = setsockopt(sock_fd, SOL_IP, IP_TOS, &buf, 1);
 if (err < 0) {
  log_err("Failed to call setsockopt(IP_TOS)");
  goto detach;
 }

 buf = 0x00;
 optlen = 1;
 err = getsockopt(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
 if (err) {
  log_err("Failed to call getsockopt(IP_TOS)");
  goto detach;
 }

 if (buf != 0x80) {
  log_err("Unexpected getsockopt 0x%x != 0x80 without BPF", buf);
  err = -1;
  goto detach;
 }






 err = prog_attach(obj, cg_child, "cgroup/getsockopt/child");
 if (err)
  goto detach;

 buf = 0x00;
 optlen = 1;
 err = getsockopt(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
 if (err) {
  log_err("Failed to call getsockopt(IP_TOS)");
  goto detach;
 }

 if (buf != 0x90) {
  log_err("Unexpected getsockopt 0x%x != 0x90", buf);
  err = -1;
  goto detach;
 }







 err = prog_attach(obj, cg_parent, "cgroup/getsockopt/parent");
 if (err)
  goto detach;

 buf = 0x00;
 optlen = 1;
 err = getsockopt(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
 if (err) {
  log_err("Failed to call getsockopt(IP_TOS)");
  goto detach;
 }

 if (buf != 0xA0) {
  log_err("Unexpected getsockopt 0x%x != 0xA0", buf);
  err = -1;
  goto detach;
 }







 buf = 0x40;
 if (setsockopt(sock_fd, SOL_IP, IP_TOS, &buf, 1) < 0) {
  log_err("Failed to call setsockopt(IP_TOS)");
  goto detach;
 }

 buf = 0x00;
 optlen = 1;
 err = getsockopt(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
 if (!err) {
  log_err("Unexpected success from getsockopt(IP_TOS)");
  goto detach;
 }






 err = prog_detach(obj, cg_child, "cgroup/getsockopt/child");
 if (err) {
  log_err("Failed to detach child program");
  goto detach;
 }

 buf = 0x00;
 optlen = 1;
 err = getsockopt(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
 if (!err) {
  log_err("Unexpected success from getsockopt(IP_TOS)");
  goto detach;
 }






 buf = 0x90;
 err = setsockopt(sock_fd, SOL_IP, IP_TOS, &buf, 1);
 if (err < 0) {
  log_err("Failed to call setsockopt(IP_TOS)");
  goto detach;
 }

 buf = 0x00;
 optlen = 1;
 err = getsockopt(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
 if (err) {
  log_err("Failed to call getsockopt(IP_TOS)");
  goto detach;
 }

 if (buf != 0xA0) {
  log_err("Unexpected getsockopt 0x%x != 0xA0", buf);
  err = -1;
  goto detach;
 }

detach:
 prog_detach(obj, cg_child, "cgroup/getsockopt/child");
 prog_detach(obj, cg_parent, "cgroup/getsockopt/parent");

 return err;
}
