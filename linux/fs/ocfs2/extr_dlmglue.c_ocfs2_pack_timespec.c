
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;


 int OCFS2_NSEC_MASK ;
 int OCFS2_SEC_SHIFT ;
 int clamp_t (int ,int ,int ,int) ;
 int time64_t ;

__attribute__((used)) static u64 ocfs2_pack_timespec(struct timespec64 *spec)
{
 u64 res;
 u64 sec = clamp_t(time64_t, spec->tv_sec, 0, 0x3ffffffffull);
 u32 nsec = spec->tv_nsec;

 res = (sec << OCFS2_SEC_SHIFT) | (nsec & OCFS2_NSEC_MASK);

 return res;
}
