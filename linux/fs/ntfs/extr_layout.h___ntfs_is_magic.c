
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ le32 ;
typedef scalar_t__ NTFS_RECORD_TYPE ;



__attribute__((used)) static inline bool __ntfs_is_magic(le32 x, NTFS_RECORD_TYPE r)
{
 return (x == r);
}
