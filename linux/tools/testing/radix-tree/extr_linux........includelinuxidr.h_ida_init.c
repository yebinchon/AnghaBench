
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int xa; } ;


 int IDA_INIT_FLAGS ;
 int xa_init_flags (int *,int ) ;

__attribute__((used)) static inline void ida_init(struct ida *ida)
{
 xa_init_flags(&ida->xa, IDA_INIT_FLAGS);
}
