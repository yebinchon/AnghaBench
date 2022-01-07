
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFAG12864B_SIZE ;
 int cfag12864b_buffer ;
 int cfag12864b_mem ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void cfag12864b_blit(void)
{
 memcpy(cfag12864b_mem, cfag12864b_buffer, CFAG12864B_SIZE);
}
