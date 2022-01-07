; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_restorefh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_restorefh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%union.nfsd4_op_u = type { i32 }

@nfserr_restorefh = common dso_local global i32 0, align 4
@SAVED_STATE_ID_FLAG = common dso_local global i32 0, align 4
@CURRENT_STATE_ID_FLAG = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_restorefh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_restorefh(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %8 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @nfserr_restorefh, align 4
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 3
  %18 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %18, i32 0, i32 2
  %20 = call i32 @fh_dup2(i32* %17, %struct.TYPE_2__* %19)
  %21 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %22 = load i32, i32* @SAVED_STATE_ID_FLAG, align 4
  %23 = call i64 @HAS_STATE_ID(%struct.nfsd4_compound_state* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %26, i32 0, i32 1
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %28, i32 0, i32 0
  %30 = call i32 @memcpy(i32* %27, i32* %29, i32 4)
  %31 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %32 = load i32, i32* @CURRENT_STATE_ID_FLAG, align 4
  %33 = call i32 @SET_STATE_ID(%struct.nfsd4_compound_state* %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %15
  %35 = load i32, i32* @nfs_ok, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @fh_dup2(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @HAS_STATE_ID(%struct.nfsd4_compound_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SET_STATE_ID(%struct.nfsd4_compound_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
