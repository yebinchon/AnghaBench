
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_recv_completion (int,int) ;

__attribute__((used)) static void do_recv_completions(int fd, int domain)
{
 while (do_recv_completion(fd, domain)) {}
}
