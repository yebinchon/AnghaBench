; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_remove_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_remove_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_DELETE_INODE_CREDITS = common dso_local global i64 0, align 8
@OCFS2_INODE_SKIP_ORPHAN_DIR = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*)* @ocfs2_remove_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_inode(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocfs2_super* @OCFS2_SB(i32 %17)
  store %struct.ocfs2_super* %18, %struct.ocfs2_super** %13, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %22, %struct.ocfs2_dinode** %14, align 8
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %24 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %23, i32 %24, i32 %28)
  store %struct.inode* %29, %struct.inode** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %144

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = call i32 @inode_lock(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @ocfs2_inode_lock(%struct.inode* %40, %struct.buffer_head** %11, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i32 @inode_unlock(%struct.inode* %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %144

49:                                               ; preds = %37
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %51 = load i64, i64* @OCFS2_DELETE_INODE_CREDITS, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ocfs2_quota_trans_credits(i32 %54)
  %56 = add nsw i64 %51, %55
  %57 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %50, i64 %56)
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @PTR_ERR(i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %137

66:                                               ; preds = %49
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %66
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %80 = call i32 @ocfs2_orphan_del(%struct.ocfs2_super* %75, i32* %76, %struct.inode* %77, %struct.inode* %78, %struct.buffer_head* %79, i32 0)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %133

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = call i32 @INODE_CACHE(%struct.inode* %89)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %92 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %93 = call i32 @ocfs2_journal_access_di(i32* %88, i32 %90, %struct.buffer_head* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %133

99:                                               ; preds = %87
  %100 = call i32 (...) @ktime_get_real_seconds()
  %101 = call i32 @cpu_to_le64(i32 %100)
  %102 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %103 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @OCFS2_VALID_FL, align 4
  %105 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = call i32 @cpu_to_le32(i32 %107)
  %109 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %110 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %115 = call i32 @ocfs2_journal_dirty(i32* %113, %struct.buffer_head* %114)
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = call i32 @INODE_CACHE(%struct.inode* %116)
  %118 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %119 = call i32 @ocfs2_remove_from_cache(i32 %117, %struct.buffer_head* %118)
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = call i32 @dquot_free_inode(%struct.inode* %120)
  %122 = load i32*, i32** %12, align 8
  %123 = load %struct.inode*, %struct.inode** %10, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %125 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %126 = call i32 @ocfs2_free_dinode(i32* %122, %struct.inode* %123, %struct.buffer_head* %124, %struct.ocfs2_dinode* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %99
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %132

132:                                              ; preds = %129, %99
  br label %133

133:                                              ; preds = %132, %96, %83
  %134 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %134, i32* %135)
  br label %137

137:                                              ; preds = %133, %61
  %138 = load %struct.inode*, %struct.inode** %10, align 8
  %139 = call i32 @ocfs2_inode_unlock(%struct.inode* %138, i32 1)
  %140 = load %struct.inode*, %struct.inode** %10, align 8
  %141 = call i32 @inode_unlock(%struct.inode* %140)
  %142 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  br label %144

144:                                              ; preds = %137, %44, %32
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = call i32 @iput(%struct.inode* %145)
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i64) #1

declare dso_local i64 @ocfs2_quota_trans_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_orphan_del(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_from_cache(i32, %struct.buffer_head*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_dinode(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
