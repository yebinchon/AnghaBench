; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_modify_bh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_modify_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }

@OCFS2_QUOTA_BLOCK_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, void (%struct.buffer_head*, i8*)*, i8*)* @ocfs2_modify_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_modify_bh(%struct.inode* %0, %struct.buffer_head* %1, void (%struct.buffer_head*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca void (%struct.buffer_head*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store void (%struct.buffer_head*, i8*)* %2, void (%struct.buffer_head*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %10, align 8
  %17 = call i32 @OCFS2_SB(%struct.super_block* %16)
  %18 = load i32, i32* @OCFS2_QUOTA_BLOCK_UPDATE_CREDITS, align 4
  %19 = call i32* @ocfs2_start_trans(i32 %17, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @IS_ERR(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @PTR_ERR(i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @INODE_CACHE(%struct.inode* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %34 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %35 = call i32 @ocfs2_journal_access_dq(i32* %30, i32 %32, %struct.buffer_head* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  %41 = load %struct.super_block*, %struct.super_block** %10, align 8
  %42 = call i32 @OCFS2_SB(%struct.super_block* %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @ocfs2_commit_trans(i32 %42, i32* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %68

46:                                               ; preds = %29
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @lock_buffer(%struct.buffer_head* %47)
  %49 = load void (%struct.buffer_head*, i8*)*, void (%struct.buffer_head*, i8*)** %8, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = load i8*, i8** %9, align 8
  call void %49(%struct.buffer_head* %50, i8* %51)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = call i32 @unlock_buffer(%struct.buffer_head* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @ocfs2_journal_dirty(i32* %54, %struct.buffer_head* %55)
  %57 = load %struct.super_block*, %struct.super_block** %10, align 8
  %58 = call i32 @OCFS2_SB(%struct.super_block* %57)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @ocfs2_commit_trans(i32 %58, i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %68

67:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %63, %38, %23
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_dq(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
