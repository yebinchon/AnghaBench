
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int comm; } ;
typedef int int64_t ;


 int comm__str (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__comm_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return strcmp(comm__str(right->comm), comm__str(left->comm));
}
