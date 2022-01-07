
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int total_elements; int counter; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int snd_seq_pool_available(struct snd_seq_pool *pool)
{
 return pool->total_elements - atomic_read(&pool->counter);
}
