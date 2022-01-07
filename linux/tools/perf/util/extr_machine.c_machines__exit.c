
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machines {int host; } ;


 int machine__exit (int *) ;

void machines__exit(struct machines *machines)
{
 machine__exit(&machines->host);

}
