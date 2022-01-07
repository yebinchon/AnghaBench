
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {scalar_t__ path_length; } ;


 scalar_t__ ILLEGAL_PATH_ELEMENT_OFFSET ;
 int RFALSE (int,char*) ;

int reiserfs_check_path(struct treepath *p)
{
 RFALSE(p->path_length != ILLEGAL_PATH_ELEMENT_OFFSET,
        "path not properly relsed");
 return 0;
}
