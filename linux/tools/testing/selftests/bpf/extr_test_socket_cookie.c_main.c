
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_PATH ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (int ) ;
 scalar_t__ join_cgroup (int ) ;
 scalar_t__ run_test (int) ;
 scalar_t__ setup_cgroup_environment () ;

int main(int argc, char **argv)
{
 int cgfd = -1;
 int err = 0;

 if (setup_cgroup_environment())
  goto err;

 cgfd = create_and_get_cgroup(CG_PATH);
 if (cgfd < 0)
  goto err;

 if (join_cgroup(CG_PATH))
  goto err;

 if (run_test(cgfd))
  goto err;

 goto out;
err:
 err = -1;
out:
 close(cgfd);
 cleanup_cgroup_environment();
 return err;
}
