; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_put_session_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_put_session_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_session = type { i32, %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_session*)* @nfsd4_put_session_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_put_session_locked(%struct.nfsd4_session* %0) #0 {
  %2 = alloca %struct.nfsd4_session*, align 8
  %3 = alloca %struct.nfs4_client*, align 8
  %4 = alloca %struct.nfsd_net*, align 8
  store %struct.nfsd4_session* %0, %struct.nfsd4_session** %2, align 8
  %5 = load %struct.nfsd4_session*, %struct.nfsd4_session** %2, align 8
  %6 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %5, i32 0, i32 1
  %7 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  store %struct.nfs4_client* %7, %struct.nfs4_client** %3, align 8
  %8 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @nfsd_net_id, align 4
  %12 = call %struct.nfsd_net* @net_generic(i32 %10, i32 %11)
  store %struct.nfsd_net* %12, %struct.nfsd_net** %4, align 8
  %13 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.nfsd4_session*, %struct.nfsd4_session** %2, align 8
  %17 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %16, i32 0, i32 0
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.nfsd4_session*, %struct.nfsd4_session** %2, align 8
  %22 = call i64 @is_session_dead(%struct.nfsd4_session* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.nfsd4_session*, %struct.nfsd4_session** %2, align 8
  %26 = call i32 @free_session(%struct.nfsd4_session* %25)
  br label %27

27:                                               ; preds = %24, %20, %1
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %29 = call i32 @put_client_renew_locked(%struct.nfs4_client* %28)
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @is_session_dead(%struct.nfsd4_session*) #1

declare dso_local i32 @free_session(%struct.nfsd4_session*) #1

declare dso_local i32 @put_client_renew_locked(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
