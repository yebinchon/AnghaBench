; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_find_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }

@neigh_tables = common dso_local global %struct.neigh_table** null, align 8
@NEIGH_ARP_TABLE = common dso_local global i64 0, align 8
@NEIGH_ND_TABLE = common dso_local global i64 0, align 8
@NEIGH_DN_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.neigh_table* (i32)* @neigh_find_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.neigh_table* @neigh_find_table(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neigh_table*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.neigh_table* null, %struct.neigh_table** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %20 [
    i32 129, label %5
    i32 128, label %10
    i32 130, label %15
  ]

5:                                                ; preds = %1
  %6 = load %struct.neigh_table**, %struct.neigh_table*** @neigh_tables, align 8
  %7 = load i64, i64* @NEIGH_ARP_TABLE, align 8
  %8 = getelementptr inbounds %struct.neigh_table*, %struct.neigh_table** %6, i64 %7
  %9 = load %struct.neigh_table*, %struct.neigh_table** %8, align 8
  store %struct.neigh_table* %9, %struct.neigh_table** %3, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.neigh_table**, %struct.neigh_table*** @neigh_tables, align 8
  %12 = load i64, i64* @NEIGH_ND_TABLE, align 8
  %13 = getelementptr inbounds %struct.neigh_table*, %struct.neigh_table** %11, i64 %12
  %14 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  store %struct.neigh_table* %14, %struct.neigh_table** %3, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.neigh_table**, %struct.neigh_table*** @neigh_tables, align 8
  %17 = load i64, i64* @NEIGH_DN_TABLE, align 8
  %18 = getelementptr inbounds %struct.neigh_table*, %struct.neigh_table** %16, i64 %17
  %19 = load %struct.neigh_table*, %struct.neigh_table** %18, align 8
  store %struct.neigh_table* %19, %struct.neigh_table** %3, align 8
  br label %20

20:                                               ; preds = %1, %15, %10, %5
  %21 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  ret %struct.neigh_table* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
