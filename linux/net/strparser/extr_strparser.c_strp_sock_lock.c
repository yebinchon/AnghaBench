
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int sk; } ;


 int lock_sock (int ) ;

__attribute__((used)) static void strp_sock_lock(struct strparser *strp)
{
 lock_sock(strp->sk);
}
