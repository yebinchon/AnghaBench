
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8824 {int jd_sem; } ;


 int up (int *) ;

__attribute__((used)) static inline void nau8824_sema_release(struct nau8824 *nau8824)
{
 up(&nau8824->jd_sem);
}
