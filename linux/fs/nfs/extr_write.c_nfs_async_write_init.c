
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int io_completion; } ;


 int nfs_io_completion_get (int ) ;

__attribute__((used)) static void nfs_async_write_init(struct nfs_pgio_header *hdr)
{
 nfs_io_completion_get(hdr->io_completion);
}
