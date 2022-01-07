; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..internal.h_nfs_mark_page_unstable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..internal.h_nfs_mark_page_unstable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@WB_RECLAIMABLE = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.nfs_commit_info*)* @nfs_mark_page_unstable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_mark_page_unstable(%struct.page* %0, %struct.nfs_commit_info* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.nfs_commit_info*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %4, align 8
  %6 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call %struct.TYPE_3__* @page_file_mapping(%struct.page* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %17 = call i32 @inc_node_page_state(%struct.page* %15, i32 %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_4__* @inode_to_bdi(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* @WB_RECLAIMABLE, align 4
  %22 = call i32 @inc_wb_stat(i32* %20, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %25 = call i32 @__mark_inode_dirty(%struct.inode* %23, i32 %24)
  br label %26

26:                                               ; preds = %10, %2
  ret void
}

declare dso_local %struct.TYPE_3__* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @inc_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @inc_wb_stat(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
