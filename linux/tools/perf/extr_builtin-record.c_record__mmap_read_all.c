
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record {int evlist; } ;


 int record__mmap_read_evlist (struct record*,int ,int,int) ;

__attribute__((used)) static int record__mmap_read_all(struct record *rec, bool synch)
{
 int err;

 err = record__mmap_read_evlist(rec, rec->evlist, 0, synch);
 if (err)
  return err;

 return record__mmap_read_evlist(rec, rec->evlist, 1, synch);
}
