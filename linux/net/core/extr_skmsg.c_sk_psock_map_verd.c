
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __SK_DROP ;
 int __SK_PASS ;
 int __SK_REDIRECT ;

__attribute__((used)) static int sk_psock_map_verd(int verdict, bool redir)
{
 switch (verdict) {
 case 128:
  return redir ? __SK_REDIRECT : __SK_PASS;
 case 129:
 default:
  break;
 }

 return __SK_DROP;
}
