; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_reclaim_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_reclaim_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_reclaim_complete }
%struct.nfsd4_reclaim_complete = type { i64 }

@nfserr_nofilehandle = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@nfserr_complete_already = common dso_local global i32 0, align 4
@NFSD4_CLIENT_RECLAIM_COMPLETE = common dso_local global i32 0, align 4
@nfserr_stale_clientid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_reclaim_complete(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_reclaim_complete*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %10 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %11 = bitcast %union.nfsd4_op_u* %10 to %struct.nfsd4_reclaim_complete*
  store %struct.nfsd4_reclaim_complete* %11, %struct.nfsd4_reclaim_complete** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.nfsd4_reclaim_complete*, %struct.nfsd4_reclaim_complete** %8, align 8
  %13 = getelementptr inbounds %struct.nfsd4_reclaim_complete, %struct.nfsd4_reclaim_complete* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @nfserr_nofilehandle, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %16
  %25 = load i32, i32* @nfs_ok, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32, i32* @nfserr_complete_already, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @NFSD4_CLIENT_RECLAIM_COMPLETE, align 4
  %29 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i64 @test_and_set_bit(i32 %28, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %62

38:                                               ; preds = %26
  %39 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %41 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i64 @is_client_expired(%struct.TYPE_8__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %62

48:                                               ; preds = %38
  %49 = load i32, i32* @nfs_ok, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @nfsd4_client_record_create(%struct.TYPE_8__* %54)
  %56 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %57 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @inc_reclaim_complete(%struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %48, %47, %37
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %24, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_client_expired(%struct.TYPE_8__*) #1

declare dso_local i32 @nfsd4_client_record_create(%struct.TYPE_8__*) #1

declare dso_local i32 @inc_reclaim_complete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
