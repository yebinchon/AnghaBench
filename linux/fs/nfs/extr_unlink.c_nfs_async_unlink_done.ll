; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_unlink_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_unlink_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_unlinkdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.rpc_task*, %struct.inode*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs_async_unlink_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_unlink_done(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_unlinkdata*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nfs_unlinkdata*
  store %struct.nfs_unlinkdata* %8, %struct.nfs_unlinkdata** %5, align 8
  %9 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %5, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_nfs_sillyrename_unlink(%struct.nfs_unlinkdata* %15, i32 %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.rpc_task*, %struct.inode*)*, i32 (%struct.rpc_task*, %struct.inode*)** %22, align 8
  %24 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call i32 %23(%struct.rpc_task* %24, %struct.inode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %30 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %29)
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @trace_nfs_sillyrename_unlink(%struct.nfs_unlinkdata*, i32) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
