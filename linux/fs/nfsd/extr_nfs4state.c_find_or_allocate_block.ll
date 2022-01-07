; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_or_allocate_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_find_or_allocate_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_blocked_lock = type { i32, i32, i32 }
%struct.nfs4_lockowner = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.knfsd_fh = type { i32 }
%struct.nfsd_net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfsd4_cb_notify_lock_ops = common dso_local global i32 0, align 4
@NFSPROC4_CLNT_CB_NOTIFY_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd4_blocked_lock* (%struct.nfs4_lockowner*, %struct.knfsd_fh*, %struct.nfsd_net*)* @find_or_allocate_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd4_blocked_lock* @find_or_allocate_block(%struct.nfs4_lockowner* %0, %struct.knfsd_fh* %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca %struct.nfs4_lockowner*, align 8
  %5 = alloca %struct.knfsd_fh*, align 8
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca %struct.nfsd4_blocked_lock*, align 8
  store %struct.nfs4_lockowner* %0, %struct.nfs4_lockowner** %4, align 8
  store %struct.knfsd_fh* %1, %struct.knfsd_fh** %5, align 8
  store %struct.nfsd_net* %2, %struct.nfsd_net** %6, align 8
  %8 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %4, align 8
  %9 = load %struct.knfsd_fh*, %struct.knfsd_fh** %5, align 8
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %11 = call %struct.nfsd4_blocked_lock* @find_blocked_lock(%struct.nfs4_lockowner* %8, %struct.knfsd_fh* %9, %struct.nfsd_net* %10)
  store %struct.nfsd4_blocked_lock* %11, %struct.nfsd4_blocked_lock** %7, align 8
  %12 = load %struct.nfsd4_blocked_lock*, %struct.nfsd4_blocked_lock** %7, align 8
  %13 = icmp ne %struct.nfsd4_blocked_lock* %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nfsd4_blocked_lock* @kmalloc(i32 12, i32 %15)
  store %struct.nfsd4_blocked_lock* %16, %struct.nfsd4_blocked_lock** %7, align 8
  %17 = load %struct.nfsd4_blocked_lock*, %struct.nfsd4_blocked_lock** %7, align 8
  %18 = icmp ne %struct.nfsd4_blocked_lock* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.nfsd4_blocked_lock*, %struct.nfsd4_blocked_lock** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_blocked_lock, %struct.nfsd4_blocked_lock* %20, i32 0, i32 2
  %22 = load %struct.knfsd_fh*, %struct.knfsd_fh** %5, align 8
  %23 = call i32 @fh_copy_shallow(i32* %21, %struct.knfsd_fh* %22)
  %24 = load %struct.nfsd4_blocked_lock*, %struct.nfsd4_blocked_lock** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_blocked_lock, %struct.nfsd4_blocked_lock* %24, i32 0, i32 1
  %26 = call i32 @locks_init_lock(i32* %25)
  %27 = load %struct.nfsd4_blocked_lock*, %struct.nfsd4_blocked_lock** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_blocked_lock, %struct.nfsd4_blocked_lock* %27, i32 0, i32 0
  %29 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFSPROC4_CLNT_CB_NOTIFY_LOCK, align 4
  %34 = call i32 @nfsd4_init_cb(i32* %28, i32 %32, i32* @nfsd4_cb_notify_lock_ops, i32 %33)
  br label %35

35:                                               ; preds = %19, %14
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.nfsd4_blocked_lock*, %struct.nfsd4_blocked_lock** %7, align 8
  ret %struct.nfsd4_blocked_lock* %37
}

declare dso_local %struct.nfsd4_blocked_lock* @find_blocked_lock(%struct.nfs4_lockowner*, %struct.knfsd_fh*, %struct.nfsd_net*) #1

declare dso_local %struct.nfsd4_blocked_lock* @kmalloc(i32, i32) #1

declare dso_local i32 @fh_copy_shallow(i32*, %struct.knfsd_fh*) #1

declare dso_local i32 @locks_init_lock(i32*) #1

declare dso_local i32 @nfsd4_init_cb(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
