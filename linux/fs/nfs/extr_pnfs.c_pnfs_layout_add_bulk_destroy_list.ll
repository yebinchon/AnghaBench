; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_add_bulk_destroy_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_add_bulk_destroy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.TYPE_2__ = type { %struct.pnfs_layout_hdr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.list_head*)* @pnfs_layout_add_bulk_destroy_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_layout_add_bulk_destroy_list(%struct.inode* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.pnfs_layout_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %12, align 8
  store %struct.pnfs_layout_hdr* %13, %struct.pnfs_layout_hdr** %5, align 8
  %14 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %15 = icmp ne %struct.pnfs_layout_hdr* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %23 = call i32 @pnfs_get_layout_hdr(%struct.pnfs_layout_hdr* %22)
  %24 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %24, i32 0, i32 0
  %26 = load %struct.list_head*, %struct.list_head** %4, align 8
  %27 = call i32 @list_add(i32* %25, %struct.list_head* %26)
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %16, %2
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pnfs_get_layout_hdr(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
