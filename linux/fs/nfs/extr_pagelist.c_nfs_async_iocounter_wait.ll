; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_async_iocounter_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_async_iocounter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_lock_context = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_async_iocounter_wait(%struct.rpc_task* %0, %struct.nfs_lock_context* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_lock_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_lock_context* %1, %struct.nfs_lock_context** %4, align 8
  %7 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.inode* @d_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_4__* @NFS_SERVER(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = call i32 @rpc_sleep_on(i32* %20, %struct.rpc_task* %21, i32* null)
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.TYPE_4__* @NFS_SERVER(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %33 = call i32 @rpc_wake_up_queued_task(i32* %31, %struct.rpc_task* %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @rpc_wake_up_queued_task(i32*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
