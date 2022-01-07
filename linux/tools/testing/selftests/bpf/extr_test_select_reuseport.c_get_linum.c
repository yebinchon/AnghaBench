
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int CHECK (int,char*,char*,int,int ) ;
 int bpf_map_lookup_elem (int ,int *,int *) ;
 int errno ;
 int index_zero ;
 int linum_map ;

__attribute__((used)) static __u32 get_linum(void)
{
 __u32 linum;
 int err;

 err = bpf_map_lookup_elem(linum_map, &index_zero, &linum);
 CHECK(err == -1, "lookup_elem(linum_map)", "err:%d errno:%d\n",
       err, errno);

 return linum;
}
