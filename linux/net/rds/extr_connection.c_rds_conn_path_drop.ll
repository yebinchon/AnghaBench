; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_path_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_path_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, i32, i32 }

@RDS_CONN_ERROR = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_conn_path_drop(%struct.rds_conn_path* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_conn_path*, align 8
  %4 = alloca i32, align 4
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %6 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %5, i32 0, i32 2
  %7 = load i32, i32* @RDS_CONN_ERROR, align 4
  %8 = call i32 @atomic_set(i32* %6, i32 %7)
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %14 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @rds_destroy_pending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @rcu_read_unlock()
  br label %26

20:                                               ; preds = %12, %2
  %21 = load i32, i32* @rds_wq, align 4
  %22 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %23 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %22, i32 0, i32 0
  %24 = call i32 @queue_work(i32 %21, i32* %23)
  %25 = call i32 (...) @rcu_read_unlock()
  br label %26

26:                                               ; preds = %20, %18
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rds_destroy_pending(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
