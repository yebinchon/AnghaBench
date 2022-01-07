
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reallocarray (int *,int,int) ;

int main(void)
{
 return !!reallocarray(((void*)0), 1, 1);
}
