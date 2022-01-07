
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* char2uni ) (unsigned char const*,int,int*) ;} ;


 TYPE_1__* p_nls ;
 int stub1 (unsigned char const*,int,int*) ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen,
      wchar_t *uni)
{
 int n;

 if ((*rawstring & 0xef) != 0xae) {

  *uni = (*rawstring & 0x10) ? 0x040e : 0x045e;
  return 1;
 }

 n = p_nls->char2uni(rawstring, boundlen, uni);
 return n;
}
