
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {int dummy; } ;
struct machine {struct threads* threads; } ;
typedef scalar_t__ pid_t ;


 unsigned int THREADS__TABLE_SIZE ;

__attribute__((used)) static inline struct threads *machine__threads(struct machine *machine, pid_t tid)
{

 return &machine->threads[(unsigned int)tid % THREADS__TABLE_SIZE];
}
