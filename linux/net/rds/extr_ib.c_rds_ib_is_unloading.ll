; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib.c_rds_ib_is_unloading.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib.c_rds_ib_is_unloading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_conn_path* }
%struct.rds_conn_path = type { i32 }

@RDS_DESTROY_PENDING = common dso_local global i32 0, align 4
@rds_ib_unloading = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*)* @rds_ib_is_unloading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_ib_is_unloading(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_conn_path*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %4 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %5 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %4, i32 0, i32 0
  %6 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %7 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %6, i64 0
  store %struct.rds_conn_path* %7, %struct.rds_conn_path** %3, align 8
  %8 = load i32, i32* @RDS_DESTROY_PENDING, align 4
  %9 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %10 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = call i64 @atomic_read(i32* @rds_ib_unloading)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i1 [ true, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
