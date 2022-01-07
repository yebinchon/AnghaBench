
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 void* malloc (int) ;
 int memcpy (void*,void const*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void *
alloc_zero_tailing_info(const void *orecord, __u32 cnt,
   __u32 actual_rec_size, __u32 expected_rec_size)
{
 __u64 info_len = actual_rec_size * cnt;
 void *info, *nrecord;
 int i;

 info = malloc(info_len);
 if (!info)
  return ((void*)0);


 nrecord = info;
 for (i = 0; i < cnt; i++) {
  memcpy(nrecord, orecord, expected_rec_size);
  memset(nrecord + expected_rec_size, 0,
         actual_rec_size - expected_rec_size);
  orecord += actual_rec_size;
  nrecord += actual_rec_size;
 }

 return info;
}
