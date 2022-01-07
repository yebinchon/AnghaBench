; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_get_client_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_get_client_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_expired = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_client*)* @get_client_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_client_locked(%struct.nfs4_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_client*, align 8
  %4 = alloca %struct.nfsd_net*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %3, align 8
  %5 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @nfsd_net_id, align 4
  %9 = call %struct.nfsd_net* @net_generic(i32 %7, i32 %8)
  store %struct.nfsd_net* %9, %struct.nfsd_net** %4, align 8
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %11 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %14 = call i64 @is_client_expired(%struct.nfs4_client* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @nfserr_expired, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc(i32* %20)
  %22 = load i32, i32* @nfs_ok, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @is_client_expired(%struct.nfs4_client*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
