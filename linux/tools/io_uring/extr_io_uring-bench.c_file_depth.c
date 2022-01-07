
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submitter {int nr_files; } ;


 int DEPTH ;

__attribute__((used)) static unsigned file_depth(struct submitter *s)
{
 return (DEPTH + s->nr_files - 1) / s->nr_files;
}
