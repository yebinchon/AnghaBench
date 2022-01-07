
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMEMLEAK_GREY ;
 int paint_ptr (unsigned long,int ) ;

__attribute__((used)) static void make_gray_object(unsigned long ptr)
{
 paint_ptr(ptr, KMEMLEAK_GREY);
}
