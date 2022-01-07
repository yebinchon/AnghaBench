; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_path.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { %struct.rds_connection* }
%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"conn %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@s_ib_rx_refill_from_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_recv_path(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca %struct.rds_ib_connection*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %5 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %6 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %5, i32 0, i32 0
  %7 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  store %struct.rds_connection* %7, %struct.rds_connection** %3, align 8
  %8 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %8, i32 0, i32 0
  %10 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  store %struct.rds_ib_connection* %10, %struct.rds_ib_connection** %4, align 8
  %11 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %12 = call i32 @rdsdebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %11)
  %13 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %14 = call i64 @rds_conn_up(%struct.rds_connection* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %18 = call i32 @rds_ib_attempt_ack(%struct.rds_ib_connection* %17)
  %19 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @rds_ib_recv_refill(%struct.rds_connection* %19, i32 0, i32 %20)
  %22 = load i32, i32* @s_ib_rx_refill_from_thread, align 4
  %23 = call i32 @rds_ib_stats_inc(i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_attempt_ack(%struct.rds_ib_connection*) #1

declare dso_local i32 @rds_ib_recv_refill(%struct.rds_connection*, i32, i32) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
