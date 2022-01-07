; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, %struct.nfs_unlinkdata* }
%struct.nfs_unlinkdata = type { i32, %struct.nfs_removeres }
%struct.nfs_removeres = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*)* @nfs4_proc_unlink_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_unlink_done(%struct.rpc_task* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_unlinkdata*, align 8
  %7 = alloca %struct.nfs_removeres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 1
  %10 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %9, align 8
  store %struct.nfs_unlinkdata* %10, %struct.nfs_unlinkdata** %6, align 8
  %11 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %11, i32 0, i32 1
  store %struct.nfs_removeres* %12, %struct.nfs_removeres** %7, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = load %struct.nfs_removeres*, %struct.nfs_removeres** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %14, i32 0, i32 3
  %16 = call i32 @nfs4_sequence_done(%struct.rpc_task* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %21 = load %struct.nfs_removeres*, %struct.nfs_removeres** %7, align 8
  %22 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %24, i32 0, i32 0
  %26 = call i32 @nfs4_async_handle_error(%struct.rpc_task* %20, i32 %23, i32* null, i32* %25)
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.nfs_removeres*, %struct.nfs_removeres** %7, align 8
  %39 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %38, i32 0, i32 1
  %40 = load %struct.nfs_removeres*, %struct.nfs_removeres** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @update_changeattr(%struct.inode* %37, i32* %39, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %36, %31
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %30, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

declare dso_local i32 @nfs4_async_handle_error(%struct.rpc_task*, i32, i32*, i32*) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
