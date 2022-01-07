
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file* file; } ;
struct splice_desc {size_t len; size_t total_len; unsigned int flags; int pos; int * opos; TYPE_1__ u; } ;
struct file {int f_mode; int f_flags; } ;
typedef int loff_t ;


 long EBADF ;
 long EINVAL ;
 int FMODE_WRITE ;
 int O_APPEND ;
 int WRITE ;
 int direct_splice_actor ;
 long rw_verify_area (int ,struct file*,int *,size_t) ;
 long splice_direct_to_actor (struct file*,struct splice_desc*,int ) ;
 scalar_t__ unlikely (int) ;

long do_splice_direct(struct file *in, loff_t *ppos, struct file *out,
        loff_t *opos, size_t len, unsigned int flags)
{
 struct splice_desc sd = {
  .len = len,
  .total_len = len,
  .flags = flags,
  .pos = *ppos,
  .u.file = out,
  .opos = opos,
 };
 long ret;

 if (unlikely(!(out->f_mode & FMODE_WRITE)))
  return -EBADF;

 if (unlikely(out->f_flags & O_APPEND))
  return -EINVAL;

 ret = rw_verify_area(WRITE, out, opos, len);
 if (unlikely(ret < 0))
  return ret;

 ret = splice_direct_to_actor(in, &sd, direct_splice_actor);
 if (ret > 0)
  *ppos = sd.pos;

 return ret;
}
