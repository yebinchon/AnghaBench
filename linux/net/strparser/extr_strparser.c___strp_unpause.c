
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {scalar_t__ need_bytes; scalar_t__ paused; } ;


 scalar_t__ strp_peek_len (struct strparser*) ;
 int strp_read_sock (struct strparser*) ;

void __strp_unpause(struct strparser *strp)
{
 strp->paused = 0;

 if (strp->need_bytes) {
  if (strp_peek_len(strp) < strp->need_bytes)
   return;
 }
 strp_read_sock(strp);
}
