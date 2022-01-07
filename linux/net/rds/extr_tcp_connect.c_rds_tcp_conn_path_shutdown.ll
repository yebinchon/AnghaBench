; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_connect.c_rds_tcp_conn_path_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_connect.c_rds_tcp_conn_path_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i32, i64, %struct.TYPE_4__*, %struct.socket* }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32)* }

@.str = private unnamed_addr constant [37 x i8] c"shutting down conn %p tc %p sock %p\0A\00", align 1
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_conn_path_shutdown(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  %3 = alloca %struct.rds_tcp_connection*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %5 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %6 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %5, i32 0, i32 1
  %7 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  store %struct.rds_tcp_connection* %7, %struct.rds_tcp_connection** %3, align 8
  %8 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %8, i32 0, i32 3
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %4, align 8
  %11 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %12 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = call i32 @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.rds_tcp_connection* %14, %struct.socket* %15)
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = icmp ne %struct.socket* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %21 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @rds_destroy_pending(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = call i32 @rds_tcp_set_linger(%struct.socket* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.socket*, %struct.socket** %4, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %32, align 8
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = load i32, i32* @RCV_SHUTDOWN, align 4
  %36 = load i32, i32* @SEND_SHUTDOWN, align 4
  %37 = or i32 %35, %36
  %38 = call i32 %33(%struct.socket* %34, i32 %37)
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @lock_sock(i32 %41)
  %43 = load %struct.socket*, %struct.socket** %4, align 8
  %44 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %45 = call i32 @rds_tcp_restore_callbacks(%struct.socket* %43, %struct.rds_tcp_connection* %44)
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @release_sock(i32 %48)
  %50 = load %struct.socket*, %struct.socket** %4, align 8
  %51 = call i32 @sock_release(%struct.socket* %50)
  br label %52

52:                                               ; preds = %28, %1
  %53 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %54 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %59 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @rds_inc_put(i32* %61)
  %63 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %64 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %63, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %64, align 8
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %67 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %66, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %69 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32, %struct.rds_tcp_connection*, %struct.socket*) #1

declare dso_local i64 @rds_destroy_pending(i32) #1

declare dso_local i32 @rds_tcp_set_linger(%struct.socket*) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @rds_tcp_restore_callbacks(%struct.socket*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @release_sock(i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @rds_inc_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
