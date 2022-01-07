; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_get_ds_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_get_ds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_ds_commit_info = type { i32 }
%struct.inode = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.TYPE_3__ = type { %struct.pnfs_layout_hdr* }
%struct.TYPE_4__ = type { %struct.pnfs_ds_commit_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_ds_commit_info* (%struct.inode*)* @filelayout_get_ds_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_ds_commit_info* @filelayout_get_ds_info(%struct.inode* %0) #0 {
  %2 = alloca %struct.pnfs_ds_commit_info*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %7, align 8
  store %struct.pnfs_layout_hdr* %8, %struct.pnfs_layout_hdr** %4, align 8
  %9 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %10 = icmp eq %struct.pnfs_layout_hdr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.pnfs_ds_commit_info* null, %struct.pnfs_ds_commit_info** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %4, align 8
  %14 = call %struct.TYPE_4__* @FILELAYOUT_FROM_HDR(%struct.pnfs_layout_hdr* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.pnfs_ds_commit_info* %15, %struct.pnfs_ds_commit_info** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.pnfs_ds_commit_info*, %struct.pnfs_ds_commit_info** %2, align 8
  ret %struct.pnfs_ds_commit_info* %17
}

declare dso_local %struct.TYPE_3__* @NFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @FILELAYOUT_FROM_HDR(%struct.pnfs_layout_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
