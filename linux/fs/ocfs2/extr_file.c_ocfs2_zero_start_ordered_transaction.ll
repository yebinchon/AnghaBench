; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_zero_start_ordered_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_zero_start_ordered_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.inode*, %struct.buffer_head*, i32, i32)* @ocfs2_zero_start_ordered_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ocfs2_zero_start_ordered_transaction(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i32 @ocfs2_should_order_data(%struct.inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %59

20:                                               ; preds = %4
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %22 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %23 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %21, i32 %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %59

32:                                               ; preds = %20
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ocfs2_jbd2_inode_add_write(i32* %33, %struct.inode* %34, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %59

43:                                               ; preds = %32
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @INODE_CACHE(%struct.inode* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %48 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %49 = call i32 @ocfs2_journal_access_di(i32* %44, i32 %46, %struct.buffer_head* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call i32 @ocfs2_update_inode_fsync_trans(i32* %56, %struct.inode* %57, i32 1)
  br label %59

59:                                               ; preds = %55, %40, %27, %19
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %67, i32* %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %11, align 4
  %72 = call i32* @ERR_PTR(i32 %71)
  store i32* %72, i32** %10, align 8
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i32*, i32** %10, align 8
  ret i32* %74
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_jbd2_inode_add_write(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
