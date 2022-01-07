
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record {int evlist; } ;


 int record__mmap_evlist (struct record*,int ) ;

__attribute__((used)) static int record__mmap(struct record *rec)
{
 return record__mmap_evlist(rec, rec->evlist);
}
