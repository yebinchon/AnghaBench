; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_recv.c_rds_tcp_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_recv.c_rds_tcp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, %struct.rds_conn_path* }
%struct.rds_conn_path = type { i32, i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { {}* }

@.str = private unnamed_addr constant [18 x i8] c"data ready sk %p\0A\00", align 1
@s_tcp_data_ready_calls = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.rds_conn_path*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 1
  %10 = call i32 @read_lock_bh(i32* %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 2
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %12, align 8
  store %struct.rds_conn_path* %13, %struct.rds_conn_path** %4, align 8
  %14 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %15 = icmp ne %struct.rds_conn_path* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to void (%struct.sock*)**
  %20 = load void (%struct.sock*)*, void (%struct.sock*)** %19, align 8
  store void (%struct.sock*)* %20, void (%struct.sock*)** %3, align 8
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %23 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %22, i32 0, i32 2
  %24 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %23, align 8
  store %struct.rds_tcp_connection* %24, %struct.rds_tcp_connection** %5, align 8
  %25 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %26 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to void (%struct.sock*)**
  %28 = load void (%struct.sock*)*, void (%struct.sock*)** %27, align 8
  store void (%struct.sock*)* %28, void (%struct.sock*)** %3, align 8
  %29 = load i32, i32* @s_tcp_data_ready_calls, align 4
  %30 = call i32 @rds_tcp_stats_inc(i32 %29)
  %31 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32 @rds_tcp_read_sock(%struct.rds_conn_path* %31, i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %21
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %40 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rds_destroy_pending(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @rds_wq, align 4
  %46 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %47 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %46, i32 0, i32 0
  %48 = call i32 @queue_delayed_work(i32 %45, i32* %47, i32 0)
  br label %49

49:                                               ; preds = %44, %37
  %50 = call i32 (...) @rcu_read_unlock()
  br label %51

51:                                               ; preds = %49, %21
  br label %52

52:                                               ; preds = %51, %16
  %53 = load %struct.sock*, %struct.sock** %2, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = call i32 @read_unlock_bh(i32* %54)
  %56 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  call void %56(%struct.sock* %57)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.sock*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @rds_tcp_stats_inc(i32) #1

declare dso_local i32 @rds_tcp_read_sock(%struct.rds_conn_path*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rds_destroy_pending(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
