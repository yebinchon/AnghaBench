
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {void* fl_end; void* fl_start; int fl_type; int fl_flags; } ;
struct nlm_lock {void* svid; int oh; int fh; int len; int caller; struct file_lock fl; } ;
typedef scalar_t__ s32 ;
typedef int __be32 ;


 int FL_POSIX ;
 int F_RDLCK ;
 int NLM_MAXSTRLEN ;
 void* OFFSET_MAX ;
 int locks_init_lock (struct file_lock*) ;
 int * nlm_decode_fh (int *,int *) ;
 int * nlm_decode_oh (int *,int *) ;
 void* ntohl (int ) ;
 void* s32_to_loff_t (scalar_t__) ;
 int * xdr_decode_string_inplace (int *,int *,int *,int ) ;

__attribute__((used)) static __be32 *
nlm_decode_lock(__be32 *p, struct nlm_lock *lock)
{
 struct file_lock *fl = &lock->fl;
 s32 start, len, end;

 if (!(p = xdr_decode_string_inplace(p, &lock->caller,
         &lock->len,
         NLM_MAXSTRLEN))
  || !(p = nlm_decode_fh(p, &lock->fh))
  || !(p = nlm_decode_oh(p, &lock->oh)))
  return ((void*)0);
 lock->svid = ntohl(*p++);

 locks_init_lock(fl);
 fl->fl_flags = FL_POSIX;
 fl->fl_type = F_RDLCK;
 start = ntohl(*p++);
 len = ntohl(*p++);
 end = start + len - 1;

 fl->fl_start = s32_to_loff_t(start);

 if (len == 0 || end < 0)
  fl->fl_end = OFFSET_MAX;
 else
  fl->fl_end = s32_to_loff_t(end);
 return p;
}
