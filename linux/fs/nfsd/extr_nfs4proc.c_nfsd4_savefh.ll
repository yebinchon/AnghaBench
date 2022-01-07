; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_savefh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_savefh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, i32, i32, i32 }
%union.nfsd4_op_u = type { i32 }

@CURRENT_STATE_ID_FLAG = common dso_local global i32 0, align 4
@SAVED_STATE_ID_FLAG = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_savefh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_savefh(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %7 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %8 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %7, i32 0, i32 3
  %9 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %9, i32 0, i32 2
  %11 = call i32 @fh_dup2(i32* %8, i32* %10)
  %12 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %13 = load i32, i32* @CURRENT_STATE_ID_FLAG, align 4
  %14 = call i64 @HAS_STATE_ID(%struct.nfsd4_compound_state* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %17, i32 0, i32 1
  %19 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %19, i32 0, i32 0
  %21 = call i32 @memcpy(i32* %18, i32* %20, i32 4)
  %22 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %23 = load i32, i32* @SAVED_STATE_ID_FLAG, align 4
  %24 = call i32 @SET_STATE_ID(%struct.nfsd4_compound_state* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load i32, i32* @nfs_ok, align 4
  ret i32 %26
}

declare dso_local i32 @fh_dup2(i32*, i32*) #1

declare dso_local i64 @HAS_STATE_ID(%struct.nfsd4_compound_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SET_STATE_ID(%struct.nfsd4_compound_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
