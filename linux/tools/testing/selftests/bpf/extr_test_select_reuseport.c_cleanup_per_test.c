
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int,char*,char*,int,int ) ;
 int REUSEPORT_ARRAY_SIZE ;
 int bpf_map_delete_elem (int ,int *) ;
 int close (int ) ;
 int epfd ;
 int errno ;
 int index_zero ;
 int outer_map ;
 int * sk_fds ;

__attribute__((used)) static void cleanup_per_test(void)
{
 int i, err;

 for (i = 0; i < REUSEPORT_ARRAY_SIZE; i++)
  close(sk_fds[i]);
 close(epfd);

 err = bpf_map_delete_elem(outer_map, &index_zero);
 CHECK(err == -1, "delete_elem(outer_map)",
       "err:%d errno:%d\n", err, errno);
}
