; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_recv.c_rds_tcp_recv_path.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_recv.c_rds_tcp_recv_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { %struct.socket* }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"recv worker path [%d] tc %p sock %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_tcp_recv_path(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  %3 = alloca %struct.rds_tcp_connection*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %6 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %7 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %6, i32 0, i32 1
  %8 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %7, align 8
  store %struct.rds_tcp_connection* %8, %struct.rds_tcp_connection** %3, align 8
  %9 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %13 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = call i32 @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.rds_tcp_connection* %15, %struct.socket* %16)
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lock_sock(i32 %20)
  %22 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @rds_tcp_read_sock(%struct.rds_conn_path* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @release_sock(i32 %27)
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @rdsdebug(i8*, i32, %struct.rds_tcp_connection*, %struct.socket*) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @rds_tcp_read_sock(%struct.rds_conn_path*, i32) #1

declare dso_local i32 @release_sock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
