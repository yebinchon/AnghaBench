
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_fwdtsn_skip {scalar_t__ stream; } ;
typedef scalar_t__ __be16 ;



__attribute__((used)) static inline int sctp_get_skip_pos(struct sctp_fwdtsn_skip *skiplist,
        int nskips, __be16 stream)
{
 int i;

 for (i = 0; i < nskips; i++) {
  if (skiplist[i].stream == stream)
   return i;
 }
 return i;
}
