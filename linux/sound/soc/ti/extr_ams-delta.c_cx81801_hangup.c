
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int cx81801_close (struct tty_struct*) ;

__attribute__((used)) static int cx81801_hangup(struct tty_struct *tty)
{
 cx81801_close(tty);
 return 0;
}
