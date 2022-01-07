
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MON_DOMAIN ;

__attribute__((used)) static int dom_size(int peers)
{
 int i = 0;

 while ((i * i) < peers)
  i++;
 return i < MAX_MON_DOMAIN ? i : MAX_MON_DOMAIN;
}
