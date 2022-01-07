; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_destroy_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_destroy_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_inode = type { %struct.TYPE_2__, %struct.pnfs_layout_hdr* }
%struct.TYPE_2__ = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }

@tmp_list = common dso_local global i32 0, align 4
@NFS_LAYOUT_RO_FAILED = common dso_local global i32 0, align 4
@NFS_LAYOUT_RW_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_destroy_layout(%struct.nfs_inode* %0) #0 {
  %2 = alloca %struct.nfs_inode*, align 8
  %3 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.nfs_inode* %0, %struct.nfs_inode** %2, align 8
  %4 = load i32, i32* @tmp_list, align 4
  %5 = call i32 @LIST_HEAD(i32 %4)
  %6 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %10, i32 0, i32 1
  %12 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %11, align 8
  store %struct.pnfs_layout_hdr* %12, %struct.pnfs_layout_hdr** %3, align 8
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %14 = icmp ne %struct.pnfs_layout_hdr* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %17 = call i32 @pnfs_get_layout_hdr(%struct.pnfs_layout_hdr* %16)
  %18 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %19 = call i32 @pnfs_mark_layout_stateid_invalid(%struct.pnfs_layout_hdr* %18, i32* @tmp_list)
  %20 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %21 = load i32, i32* @NFS_LAYOUT_RO_FAILED, align 4
  %22 = call i32 @pnfs_layout_clear_fail_bit(%struct.pnfs_layout_hdr* %20, i32 %21)
  %23 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %24 = load i32, i32* @NFS_LAYOUT_RW_FAILED, align 4
  %25 = call i32 @pnfs_layout_clear_fail_bit(%struct.pnfs_layout_hdr* %23, i32 %24)
  %26 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %27 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 @pnfs_free_lseg_list(i32* @tmp_list)
  %31 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %31, i32 0, i32 0
  %33 = call i32 @nfs_commit_inode(%struct.TYPE_2__* %32, i32 0)
  %34 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %35 = call i32 @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr* %34)
  br label %41

36:                                               ; preds = %1
  %37 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %38 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pnfs_get_layout_hdr(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @pnfs_mark_layout_stateid_invalid(%struct.pnfs_layout_hdr*, i32*) #1

declare dso_local i32 @pnfs_layout_clear_fail_bit(%struct.pnfs_layout_hdr*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pnfs_free_lseg_list(i32*) #1

declare dso_local i32 @nfs_commit_inode(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pnfs_put_layout_hdr(%struct.pnfs_layout_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
