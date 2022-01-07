; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_offload_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_offload_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_offload_status }
%struct.nfsd4_offload_status = type { i32, i32 }
%struct.nfsd4_copy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nfserr_bad_stateid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_offload_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_offload_status(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_offload_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsd4_copy*, align 8
  %10 = alloca %struct.nfs4_client*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %11 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %12 = bitcast %union.nfsd4_op_u* %11 to %struct.nfsd4_offload_status*
  store %struct.nfsd4_offload_status* %12, %struct.nfsd4_offload_status** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 0
  %15 = load %struct.nfs4_client*, %struct.nfs4_client** %14, align 8
  store %struct.nfs4_client* %15, %struct.nfs4_client** %10, align 8
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %17 = load %struct.nfsd4_offload_status*, %struct.nfsd4_offload_status** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_offload_status, %struct.nfsd4_offload_status* %17, i32 0, i32 1
  %19 = call %struct.nfsd4_copy* @find_async_copy(%struct.nfs4_client* %16, i32* %18)
  store %struct.nfsd4_copy* %19, %struct.nfsd4_copy** %9, align 8
  %20 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %21 = icmp ne %struct.nfsd4_copy* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %24 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsd4_offload_status*, %struct.nfsd4_offload_status** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_offload_status, %struct.nfsd4_offload_status* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %9, align 8
  %30 = call i32 @nfs4_put_copy(%struct.nfsd4_copy* %29)
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @nfserr_bad_stateid, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.nfsd4_copy* @find_async_copy(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @nfs4_put_copy(%struct.nfsd4_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
