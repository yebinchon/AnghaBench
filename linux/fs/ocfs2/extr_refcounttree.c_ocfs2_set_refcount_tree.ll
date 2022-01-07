; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_set_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_set_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_block = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_REFCOUNT_TREE_SET_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32)* @ocfs2_set_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_set_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_inode_info*, align 8
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  %15 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %19, %struct.ocfs2_dinode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %20)
  store %struct.ocfs2_inode_info* %21, %struct.ocfs2_inode_info** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %26)
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %29, i32 %30, i32 1, %struct.ocfs2_refcount_tree** %15, %struct.buffer_head** %13)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %120

38:                                               ; preds = %3
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %40 = load i32, i32* @OCFS2_REFCOUNT_TREE_SET_CREDITS, align 4
  %41 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %39, i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %113

50:                                               ; preds = %38
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @INODE_CACHE(%struct.inode* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %55 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %56 = call i32 @ocfs2_journal_access_di(i32* %51, i32 %53, %struct.buffer_head* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %109

62:                                               ; preds = %50
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %15, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %64, i32 0, i32 0
  %66 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %67 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %68 = call i32 @ocfs2_journal_access_rb(i32* %63, i32* %65, %struct.buffer_head* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %109

74:                                               ; preds = %62
  %75 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %78, %struct.ocfs2_refcount_block** %14, align 8
  %79 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %80 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %79, i32 0, i32 0
  %81 = call i32 @le32_add_cpu(i32* %80, i32 1)
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %84 = call i32 @ocfs2_journal_dirty(i32* %82, %struct.buffer_head* %83)
  %85 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %86 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %85, i32 0, i32 0
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %89 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %90 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %94 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cpu_to_le16(i32 %95)
  %97 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %98 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @cpu_to_le64(i32 %99)
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %102 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %104 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32*, i32** %9, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %108 = call i32 @ocfs2_journal_dirty(i32* %106, %struct.buffer_head* %107)
  br label %109

109:                                              ; preds = %74, %71, %59
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %110, i32* %111)
  br label %113

113:                                              ; preds = %109, %45
  %114 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %115 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %15, align 8
  %116 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %114, %struct.ocfs2_refcount_tree* %115, i32 1)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %118 = call i32 @brelse(%struct.buffer_head* %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %113, %34
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
