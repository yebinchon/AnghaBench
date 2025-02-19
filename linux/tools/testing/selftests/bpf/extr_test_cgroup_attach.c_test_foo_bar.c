
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAR ;
 int BPF_CGROUP_INET_EGRESS ;
 int BPF_F_ALLOW_OVERRIDE ;
 int FOO ;
 int PING_CMD ;
 int assert (int) ;
 scalar_t__ bpf_prog_attach (int,int,int ,int ) ;
 scalar_t__ bpf_prog_detach (int,int ) ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (int ) ;
 int debug (char*) ;
 scalar_t__ errno ;
 scalar_t__ join_cgroup (int ) ;
 int log_err (char*) ;
 int printf (char*) ;
 int prog_load (int) ;
 scalar_t__ setup_cgroup_environment () ;
 scalar_t__ system (int ) ;

__attribute__((used)) static int test_foo_bar(void)
{
 int drop_prog, allow_prog, foo = 0, bar = 0, rc = 0;

 allow_prog = prog_load(1);
 if (!allow_prog)
  goto err;

 drop_prog = prog_load(0);
 if (!drop_prog)
  goto err;

 if (setup_cgroup_environment())
  goto err;


 foo = create_and_get_cgroup(FOO);
 if (foo < 0)
  goto err;

 if (join_cgroup(FOO))
  goto err;

 if (bpf_prog_attach(drop_prog, foo, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_OVERRIDE)) {
  log_err("Attaching prog to /foo");
  goto err;
 }

 debug("Attached DROP prog. This ping in cgroup /foo should fail...\n");
 assert(system(PING_CMD) != 0);


 bar = create_and_get_cgroup(BAR);
 if (bar < 0)
  goto err;

 if (join_cgroup(BAR))
  goto err;

 debug("Attached DROP prog. This ping in cgroup /foo/bar should fail...\n");
 assert(system(PING_CMD) != 0);

 if (bpf_prog_attach(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_OVERRIDE)) {
  log_err("Attaching prog to /foo/bar");
  goto err;
 }

 debug("Attached PASS prog. This ping in cgroup /foo/bar should pass...\n");
 assert(system(PING_CMD) == 0);

 if (bpf_prog_detach(bar, BPF_CGROUP_INET_EGRESS)) {
  log_err("Detaching program from /foo/bar");
  goto err;
 }

 debug("Detached PASS from /foo/bar while DROP is attached to /foo.\n"
        "This ping in cgroup /foo/bar should fail...\n");
 assert(system(PING_CMD) != 0);

 if (bpf_prog_attach(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_OVERRIDE)) {
  log_err("Attaching prog to /foo/bar");
  goto err;
 }

 if (bpf_prog_detach(foo, BPF_CGROUP_INET_EGRESS)) {
  log_err("Detaching program from /foo");
  goto err;
 }

 debug("Attached PASS from /foo/bar and detached DROP from /foo.\n"
        "This ping in cgroup /foo/bar should pass...\n");
 assert(system(PING_CMD) == 0);

 if (bpf_prog_attach(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
       BPF_F_ALLOW_OVERRIDE)) {
  log_err("Attaching prog to /foo/bar");
  goto err;
 }

 if (!bpf_prog_attach(allow_prog, bar, BPF_CGROUP_INET_EGRESS, 0)) {
  errno = 0;
  log_err("Unexpected success attaching prog to /foo/bar");
  goto err;
 }

 if (bpf_prog_detach(bar, BPF_CGROUP_INET_EGRESS)) {
  log_err("Detaching program from /foo/bar");
  goto err;
 }

 if (!bpf_prog_detach(foo, BPF_CGROUP_INET_EGRESS)) {
  errno = 0;
  log_err("Unexpected success in double detach from /foo");
  goto err;
 }

 if (bpf_prog_attach(allow_prog, foo, BPF_CGROUP_INET_EGRESS, 0)) {
  log_err("Attaching non-overridable prog to /foo");
  goto err;
 }

 if (!bpf_prog_attach(allow_prog, bar, BPF_CGROUP_INET_EGRESS, 0)) {
  errno = 0;
  log_err("Unexpected success attaching non-overridable prog to /foo/bar");
  goto err;
 }

 if (!bpf_prog_attach(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
        BPF_F_ALLOW_OVERRIDE)) {
  errno = 0;
  log_err("Unexpected success attaching overridable prog to /foo/bar");
  goto err;
 }

 if (!bpf_prog_attach(allow_prog, foo, BPF_CGROUP_INET_EGRESS,
        BPF_F_ALLOW_OVERRIDE)) {
  errno = 0;
  log_err("Unexpected success attaching overridable prog to /foo");
  goto err;
 }

 if (bpf_prog_attach(drop_prog, foo, BPF_CGROUP_INET_EGRESS, 0)) {
  log_err("Attaching different non-overridable prog to /foo");
  goto err;
 }

 goto out;

err:
 rc = 1;

out:
 close(foo);
 close(bar);
 cleanup_cgroup_environment();
 if (!rc)
  printf("#override:PASS\n");
 else
  printf("#override:FAIL\n");
 return rc;
}
