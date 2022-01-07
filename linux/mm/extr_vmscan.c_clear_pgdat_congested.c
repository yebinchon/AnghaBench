
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ pg_data_t ;


 int PGDAT_CONGESTED ;
 int PGDAT_DIRTY ;
 int PGDAT_WRITEBACK ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void clear_pgdat_congested(pg_data_t *pgdat)
{
 clear_bit(PGDAT_CONGESTED, &pgdat->flags);
 clear_bit(PGDAT_DIRTY, &pgdat->flags);
 clear_bit(PGDAT_WRITEBACK, &pgdat->flags);
}
