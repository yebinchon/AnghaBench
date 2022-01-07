
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int path_length; } ;


 int ILLEGAL_PATH_ELEMENT_OFFSET ;
 int PATH_OFFSET_PBUFFER (struct treepath*,int ) ;
 int RFALSE (int,char*) ;
 int brelse (int ) ;

void pathrelse(struct treepath *search_path)
{
 int path_offset = search_path->path_length;

 RFALSE(path_offset < ILLEGAL_PATH_ELEMENT_OFFSET,
        "PAP-5090: invalid path offset");

 while (path_offset > ILLEGAL_PATH_ELEMENT_OFFSET)
  brelse(PATH_OFFSET_PBUFFER(search_path, path_offset--));

 search_path->path_length = ILLEGAL_PATH_ELEMENT_OFFSET;
}
