
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int pg_mirror_count; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline bool nfs_pgio_has_mirroring(struct nfs_pageio_descriptor *desc)
{
 WARN_ON_ONCE(desc->pg_mirror_count < 1);
 return desc->pg_mirror_count > 1;
}
