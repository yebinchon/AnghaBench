
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct feat_fd {TYPE_1__* ph; } ;
struct TYPE_2__ {scalar_t__ needs_swap; } ;


 int __do_read (struct feat_fd*,int *,int) ;
 int bswap_64 (int ) ;

__attribute__((used)) static int do_read_u64(struct feat_fd *ff, u64 *addr)
{
 int ret;

 ret = __do_read(ff, addr, sizeof(*addr));
 if (ret)
  return ret;

 if (ff->ph->needs_swap)
  *addr = bswap_64(*addr);
 return 0;
}
