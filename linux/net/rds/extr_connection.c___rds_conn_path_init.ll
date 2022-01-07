; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c___rds_conn_path_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c___rds_conn_path_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32 }
%struct.rds_conn_path = type { i32, i64, i32, i32, i32, i32, i32, %struct.rds_connection*, i64, i64, i32, i32, i32, i32, i32 }

@RDS_CONN_DOWN = common dso_local global i32 0, align 4
@RDS_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@rds_send_worker = common dso_local global i32 0, align 4
@rds_recv_worker = common dso_local global i32 0, align 4
@rds_connect_worker = common dso_local global i32 0, align 4
@rds_shutdown_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*, %struct.rds_conn_path*, i32)* @__rds_conn_path_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rds_conn_path_init(%struct.rds_connection* %0, %struct.rds_conn_path* %1, i32 %2) #0 {
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_conn_path*, align 8
  %6 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store %struct.rds_conn_path* %1, %struct.rds_conn_path** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %8 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %7, i32 0, i32 14
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %11 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %13 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %12, i32 0, i32 13
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %16 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %15, i32 0, i32 12
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %19 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %18, i32 0, i32 11
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %22 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %23 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %22, i32 0, i32 7
  store %struct.rds_connection* %21, %struct.rds_connection** %23, align 8
  %24 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %25 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %24, i32 0, i32 10
  %26 = load i32, i32* @RDS_CONN_DOWN, align 4
  %27 = call i32 @atomic_set(i32* %25, i32 %26)
  %28 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %29 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %31 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @RDS_PROTOCOL_VERSION, align 4
  %33 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %34 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %33, i32 0, i32 7
  %35 = load %struct.rds_connection*, %struct.rds_connection** %34, align 8
  %36 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %38 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %37, i32 0, i32 6
  %39 = load i32, i32* @rds_send_worker, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %42 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %41, i32 0, i32 5
  %43 = load i32, i32* @rds_recv_worker, align 4
  %44 = call i32 @INIT_DELAYED_WORK(i32* %42, i32 %43)
  %45 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %46 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %45, i32 0, i32 4
  %47 = load i32, i32* @rds_connect_worker, align 4
  %48 = call i32 @INIT_DELAYED_WORK(i32* %46, i32 %47)
  %49 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %50 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %49, i32 0, i32 3
  %51 = load i32, i32* @rds_shutdown_worker, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %54 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %53, i32 0, i32 2
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %57 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
