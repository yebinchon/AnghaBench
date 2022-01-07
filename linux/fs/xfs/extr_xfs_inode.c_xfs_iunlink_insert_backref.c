
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pagi_unlinked_hash; } ;
struct xfs_iunlink {int iu_rhash_head; } ;


 int EEXIST ;
 int ENOMEM ;
 int WARN (int,char*,int) ;
 int kmem_free (struct xfs_iunlink*) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int xfs_iunlink_hash_params ;

__attribute__((used)) static int
xfs_iunlink_insert_backref(
 struct xfs_perag *pag,
 struct xfs_iunlink *iu)
{
 int error;

 error = rhashtable_insert_fast(&pag->pagi_unlinked_hash,
   &iu->iu_rhash_head, xfs_iunlink_hash_params);






 if (error) {
  WARN(error != -ENOMEM, "iunlink cache insert error %d", error);
  kmem_free(iu);
 }




 if (error != 0 && error != -EEXIST)
  error = 0;
 return error;
}
