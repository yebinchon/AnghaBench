
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOING_SS ;
 int KDB_ARGCOUNT ;
 int KDB_CMD_SS ;
 int KDB_STATE_SET (int ) ;

__attribute__((used)) static int kdb_ss(int argc, const char **argv)
{
 if (argc != 0)
  return KDB_ARGCOUNT;



 KDB_STATE_SET(DOING_SS);
 return KDB_CMD_SS;
}
