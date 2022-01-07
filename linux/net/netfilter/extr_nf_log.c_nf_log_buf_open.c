
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_log_buf {scalar_t__ count; } ;


 int GFP_ATOMIC ;
 int emergency_ptr ;
 struct nf_log_buf* kmalloc (int,int ) ;
 int local_bh_disable () ;
 scalar_t__ unlikely (int) ;
 struct nf_log_buf* xchg (int *,int *) ;

struct nf_log_buf *nf_log_buf_open(void)
{
 struct nf_log_buf *m = kmalloc(sizeof(*m), GFP_ATOMIC);

 if (unlikely(!m)) {
  local_bh_disable();
  do {
   m = xchg(&emergency_ptr, ((void*)0));
  } while (!m);
 }
 m->count = 0;
 return m;
}
