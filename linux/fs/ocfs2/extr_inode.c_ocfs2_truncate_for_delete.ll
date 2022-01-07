; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_truncate_for_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_truncate_for_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i64 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*)* @ocfs2_truncate_for_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_truncate_for_delete(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca i32*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %13, %struct.ocfs2_dinode** %8, align 8
  %14 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %15 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i64 @ocfs2_should_order_data(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @ocfs2_begin_ordered_truncate(%struct.inode* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %27 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %28 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %26, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %76

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 @INODE_CACHE(%struct.inode* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %43 = call i32 @ocfs2_journal_access_di(i32* %38, i32 %40, %struct.buffer_head* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %76

49:                                               ; preds = %37
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @i_size_write(%struct.inode* %50, i32 0)
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %55 = call i32 @ocfs2_mark_inode_dirty(i32* %52, %struct.inode* %53, %struct.buffer_head* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %76

61:                                               ; preds = %49
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %62, i32* %63)
  store i32* null, i32** %9, align 8
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %68 = call i32 @ocfs2_commit_truncate(%struct.ocfs2_super* %65, %struct.inode* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %74

74:                                               ; preds = %71, %61
  br label %75

75:                                               ; preds = %74, %3
  br label %76

76:                                               ; preds = %75, %58, %46, %32
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %80, i32* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32 @ocfs2_begin_ordered_truncate(%struct.inode*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_commit_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
