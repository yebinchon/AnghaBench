; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_recv.c_rds_tcp_read_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_recv.c_rds_tcp_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rds_tcp_desc_arg* }
%struct.rds_tcp_desc_arg = type { i32, %struct.rds_conn_path* }

@rds_tcp_data_recv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tcp_read_sock for tc %p gfp 0x%x returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_conn_path*, i32)* @rds_tcp_read_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_tcp_read_sock(%struct.rds_conn_path* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_conn_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_tcp_connection*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.rds_tcp_desc_arg, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %10 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %9, i32 0, i32 0
  %11 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %10, align 8
  store %struct.rds_tcp_connection* %11, %struct.rds_tcp_connection** %5, align 8
  %12 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %13 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %12, i32 0, i32 0
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  store %struct.socket* %14, %struct.socket** %6, align 8
  %15 = load %struct.rds_conn_path*, %struct.rds_conn_path** %3, align 8
  %16 = getelementptr inbounds %struct.rds_tcp_desc_arg, %struct.rds_tcp_desc_arg* %8, i32 0, i32 1
  store %struct.rds_conn_path* %15, %struct.rds_conn_path** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.rds_tcp_desc_arg, %struct.rds_tcp_desc_arg* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.rds_tcp_desc_arg* %8, %struct.rds_tcp_desc_arg** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @rds_tcp_data_recv, align 4
  %27 = call i32 @tcp_read_sock(i32 %25, %struct.TYPE_5__* %7, i32 %26)
  %28 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rdsdebug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.rds_tcp_connection* %28, i32 %29, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  ret i32 %34
}

declare dso_local i32 @tcp_read_sock(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_tcp_connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
