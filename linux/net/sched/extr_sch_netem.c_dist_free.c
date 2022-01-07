
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disttable {int dummy; } ;


 int kvfree (struct disttable*) ;

__attribute__((used)) static void dist_free(struct disttable *d)
{
 kvfree(d);
}
