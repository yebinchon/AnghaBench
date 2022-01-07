
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int xtalk_sem; } ;


 int up (int *) ;

__attribute__((used)) static inline void nau8825_sema_release(struct nau8825 *nau8825)
{
 up(&nau8825->xtalk_sem);
}
