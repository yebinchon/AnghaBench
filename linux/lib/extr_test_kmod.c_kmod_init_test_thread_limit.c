
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TEST_START_NUM_THREADS ;

__attribute__((used)) static unsigned int kmod_init_test_thread_limit(void)
{
 return TEST_START_NUM_THREADS;
}
