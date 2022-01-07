; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_init_conn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_init_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_conn = type { i32 }
%struct.nfsd4_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.nfsd4_conn*, %struct.nfsd4_session*)* @nfsd4_init_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_init_conn(%struct.svc_rqst* %0, %struct.nfsd4_conn* %1, %struct.nfsd4_session* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_conn*, align 8
  %6 = alloca %struct.nfsd4_session*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_conn* %1, %struct.nfsd4_conn** %5, align 8
  store %struct.nfsd4_session* %2, %struct.nfsd4_session** %6, align 8
  %8 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %5, align 8
  %9 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %10 = call i32 @nfsd4_hash_conn(%struct.nfsd4_conn* %8, %struct.nfsd4_session* %9)
  %11 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %5, align 8
  %12 = call i32 @nfsd4_register_conn(%struct.nfsd4_conn* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %16, i32 0, i32 0
  %18 = call i32 @nfsd4_conn_lost(i32* %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nfsd4_probe_callback_sync(i32 %22)
  ret void
}

declare dso_local i32 @nfsd4_hash_conn(%struct.nfsd4_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_register_conn(%struct.nfsd4_conn*) #1

declare dso_local i32 @nfsd4_conn_lost(i32*) #1

declare dso_local i32 @nfsd4_probe_callback_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
