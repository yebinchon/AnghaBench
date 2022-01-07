; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_layoutstat_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_layoutstat_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs42_layoutstat_data = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.TYPE_6__ = type { %struct.pnfs_layout_hdr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs42_layoutstat_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs42_layoutstat_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs42_layoutstat_data*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nfs42_layoutstat_data*
  store %struct.nfs42_layoutstat_data* %10, %struct.nfs42_layoutstat_data** %5, align 8
  %11 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %12 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %11, i32 0, i32 2
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.TYPE_6__* @NFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %21, align 8
  store %struct.pnfs_layout_hdr* %22, %struct.pnfs_layout_hdr** %8, align 8
  %23 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %24 = call i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %31 = call i32 @rpc_exit(%struct.rpc_task* %30, i32 0)
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %34 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %36, i32 0, i32 0
  %38 = call i32 @nfs4_stateid_copy(i32* %35, i32* %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %43 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %46 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %49 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %52 = call i32 @nfs4_setup_sequence(i32 %44, i32* %47, i32* %50, %struct.rpc_task* %51)
  br label %53

53:                                               ; preds = %32, %26
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i32) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
