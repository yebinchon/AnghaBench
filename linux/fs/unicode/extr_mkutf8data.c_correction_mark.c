
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {int correction; } ;



__attribute__((used)) static int correction_mark(void *l)
{
 struct unicode_data *leaf = l;

 return leaf->correction;
}
