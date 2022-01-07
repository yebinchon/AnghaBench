; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cb_recall_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cb_recall_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_callback = type { i32 }
%struct.nfs4_delegation = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@state_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_callback*)* @nfsd4_cb_recall_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_cb_recall_prepare(%struct.nfsd4_callback* %0) #0 {
  %2 = alloca %struct.nfsd4_callback*, align 8
  %3 = alloca %struct.nfs4_delegation*, align 8
  %4 = alloca %struct.nfsd_net*, align 8
  store %struct.nfsd4_callback* %0, %struct.nfsd4_callback** %2, align 8
  %5 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %2, align 8
  %6 = call %struct.nfs4_delegation* @cb_to_delegation(%struct.nfsd4_callback* %5)
  store %struct.nfs4_delegation* %6, %struct.nfs4_delegation** %3, align 8
  %7 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @nfsd_net_id, align 4
  %14 = call %struct.nfsd_net* @net_generic(i32 %12, i32 %13)
  store %struct.nfsd_net* %14, %struct.nfsd_net** %4, align 8
  %15 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @block_delegations(i32* %19)
  %21 = call i32 @spin_lock(i32* @state_lock)
  %22 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = call i64 (...) @get_seconds()
  %28 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %29 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %31 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %30, i32 0, i32 1
  %32 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %33 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = call i32 @spin_unlock(i32* @state_lock)
  ret void
}

declare dso_local %struct.nfs4_delegation* @cb_to_delegation(%struct.nfsd4_callback*) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @block_delegations(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
