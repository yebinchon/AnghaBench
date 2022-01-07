
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int ntfs_volume ;


 int BUG_ON (int) ;
 scalar_t__ le32_to_cpup (void const*) ;
 int ntfs_debug (char*,...) ;

__attribute__((used)) static int ntfs_collate_ntofs_ulong(ntfs_volume *vol,
  const void *data1, const int data1_len,
  const void *data2, const int data2_len)
{
 int rc;
 u32 d1, d2;

 ntfs_debug("Entering.");

 BUG_ON(data1_len != data2_len);
 BUG_ON(data1_len != 4);
 d1 = le32_to_cpup(data1);
 d2 = le32_to_cpup(data2);
 if (d1 < d2)
  rc = -1;
 else {
  if (d1 == d2)
   rc = 0;
  else
   rc = 1;
 }
 ntfs_debug("Done, returning %i", rc);
 return rc;
}
