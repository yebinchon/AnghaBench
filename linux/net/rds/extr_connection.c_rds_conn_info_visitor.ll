; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_info_visitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_info_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, i32, i32, i32, %struct.rds_connection* }
%struct.rds_connection = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.rds_info_connection = type { i64, i32, i32, i32, i32, i32, i32 }

@RDS_IN_XMIT = common dso_local global i32 0, align 4
@SENDING = common dso_local global i32 0, align 4
@RDS_CONN_CONNECTING = common dso_local global i64 0, align 8
@CONNECTING = common dso_local global i32 0, align 4
@RDS_CONN_UP = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_conn_path*, i8*)* @rds_conn_info_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_conn_info_visitor(%struct.rds_conn_path* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_conn_path*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rds_info_connection*, align 8
  %7 = alloca %struct.rds_connection*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rds_info_connection*
  store %struct.rds_info_connection* %9, %struct.rds_info_connection** %6, align 8
  %10 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %11 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %10, i32 0, i32 4
  %12 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  store %struct.rds_connection* %12, %struct.rds_connection** %7, align 8
  %13 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %20 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %23 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %25 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %28 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %30 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %36 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %38 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %44 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %46 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %49 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %51 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %54 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strncpy(i32 %52, i32 %57, i32 4)
  %59 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %60 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %62 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @RDS_IN_XMIT, align 4
  %65 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %66 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %65, i32 0, i32 1
  %67 = call i32 @test_bit(i32 %64, i32* %66)
  %68 = load i32, i32* @SENDING, align 4
  %69 = call i32 @rds_conn_info_set(i64 %63, i32 %67, i32 %68)
  %70 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %71 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %74 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %73, i32 0, i32 0
  %75 = call i64 @atomic_read(i32* %74)
  %76 = load i64, i64* @RDS_CONN_CONNECTING, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* @CONNECTING, align 4
  %80 = call i32 @rds_conn_info_set(i64 %72, i32 %78, i32 %79)
  %81 = load %struct.rds_info_connection*, %struct.rds_info_connection** %6, align 8
  %82 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %85 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %84, i32 0, i32 0
  %86 = call i64 @atomic_read(i32* %85)
  %87 = load i64, i64* @RDS_CONN_UP, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* @CONNECTED, align 4
  %91 = call i32 @rds_conn_info_set(i64 %83, i32 %89, i32 %90)
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %18, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @rds_conn_info_set(i64, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
