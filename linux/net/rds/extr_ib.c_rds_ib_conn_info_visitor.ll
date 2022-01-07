; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib.c_rds_ib_conn_info_visitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib.c_rds_ib_conn_info_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i32*, %struct.rds_ib_connection* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.rds_ib_connection = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.rds_ib_device*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rds_ib_device = type { i32 }
%struct.rds_info_rdma_connection = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ib_gid = type { i32 }

@rds_ib_transport = common dso_local global i32 0, align 4
@RDS_CONN_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i8*)* @rds_ib_conn_info_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_ib_conn_info_visitor(%struct.rds_connection* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rds_info_rdma_connection*, align 8
  %7 = alloca %struct.rds_ib_connection*, align 8
  %8 = alloca %struct.rds_ib_device*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rds_info_rdma_connection*
  store %struct.rds_info_rdma_connection* %10, %struct.rds_info_rdma_connection** %6, align 8
  %11 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 5
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %12, align 8
  store %struct.rds_ib_connection* %13, %struct.rds_ib_connection** %7, align 8
  %14 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %15 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, @rds_ib_transport
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

19:                                               ; preds = %2
  %20 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %21 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %106

25:                                               ; preds = %19
  %26 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %27 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %33 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %35 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %41 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %43 = icmp ne %struct.rds_ib_connection* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %25
  %45 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %46 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %49 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %51 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %54 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %25
  %56 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %57 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %56, i32 0, i32 5
  %58 = call i32 @memset(i32* %57, i32 0, i32 4)
  %59 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %60 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %59, i32 0, i32 4
  %61 = call i32 @memset(i32* %60, i32 0, i32 4)
  %62 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %63 = call i64 @rds_conn_state(%struct.rds_connection* %62)
  %64 = load i64, i64* @RDS_CONN_UP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %55
  %67 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %68 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %71 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %70, i32 0, i32 5
  %72 = bitcast i32* %71 to %union.ib_gid*
  %73 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %74 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %73, i32 0, i32 4
  %75 = bitcast i32* %74 to %union.ib_gid*
  %76 = call i32 @rdma_read_gids(i32 %69, %union.ib_gid* %72, %union.ib_gid* %75)
  %77 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %78 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %77, i32 0, i32 3
  %79 = load %struct.rds_ib_device*, %struct.rds_ib_device** %78, align 8
  store %struct.rds_ib_device* %79, %struct.rds_ib_device** %8, align 8
  %80 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %81 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %85 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %87 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %91 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %93 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %96 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %98 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %99 = call i32 @rds_ib_get_mr_info(%struct.rds_ib_device* %97, %struct.rds_info_rdma_connection* %98)
  %100 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  %101 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %100, i32 0, i32 0
  %102 = call i32 @atomic_read(i32* %101)
  %103 = load %struct.rds_info_rdma_connection*, %struct.rds_info_rdma_connection** %6, align 8
  %104 = getelementptr inbounds %struct.rds_info_rdma_connection, %struct.rds_info_rdma_connection* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %66, %55
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %24, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @rds_conn_state(%struct.rds_connection*) #1

declare dso_local i32 @rdma_read_gids(i32, %union.ib_gid*, %union.ib_gid*) #1

declare dso_local i32 @rds_ib_get_mr_info(%struct.rds_ib_device*, %struct.rds_info_rdma_connection*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
