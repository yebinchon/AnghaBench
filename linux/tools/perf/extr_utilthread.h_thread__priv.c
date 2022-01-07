
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {void* priv; } ;



__attribute__((used)) static inline void *thread__priv(struct thread *thread)
{
 return thread->priv;
}
