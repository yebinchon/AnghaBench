
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int private; } ;


 int clear_bit (int,unsigned long*) ;
 int set_bit (int,unsigned long*) ;

__attribute__((used)) static inline void ocfs2_iocb_set_rw_locked(struct kiocb *iocb, int level)
{
 set_bit(0, (unsigned long *)&iocb->private);
 if (level)
  set_bit(1, (unsigned long *)&iocb->private);
 else
  clear_bit(1, (unsigned long *)&iocb->private);
}
