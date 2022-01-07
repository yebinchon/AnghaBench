; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_access }
%struct.nfsd4_access = type { i32, i32, i32 }

@NFS3_ACCESS_FULL = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_access(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_access*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %9 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %10 = bitcast %union.nfsd4_op_u* %9 to %struct.nfsd4_access*
  store %struct.nfsd4_access* %10, %struct.nfsd4_access** %8, align 8
  %11 = load %struct.nfsd4_access*, %struct.nfsd4_access** %8, align 8
  %12 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NFS3_ACCESS_FULL, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @nfserr_inval, align 4
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.nfsd4_access*, %struct.nfsd4_access** %8, align 8
  %22 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfsd4_access*, %struct.nfsd4_access** %8, align 8
  %25 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %27 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %27, i32 0, i32 0
  %29 = load %struct.nfsd4_access*, %struct.nfsd4_access** %8, align 8
  %30 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %29, i32 0, i32 1
  %31 = load %struct.nfsd4_access*, %struct.nfsd4_access** %8, align 8
  %32 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %31, i32 0, i32 2
  %33 = call i32 @nfsd_access(%struct.svc_rqst* %26, i32* %28, i32* %30, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %20, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nfsd_access(%struct.svc_rqst*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
