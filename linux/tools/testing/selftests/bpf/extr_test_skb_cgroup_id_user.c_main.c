
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_PATH ;
 int EXIT_FAILURE ;
 int atoi (char*) ;
 scalar_t__ check_ancestor_cgroup_ids (int ) ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ join_cgroup (int ) ;
 int printf (char*,char*) ;
 scalar_t__ send_packet (char*) ;
 scalar_t__ setup_cgroup_environment () ;
 int stderr ;

int main(int argc, char **argv)
{
 int cgfd = -1;
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "Usage: %s iface prog_id\n", argv[0]);
  exit(EXIT_FAILURE);
 }

 if (setup_cgroup_environment())
  goto err;

 cgfd = create_and_get_cgroup(CGROUP_PATH);
 if (cgfd < 0)
  goto err;

 if (join_cgroup(CGROUP_PATH))
  goto err;

 if (send_packet(argv[1]))
  goto err;

 if (check_ancestor_cgroup_ids(atoi(argv[2])))
  goto err;

 goto out;
err:
 err = -1;
out:
 close(cgfd);
 cleanup_cgroup_environment();
 printf("[%s]\n", err ? "FAIL" : "PASS");
 return err;
}
