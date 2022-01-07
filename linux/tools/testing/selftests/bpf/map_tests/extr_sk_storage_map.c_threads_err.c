
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int READ_ONCE (int ) ;
 int nr_sk_threads_err ;

__attribute__((used)) static unsigned int threads_err(void)
{
 return READ_ONCE(nr_sk_threads_err);
}
