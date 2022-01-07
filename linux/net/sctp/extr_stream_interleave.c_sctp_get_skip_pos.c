
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ifwdtsn_skip {scalar_t__ stream; scalar_t__ flags; } ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __be16 ;



__attribute__((used)) static inline int sctp_get_skip_pos(struct sctp_ifwdtsn_skip *skiplist,
        int nskips, __be16 stream, __u8 flags)
{
 int i;

 for (i = 0; i < nskips; i++)
  if (skiplist[i].stream == stream &&
      skiplist[i].flags == flags)
   return i;

 return i;
}
