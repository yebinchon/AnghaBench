
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int tty_kref_put (struct tty_struct*) ;

void audit_put_tty(struct tty_struct *tty)
{
 tty_kref_put(tty);
}
