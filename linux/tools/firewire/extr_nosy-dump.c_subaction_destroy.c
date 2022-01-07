
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subaction {int dummy; } ;


 int free (struct subaction*) ;

__attribute__((used)) static void
subaction_destroy(struct subaction *sa)
{
 free(sa);
}
