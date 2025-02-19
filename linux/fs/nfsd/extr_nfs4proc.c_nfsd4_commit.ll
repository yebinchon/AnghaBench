; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_commit }
%struct.nfsd4_commit = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_commit(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_commit*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %8 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %9 = bitcast %union.nfsd4_op_u* %8 to %struct.nfsd4_commit*
  store %struct.nfsd4_commit* %9, %struct.nfsd4_commit** %7, align 8
  %10 = load %struct.nfsd4_commit*, %struct.nfsd4_commit** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd4_commit, %struct.nfsd4_commit* %10, i32 0, i32 2
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %13 = call i32 @SVC_NET(%struct.svc_rqst* %12)
  %14 = call i32 @gen_boot_verifier(i32* %11, i32 %13)
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 0
  %18 = load %struct.nfsd4_commit*, %struct.nfsd4_commit** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd4_commit, %struct.nfsd4_commit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsd4_commit*, %struct.nfsd4_commit** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_commit, %struct.nfsd4_commit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nfsd_commit(%struct.svc_rqst* %15, i32* %17, i32 %20, i32 %23)
  ret i32 %24
}

declare dso_local i32 @gen_boot_verifier(i32*, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @nfsd_commit(%struct.svc_rqst*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
