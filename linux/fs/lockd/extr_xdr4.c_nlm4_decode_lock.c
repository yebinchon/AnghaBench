
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {void* fl_end; void* fl_start; int fl_type; int fl_flags; } ;
struct nlm_lock {int svid; int oh; int fh; int len; int caller; struct file_lock fl; } ;
typedef scalar_t__ __u64 ;
typedef scalar_t__ __s64 ;
typedef int __be32 ;


 int FL_POSIX ;
 int F_RDLCK ;
 int NLM_MAXSTRLEN ;
 void* OFFSET_MAX ;
 int locks_init_lock (struct file_lock*) ;
 int * nlm4_decode_fh (int *,int *) ;
 int * nlm4_decode_oh (int *,int *) ;
 int ntohl (int ) ;
 void* s64_to_loff_t (scalar_t__) ;
 int * xdr_decode_hyper (int *,scalar_t__*) ;
 int * xdr_decode_string_inplace (int *,int *,int *,int ) ;

__attribute__((used)) static __be32 *
nlm4_decode_lock(__be32 *p, struct nlm_lock *lock)
{
 struct file_lock *fl = &lock->fl;
 __u64 len, start;
 __s64 end;

 if (!(p = xdr_decode_string_inplace(p, &lock->caller,
         &lock->len, NLM_MAXSTRLEN))
  || !(p = nlm4_decode_fh(p, &lock->fh))
  || !(p = nlm4_decode_oh(p, &lock->oh)))
  return ((void*)0);
 lock->svid = ntohl(*p++);

 locks_init_lock(fl);
 fl->fl_flags = FL_POSIX;
 fl->fl_type = F_RDLCK;
 p = xdr_decode_hyper(p, &start);
 p = xdr_decode_hyper(p, &len);
 end = start + len - 1;

 fl->fl_start = s64_to_loff_t(start);

 if (len == 0 || end < 0)
  fl->fl_end = OFFSET_MAX;
 else
  fl->fl_end = s64_to_loff_t(end);
 return p;
}
