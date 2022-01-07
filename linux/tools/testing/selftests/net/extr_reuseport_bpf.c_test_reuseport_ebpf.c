
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_params {int recv_socks; int send_port_min; } ;


 int attach_ebpf (int,int) ;
 int build_recv_group (struct test_params,int*,int,int (*) (int,int)) ;
 int close (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int test_recv_order (struct test_params,int*,int) ;

__attribute__((used)) static void test_reuseport_ebpf(struct test_params p)
{
 int i, fd[p.recv_socks];

 fprintf(stderr, "Testing EBPF mod %zd...\n", p.recv_socks);
 build_recv_group(p, fd, p.recv_socks, attach_ebpf);
 test_recv_order(p, fd, p.recv_socks);

 p.send_port_min += p.recv_socks * 2;
 fprintf(stderr, "Reprograming, testing mod %zd...\n", p.recv_socks / 2);
 attach_ebpf(fd[0], p.recv_socks / 2);
 test_recv_order(p, fd, p.recv_socks / 2);

 for (i = 0; i < p.recv_socks; ++i)
  close(fd[i]);
}
