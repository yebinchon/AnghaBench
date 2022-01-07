
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int isolated; } ;



__attribute__((used)) static bool is_zspage_isolated(struct zspage *zspage)
{
 return zspage->isolated;
}
