; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i64, i64 }
%struct.ocfs2_refcount_tree = type { %struct.ocfs2_caching_info }
%struct.ocfs2_caching_info = type { i32 }

@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_remove(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca %struct.ocfs2_refcount_tree*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %13)
  store %struct.ocfs2_inode_info* %14, %struct.ocfs2_inode_info** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %18, %struct.ocfs2_dinode** %7, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_caching_info* null, %struct.ocfs2_caching_info** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OCFS2_SB(i32 %21)
  %23 = call i32 @ocfs2_supports_xattr(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

26:                                               ; preds = %2
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %172

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OCFS2_SB(i32 %41)
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @le64_to_cpu(i64 %45)
  %47 = call i32 @ocfs2_lock_refcount_tree(i32 %42, i32 %46, i32 1, %struct.ocfs2_refcount_tree** %8, %struct.buffer_head** %9)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %158

53:                                               ; preds = %38
  %54 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %54, i32 0, i32 0
  store %struct.ocfs2_caching_info* %55, %struct.ocfs2_caching_info** %10, align 8
  br label %56

56:                                               ; preds = %53, %34
  %57 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %58 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = call i32 @ocfs2_xattr_ibody_remove(%struct.inode* %64, %struct.buffer_head* %65, %struct.ocfs2_caching_info* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %158

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @le64_to_cpu(i64 %84)
  %86 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %88 = call i32 @ocfs2_xattr_free_block(%struct.inode* %81, i32 %85, %struct.ocfs2_caching_info* %86, %struct.buffer_head* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %158

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OCFS2_SB(i32 %98)
  %100 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %101 = call i32* @ocfs2_start_trans(i32 %99, i32 %100)
  store i32* %101, i32** %11, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 @IS_ERR(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @PTR_ERR(i32* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %158

110:                                              ; preds = %95
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = call i32 @INODE_CACHE(%struct.inode* %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %115 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %116 = call i32 @ocfs2_journal_access_di(i32* %111, i32 %113, %struct.buffer_head* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %151

122:                                              ; preds = %110
  %123 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %124 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %126 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %125, i32 0, i32 1
  %127 = call i32 @spin_lock(i32* %126)
  %128 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %129 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %133 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %137 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @cpu_to_le16(i32 %138)
  %140 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %141 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %143 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %142, i32 0, i32 1
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32*, i32** %11, align 8
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = call i32 @ocfs2_update_inode_fsync_trans(i32* %145, %struct.inode* %146, i32 0)
  %148 = load i32*, i32** %11, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %150 = call i32 @ocfs2_journal_dirty(i32* %148, %struct.buffer_head* %149)
  br label %151

151:                                              ; preds = %122, %119
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @OCFS2_SB(i32 %154)
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @ocfs2_commit_trans(i32 %155, i32* %156)
  br label %158

158:                                              ; preds = %151, %105, %91, %71, %50
  %159 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %8, align 8
  %160 = icmp ne %struct.ocfs2_refcount_tree* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.inode*, %struct.inode** %4, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @OCFS2_SB(i32 %164)
  %166 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %8, align 8
  %167 = call i32 @ocfs2_unlock_refcount_tree(i32 %165, %struct.ocfs2_refcount_tree* %166, i32 1)
  br label %168

168:                                              ; preds = %161, %158
  %169 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %170 = call i32 @brelse(%struct.buffer_head* %169)
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %33, %25
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(i32, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_ibody_remove(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_xattr_free_block(%struct.inode*, i32, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(i32, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
