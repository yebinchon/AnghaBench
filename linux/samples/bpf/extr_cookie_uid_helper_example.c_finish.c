
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_finish ;

__attribute__((used)) static void finish(int ret)
{
 test_finish = 1;
}
