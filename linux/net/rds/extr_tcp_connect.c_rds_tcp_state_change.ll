; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_connect.c_rds_tcp_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_connect.c_rds_tcp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, i32, %struct.rds_conn_path* }
%struct.rds_conn_path = type { %struct.TYPE_2__*, %struct.rds_tcp_connection* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rds_tcp_connection = type { {}*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"sock %p state_change to %d\0A\00", align 1
@RDS_CONN_CONNECTING = common dso_local global i32 0, align 4
@RDS_CONN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.rds_conn_path*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 2
  %8 = call i32 @read_lock_bh(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 3
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
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %21 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %20, i32 0, i32 1
  %22 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %21, align 8
  store %struct.rds_tcp_connection* %22, %struct.rds_tcp_connection** %5, align 8
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %24 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to void (%struct.sock*)**
  %26 = load void (%struct.sock*)*, void (%struct.sock*)** %25, align 8
  store void (%struct.sock*)* %26, void (%struct.sock*)** %3, align 8
  %27 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %28 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @rdsdebug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %66 [
    i32 128, label %37
    i32 129, label %37
    i32 130, label %38
    i32 131, label %63
    i32 132, label %63
  ]

37:                                               ; preds = %19, %19
  br label %67

38:                                               ; preds = %19
  %39 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %40 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %44 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @rds_addr_cmp(i32* %42, i32* %46)
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %51 = load i32, i32* @RDS_CONN_CONNECTING, align 4
  %52 = load i32, i32* @RDS_CONN_ERROR, align 4
  %53 = call i32 @rds_conn_path_transition(%struct.rds_conn_path* %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %57 = call i32 @rds_conn_path_drop(%struct.rds_conn_path* %56, i32 0)
  br label %62

58:                                               ; preds = %49, %38
  %59 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %60 = load i32, i32* @RDS_CONN_CONNECTING, align 4
  %61 = call i32 @rds_connect_path_complete(%struct.rds_conn_path* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  br label %67

63:                                               ; preds = %19, %19
  %64 = load %struct.rds_conn_path*, %struct.rds_conn_path** %4, align 8
  %65 = call i32 @rds_conn_path_drop(%struct.rds_conn_path* %64, i32 0)
  br label %66

66:                                               ; preds = %19, %63
  br label %67

67:                                               ; preds = %66, %62, %37
  br label %68

68:                                               ; preds = %67, %14
  %69 = load %struct.sock*, %struct.sock** %2, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 2
  %71 = call i32 @read_unlock_bh(i32* %70)
  %72 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %73 = load %struct.sock*, %struct.sock** %2, align 8
  call void %72(%struct.sock* %73)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @rdsdebug(i8*, i32, i32) #1

declare dso_local i32 @rds_addr_cmp(i32*, i32*) #1

declare dso_local i32 @rds_conn_path_transition(%struct.rds_conn_path*, i32, i32) #1

declare dso_local i32 @rds_conn_path_drop(%struct.rds_conn_path*, i32) #1

declare dso_local i32 @rds_connect_path_complete(%struct.rds_conn_path*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
