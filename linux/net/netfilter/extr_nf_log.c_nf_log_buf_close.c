
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_log_buf {size_t count; scalar_t__* buf; } ;


 struct nf_log_buf emergency ;
 struct nf_log_buf* emergency_ptr ;
 int kfree (struct nf_log_buf*) ;
 scalar_t__ likely (int) ;
 int local_bh_enable () ;
 int printk (char*,scalar_t__*) ;

void nf_log_buf_close(struct nf_log_buf *m)
{
 m->buf[m->count] = 0;
 printk("%s\n", m->buf);

 if (likely(m != &emergency))
  kfree(m);
 else {
  emergency_ptr = m;
  local_bh_enable();
 }
}
