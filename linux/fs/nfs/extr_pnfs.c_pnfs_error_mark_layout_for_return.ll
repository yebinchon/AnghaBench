; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_error_mark_layout_for_return.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_error_mark_layout_for_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.pnfs_layout_segment = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pnfs_layout_hdr = type { i32 }
%struct.pnfs_layout_range = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.pnfs_layout_hdr* }

@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_error_mark_layout_for_return(%struct.inode* %0, %struct.pnfs_layout_segment* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca %struct.pnfs_layout_hdr*, align 8
  %6 = alloca %struct.pnfs_layout_range, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %12, align 8
  store %struct.pnfs_layout_hdr* %13, %struct.pnfs_layout_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 0
  %15 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %16 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 1
  %20 = load i32, i32* @NFS4_MAX_UINT64, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 2
  store i32 0, i32* %21, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %26 = call i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  br label %63

32:                                               ; preds = %2
  %33 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pnfs_set_plh_return_info(%struct.pnfs_layout_hdr* %33, i32 %35, i32 0)
  %37 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %38, i32 0, i32 0
  %40 = call i32 @pnfs_mark_matching_lsegs_return(%struct.pnfs_layout_hdr* %37, i32* %39, %struct.pnfs_layout_range* %6, i32 0)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %46 = call i32 @pnfs_prepare_layoutreturn(%struct.pnfs_layout_hdr* %45, i32* %8, i32* %9)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @pnfs_send_layoutreturn(%struct.pnfs_layout_hdr* %53, i32* %8, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52, %44
  br label %63

57:                                               ; preds = %32
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = call i32 @nfs_commit_inode(%struct.inode* %61, i32 0)
  br label %63

63:                                               ; preds = %28, %57, %56
  ret void
}

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pnfs_set_plh_return_info(%struct.pnfs_layout_hdr*, i32, i32) #1

declare dso_local i32 @pnfs_mark_matching_lsegs_return(%struct.pnfs_layout_hdr*, i32*, %struct.pnfs_layout_range*, i32) #1

declare dso_local i32 @pnfs_prepare_layoutreturn(%struct.pnfs_layout_hdr*, i32*, i32*) #1

declare dso_local i32 @pnfs_send_layoutreturn(%struct.pnfs_layout_hdr*, i32*, i32, i32) #1

declare dso_local i32 @nfs_commit_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
