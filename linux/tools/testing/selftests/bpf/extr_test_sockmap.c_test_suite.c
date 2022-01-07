
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_SOCKHASH_FILENAME ;
 int BPF_SOCKMAP_FILENAME ;
 int __test_suite (int,int ) ;
 int close (int) ;

__attribute__((used)) static int test_suite(int cg_fd)
{
 int err;

 err = __test_suite(cg_fd, BPF_SOCKMAP_FILENAME);
 if (err)
  goto out;
 err = __test_suite(cg_fd, BPF_SOCKHASH_FILENAME);
out:
 if (cg_fd > -1)
  close(cg_fd);
 return err;
}
