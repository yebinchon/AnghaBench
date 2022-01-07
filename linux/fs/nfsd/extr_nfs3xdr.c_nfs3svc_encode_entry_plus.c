
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int loff_t ;


 int encode_entry (void*,char const*,int,int ,int ,unsigned int,int) ;

int
nfs3svc_encode_entry_plus(void *cd, const char *name,
     int namlen, loff_t offset, u64 ino,
     unsigned int d_type)
{
 return encode_entry(cd, name, namlen, offset, ino, d_type, 1);
}
