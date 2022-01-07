; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_set_inode_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_set_inode_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@OCFS2_DIRSYNC_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @ocfs2_set_inode_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_set_inode_attr(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %13)
  store %struct.ocfs2_inode_info* %14, %struct.ocfs2_inode_info** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocfs2_super* @OCFS2_SB(i32 %17)
  store %struct.ocfs2_super* %18, %struct.ocfs2_super** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @inode_lock(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @ocfs2_inode_lock(%struct.inode* %21, %struct.buffer_head** %10, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %100

28:                                               ; preds = %3
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i32 @inode_owner_or_capable(%struct.inode* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %97

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISDIR(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @OCFS2_DIRSYNC_FL, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @vfs_ioc_setflags_prepare(%struct.inode* %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  br label %97

66:                                               ; preds = %46
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %68 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %69 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %67, i32 %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @PTR_ERR(i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %97

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %81 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = call i32 @ocfs2_set_inode_flags(%struct.inode* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %87 = call i32 @ocfs2_mark_inode_dirty(i32* %84, %struct.inode* %85, %struct.buffer_head* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %93

93:                                               ; preds = %90, %78
  %94 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %94, i32* %95)
  br label %97

97:                                               ; preds = %93, %73, %65, %34
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call i32 @ocfs2_inode_unlock(%struct.inode* %98, i32 1)
  br label %100

100:                                              ; preds = %97, %25
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = call i32 @inode_unlock(%struct.inode* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %104 = call i32 @brelse(%struct.buffer_head* %103)
  %105 = load i32, i32* %12, align 4
  ret i32 %105
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @vfs_ioc_setflags_prepare(%struct.inode*, i32, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
