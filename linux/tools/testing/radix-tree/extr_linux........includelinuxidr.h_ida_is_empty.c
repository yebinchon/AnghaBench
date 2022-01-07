
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int xa; } ;


 int xa_empty (int *) ;

__attribute__((used)) static inline bool ida_is_empty(const struct ida *ida)
{
 return xa_empty(&ida->xa);
}
