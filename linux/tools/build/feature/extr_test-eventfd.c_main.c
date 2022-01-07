
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFD_NONBLOCK ;
 int eventfd (int ,int ) ;

int main(void)
{
 return eventfd(0, EFD_NONBLOCK);
}
