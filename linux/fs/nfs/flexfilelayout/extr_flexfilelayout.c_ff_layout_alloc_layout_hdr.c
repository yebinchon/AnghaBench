
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int dummy; } ;
struct nfs4_flexfile_layout {struct pnfs_layout_hdr generic_hdr; int last_report_time; int mirrors; int error_list; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int ktime_get () ;
 struct nfs4_flexfile_layout* kzalloc (int,int ) ;

__attribute__((used)) static struct pnfs_layout_hdr *
ff_layout_alloc_layout_hdr(struct inode *inode, gfp_t gfp_flags)
{
 struct nfs4_flexfile_layout *ffl;

 ffl = kzalloc(sizeof(*ffl), gfp_flags);
 if (ffl) {
  INIT_LIST_HEAD(&ffl->error_list);
  INIT_LIST_HEAD(&ffl->mirrors);
  ffl->last_report_time = ktime_get();
  return &ffl->generic_hdr;
 } else
  return ((void*)0);
}
