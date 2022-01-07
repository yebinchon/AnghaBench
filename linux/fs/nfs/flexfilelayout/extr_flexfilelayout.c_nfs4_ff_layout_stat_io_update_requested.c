
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_io_stat {int bytes_requested; int ops_requested; } ;
struct nfs4_ff_layoutstat {struct nfs4_ff_io_stat io_stat; } ;
typedef scalar_t__ __u64 ;



__attribute__((used)) static void
nfs4_ff_layout_stat_io_update_requested(struct nfs4_ff_layoutstat *layoutstat,
  __u64 requested)
{
 struct nfs4_ff_io_stat *iostat = &layoutstat->io_stat;

 iostat->ops_requested++;
 iostat->bytes_requested += requested;
}
