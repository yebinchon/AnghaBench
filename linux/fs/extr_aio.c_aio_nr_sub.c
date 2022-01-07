
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 unsigned int aio_nr ;
 int aio_nr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void aio_nr_sub(unsigned nr)
{
 spin_lock(&aio_nr_lock);
 if (WARN_ON(aio_nr - nr > aio_nr))
  aio_nr = 0;
 else
  aio_nr -= nr;
 spin_unlock(&aio_nr_lock);
}
