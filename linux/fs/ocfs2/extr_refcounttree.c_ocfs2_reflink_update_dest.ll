; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_update_dest.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_update_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reflink_update_dest(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i32 @ocfs2_inode_sector_count(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call i64 @i_size_read(%struct.inode* %15)
  %17 = icmp sle i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @OCFS2_SB(i32 %22)
  %24 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %25 = call i32* @ocfs2_start_trans(i32 %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %77

35:                                               ; preds = %19
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i64 @i_size_read(%struct.inode* %41)
  %43 = icmp sgt i64 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @i_size_write(%struct.inode* %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @current_time(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %62 = call i32 @ocfs2_mark_inode_dirty(i32* %59, %struct.inode* %60, %struct.buffer_head* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %69

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %65
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OCFS2_SB(i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @ocfs2_commit_trans(i32 %73, i32* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %29, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
