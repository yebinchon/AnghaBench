
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fanotify_fid {void* fh; void* ext_fh; } ;


 unsigned int FANOTIFY_INLINE_FH_LEN ;

__attribute__((used)) static inline void *fanotify_fid_fh(struct fanotify_fid *fid,
        unsigned int fh_len)
{
 return fh_len <= FANOTIFY_INLINE_FH_LEN ? fid->fh : fid->ext_fh;
}
