
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; } ;
typedef int ntfschar ;
struct TYPE_6__ {scalar_t__ type; int name_len; int name; } ;
typedef TYPE_1__ ntfs_inode ;
struct TYPE_7__ {scalar_t__ mft_no; scalar_t__ type; int name_len; int name; } ;
typedef TYPE_2__ ntfs_attr ;


 scalar_t__ AT_UNUSED ;
 int NInoAttr (TYPE_1__*) ;
 TYPE_1__* NTFS_I (struct inode*) ;
 scalar_t__ likely (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ unlikely (int) ;

int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
{
 ntfs_inode *ni;

 if (vi->i_ino != na->mft_no)
  return 0;
 ni = NTFS_I(vi);

 if (likely(!NInoAttr(ni))) {

  if (unlikely(na->type != AT_UNUSED))
   return 0;
 } else {

  if (ni->type != na->type)
   return 0;
  if (ni->name_len != na->name_len)
   return 0;
  if (na->name_len && memcmp(ni->name, na->name,
    na->name_len * sizeof(ntfschar)))
   return 0;
 }

 return 1;
}
