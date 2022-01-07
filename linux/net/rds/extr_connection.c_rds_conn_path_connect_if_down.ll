; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_path_connect_if_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_path_connect_if_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, i32, i32 }

@RDS_CONN_DOWN = common dso_local global i64 0, align 8
@RDS_RECONNECT_PENDING = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_conn_path_connect_if_down(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %3 = call i32 (...) @rcu_read_lock()
  %4 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %5 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @rds_destroy_pending(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_unlock()
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %13 = call i64 @rds_conn_path_state(%struct.rds_conn_path* %12)
  %14 = load i64, i64* @RDS_CONN_DOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i32, i32* @RDS_RECONNECT_PENDING, align 4
  %18 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %19 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %18, i32 0, i32 1
  %20 = call i32 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @rds_wq, align 4
  %24 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %25 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %24, i32 0, i32 0
  %26 = call i32 @queue_delayed_work(i32 %23, i32* %25, i32 0)
  br label %27

27:                                               ; preds = %22, %16, %11
  %28 = call i32 (...) @rcu_read_unlock()
  br label %29

29:                                               ; preds = %27, %9
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rds_destroy_pending(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @rds_conn_path_state(%struct.rds_conn_path*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
