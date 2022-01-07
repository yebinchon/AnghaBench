; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_read }
%struct.nfsd4_read = type { i64, i32*, %struct.svc_rqst*, i32*, i32, i32 }

@OFFSET_MAX = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i64 0, align 8
@RQ_SPLICE_OK = common dso_local global i32 0, align 4
@RD_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NFSD: nfsd4_read: couldn't process stateid!\0A\00", align 1
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_read(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_read*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %10 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %11 = bitcast %union.nfsd4_op_u* %10 to %struct.nfsd4_read*
  store %struct.nfsd4_read* %11, %struct.nfsd4_read** %8, align 8
  %12 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %13 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %15 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OFFSET_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @nfserr_inval, align 8
  store i64 %20, i64* %4, align 8
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %23, i32 0, i32 0
  %25 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %26 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %29 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_nfsd_read_start(%struct.svc_rqst* %22, i32* %24, i64 %27, i32 %30)
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %33 = call i32 @nfsd4_last_compound_op(%struct.svc_rqst* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @RQ_SPLICE_OK, align 4
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %21
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %42 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %43 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %44 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %43, i32 0, i32 0
  %45 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %46 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %45, i32 0, i32 4
  %47 = load i32, i32* @RD_STATE, align 4
  %48 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %49 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %48, i32 0, i32 3
  %50 = call i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst* %41, %struct.nfsd4_compound_state* %42, i32* %44, i32* %46, i32 %47, i32** %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %57

55:                                               ; preds = %40
  %56 = load i64, i64* @nfs_ok, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %59 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %60 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %59, i32 0, i32 2
  store %struct.svc_rqst* %58, %struct.svc_rqst** %60, align 8
  %61 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %62 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %61, i32 0, i32 0
  %63 = load %struct.nfsd4_read*, %struct.nfsd4_read** %8, align 8
  %64 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %57, %19
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32 @trace_nfsd_read_start(%struct.svc_rqst*, i32*, i64, i32) #1

declare dso_local i32 @nfsd4_last_compound_op(%struct.svc_rqst*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*, i32, i32**) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
