; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_force_expire_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_force_expire_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32*, i32, i32, i32, i64, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@expiry_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*)* @force_expire_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_expire_client(%struct.nfs4_client* %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca %struct.nfsd_net*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_client* %0, %struct.nfs4_client** %2, align 8
  %5 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @nfsd_net_id, align 4
  %9 = call %struct.nfsd_net* @net_generic(i32 %7, i32 %8)
  store %struct.nfsd_net* %9, %struct.nfsd_net** %3, align 8
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %10, i32 0, i32 3
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %16 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %15, i32 0, i32 3
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load i32, i32* @expiry_wq, align 4
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %20 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %19, i32 0, i32 2
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_event(i32 %18, i32 %23)
  %25 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %26 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %29 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %28, i32 0, i32 1
  %30 = call i32 @list_empty(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %35 = call i32 @unhash_client_locked(%struct.nfs4_client* %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %38 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %44 = call i32 @expire_client(%struct.nfs4_client* %43)
  br label %53

45:                                               ; preds = %36
  %46 = load i32, i32* @expiry_wq, align 4
  %47 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %48 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event(i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @unhash_client_locked(%struct.nfs4_client*) #1

declare dso_local i32 @expire_client(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
