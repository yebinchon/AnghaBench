; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_conn_from_crses.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_conn_from_crses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_conn = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_create_session = type { i32 }

@NFS4_CDFC4_FORE = common dso_local global i32 0, align 4
@SESSION4_BACK_CHAN = common dso_local global i32 0, align 4
@NFS4_CDFC4_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd4_conn* (%struct.svc_rqst*, %struct.nfsd4_create_session*)* @alloc_conn_from_crses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd4_conn* @alloc_conn_from_crses(%struct.svc_rqst* %0, %struct.nfsd4_create_session* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd4_create_session*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.nfsd4_create_session* %1, %struct.nfsd4_create_session** %4, align 8
  %6 = load i32, i32* @NFS4_CDFC4_FORE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SESSION4_BACK_CHAN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @NFS4_CDFC4_BACK, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.nfsd4_conn* @alloc_conn(%struct.svc_rqst* %18, i32 %19)
  ret %struct.nfsd4_conn* %20
}

declare dso_local %struct.nfsd4_conn* @alloc_conn(%struct.svc_rqst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
