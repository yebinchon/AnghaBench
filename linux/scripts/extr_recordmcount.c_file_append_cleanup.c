
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * file_append ;
 scalar_t__ file_append_size ;
 scalar_t__ file_updated ;
 int free (int *) ;

__attribute__((used)) static void file_append_cleanup(void)
{
 free(file_append);
 file_append = ((void*)0);
 file_append_size = 0;
 file_updated = 0;
}
