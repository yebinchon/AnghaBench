
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u32 ;


 int EINVAL ;
 int IP_VS_DBG (int,char*,int) ;

__attribute__((used)) static int ip_vs_proc_str(__u8 *p, unsigned int plen, unsigned int *data_len,
     __u8 **data, unsigned int maxlen,
     __u32 *opt_flags, __u32 flag)
{
 if (plen > maxlen) {
  IP_VS_DBG(2, "BACKUP, bogus par.data len > %d\n", maxlen);
  return -EINVAL;
 }
 if (*opt_flags & flag) {
  IP_VS_DBG(2, "BACKUP, Par.data found twice 0x%x\n", flag);
  return -EINVAL;
 }
 *data_len = plen;
 *data = p;
 *opt_flags |= flag;
 return 0;
}
