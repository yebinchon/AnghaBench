; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_send.c_rds_tcp_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_send.c_rds_tcp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, %struct.TYPE_2__*, i32, i32, %struct.rds_conn_path* }
%struct.TYPE_2__ = type { i32 }
%struct.rds_conn_path = type { i32, i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { {}*, %struct.rds_tcp_connection* }

@.str = private unnamed_addr constant [23 x i8] c"write_space for tc %p\0A\00", align 1
@s_tcp_write_space_calls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tcp una %u\0A\00", align 1
@rds_tcp_is_acked = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.rds_conn_path*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 3
  %8 = call i32 @read_lock_bh(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 5
  %11 = load %struct.rds_conn_path*, %struct.rds_conn_path** %10, align 8
  store %struct.rds_conn_path* %11, %struct.rds_conn_path** %4, align 8
  %12 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %13 = icmp ne %struct.rds_conn_path* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to void (%struct.sock*)**
  %18 = load void (%struct.sock*)*, void (%struct.sock*)** %17, align 8
  store void (%struct.sock*)* %18, void (%struct.sock*)** %3, align 8
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %21 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %20, i32 0, i32 2
  %22 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %21, align 8
  store %struct.rds_tcp_connection* %22, %struct.rds_tcp_connection** %5, align 8
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %24 = call i32 @rdsdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.rds_tcp_connection* %23)
  %25 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %26 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to void (%struct.sock*)**
  %28 = load void (%struct.sock*)*, void (%struct.sock*)** %27, align 8
  store void (%struct.sock*)* %28, void (%struct.sock*)** %3, align 8
  %29 = load i32, i32* @s_tcp_write_space_calls, align 4
  %30 = call i32 @rds_tcp_stats_inc(i32 %29)
  %31 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %32 = call %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection* %31)
  %33 = call i32 @rdsdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.rds_tcp_connection* %32)
  %34 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %35 = call %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection* %34)
  %36 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %37 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %36, i32 0, i32 1
  store %struct.rds_tcp_connection* %35, %struct.rds_tcp_connection** %37, align 8
  %38 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %39 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %40 = call %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection* %39)
  %41 = load i32, i32* @rds_tcp_is_acked, align 4
  %42 = call i32 @rds_send_path_drop_acked(%struct.rds_conn_path* %38, %struct.rds_tcp_connection* %40, i32 %41)
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 4
  %46 = call i32 @refcount_read(i32* %45)
  %47 = shl i32 %46, 1
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %19
  %53 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %54 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rds_destroy_pending(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @rds_wq, align 4
  %60 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %61 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %60, i32 0, i32 0
  %62 = call i32 @queue_delayed_work(i32 %59, i32* %61, i32 0)
  br label %63

63:                                               ; preds = %58, %52, %19
  %64 = call i32 (...) @rcu_read_unlock()
  br label %65

65:                                               ; preds = %63, %14
  %66 = load %struct.sock*, %struct.sock** %2, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 3
  %68 = call i32 @read_unlock_bh(i32* %67)
  %69 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %70 = load %struct.sock*, %struct.sock** %2, align 8
  call void %69(%struct.sock* %70)
  %71 = load %struct.sock*, %struct.sock** %2, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i32, i32* @SOCK_NOSPACE, align 4
  %77 = load %struct.sock*, %struct.sock** %2, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @set_bit(i32 %76, i32* %80)
  br label %82

82:                                               ; preds = %75, %65
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @rds_tcp_stats_inc(i32) #1

declare dso_local %struct.rds_tcp_connection* @rds_tcp_snd_una(%struct.rds_tcp_connection*) #1

declare dso_local i32 @rds_send_path_drop_acked(%struct.rds_conn_path*, %struct.rds_tcp_connection*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @rds_destroy_pending(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
