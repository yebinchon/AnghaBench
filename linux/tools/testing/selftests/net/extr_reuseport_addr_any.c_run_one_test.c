
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int build_rcv_fd (int,int,int*,int,char const*) ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test (int*,int,int,int,int) ;

__attribute__((used)) static void run_one_test(int fam_send, int fam_rcv, int proto,
    const char *addr_str)
{







 int rcv_fds[10], i;

 build_rcv_fd(AF_INET, proto, rcv_fds, 2, ((void*)0));
 build_rcv_fd(AF_INET6, proto, rcv_fds + 2, 2, ((void*)0));
 build_rcv_fd(fam_rcv, proto, rcv_fds + 4, 1, addr_str);
 build_rcv_fd(AF_INET, proto, rcv_fds + 5, 2, ((void*)0));
 build_rcv_fd(AF_INET6, proto, rcv_fds + 7, 2, ((void*)0));
 test(rcv_fds, 9, fam_send, proto, rcv_fds[4]);
 for (i = 0; i < 9; ++i)
  close(rcv_fds[i]);
 fprintf(stderr, "pass\n");
}
