; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_mount_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_mount_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.super_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@xfs_reclaim_worker = common dso_local global i32 0, align 4
@xfs_eofblocks_worker = common dso_local global i32 0, align 4
@xfs_cowblocks_worker = common dso_local global i32 0, align 4
@xfs_kset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_mount* (%struct.super_block*)* @xfs_mount_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_mount* @xfs_mount_alloc(%struct.super_block* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.xfs_mount* @kzalloc(i32 56, i32 %5)
  store %struct.xfs_mount* %6, %struct.xfs_mount** %4, align 8
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %8 = icmp ne %struct.xfs_mount* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.xfs_mount* null, %struct.xfs_mount** %2, align 8
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 11
  store %struct.super_block* %11, %struct.super_block** %13, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 10
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 9
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @INIT_RADIX_TREE(i32* %21, i32 %22)
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %24, i32 0, i32 7
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 6
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 5
  %32 = call i32 @atomic_set(i32* %31, i32 0)
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 4
  %35 = load i32, i32* @xfs_reclaim_worker, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %37, i32 0, i32 3
  %39 = load i32, i32* @xfs_eofblocks_worker, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %41, i32 0, i32 2
  %43 = load i32, i32* @xfs_cowblocks_worker, align 4
  %44 = call i32 @INIT_DELAYED_WORK(i32* %42, i32 %43)
  %45 = load i32, i32* @xfs_kset, align 4
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %51 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  store %struct.xfs_mount* %52, %struct.xfs_mount** %2, align 8
  br label %53

53:                                               ; preds = %10, %9
  %54 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  ret %struct.xfs_mount* %54
}

declare dso_local %struct.xfs_mount* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
