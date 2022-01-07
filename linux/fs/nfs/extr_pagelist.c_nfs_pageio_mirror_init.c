
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_mirror {unsigned int pg_bsize; scalar_t__ pg_recoalesce; scalar_t__ pg_base; scalar_t__ pg_count; scalar_t__ pg_bytes_written; int pg_list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void nfs_pageio_mirror_init(struct nfs_pgio_mirror *mirror,
       unsigned int bsize)
{
 INIT_LIST_HEAD(&mirror->pg_list);
 mirror->pg_bytes_written = 0;
 mirror->pg_count = 0;
 mirror->pg_bsize = bsize;
 mirror->pg_base = 0;
 mirror->pg_recoalesce = 0;
}
