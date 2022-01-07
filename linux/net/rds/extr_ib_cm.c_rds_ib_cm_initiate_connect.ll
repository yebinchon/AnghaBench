; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_cm_initiate_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_cm_initiate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.rds_connection* }
%struct.rds_connection = type { i32, %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32, %struct.rdma_cm_id*, i32 }
%struct.rdma_conn_param = type { i32 }
%union.rds_ib_conn_priv = type { i32 }

@RDS_PROTOCOL_4_1 = common dso_local global i32 0, align 4
@rds_ib_sysctl_flow_control = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rds_ib_setup_qp failed (%d)\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"rdma_connect failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_cm_initiate_connect(%struct.rdma_cm_id* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rds_ib_connection*, align 8
  %7 = alloca %struct.rdma_conn_param, align 4
  %8 = alloca %union.rds_ib_conn_priv, align 4
  %9 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %10, i32 0, i32 0
  %12 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  store %struct.rds_connection* %12, %struct.rds_connection** %5, align 8
  %13 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 1
  %15 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %14, align 8
  store %struct.rds_ib_connection* %15, %struct.rds_ib_connection** %6, align 8
  %16 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %17 = load i32, i32* @RDS_PROTOCOL_4_1, align 4
  %18 = call i32 @rds_ib_set_protocol(%struct.rds_connection* %16, i32 %17)
  %19 = load i32, i32* @rds_ib_sysctl_flow_control, align 4
  %20 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %21 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %23 = call i32 @rds_ib_setup_qp(%struct.rds_connection* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @rds_ib_conn_error(%struct.rds_connection* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %48

30:                                               ; preds = %2
  %31 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %32 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %33 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @UINT_MAX, align 4
  %36 = load i32, i32* @UINT_MAX, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @rds_ib_cm_fill_conn_param(%struct.rds_connection* %31, %struct.rdma_conn_param* %7, %union.rds_ib_conn_priv* %8, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %40 = call i32 @rdma_connect(%struct.rdma_cm_id* %39, %struct.rdma_conn_param* %7)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @rds_ib_conn_error(%struct.rds_connection* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %30
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %53 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %52, i32 0, i32 1
  %54 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %53, align 8
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %56 = icmp eq %struct.rdma_cm_id* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %61 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @rds_ib_set_protocol(%struct.rds_connection*, i32) #1

declare dso_local i32 @rds_ib_setup_qp(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, i32) #1

declare dso_local i32 @rds_ib_cm_fill_conn_param(%struct.rds_connection*, %struct.rdma_conn_param*, %union.rds_ib_conn_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_connect(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
