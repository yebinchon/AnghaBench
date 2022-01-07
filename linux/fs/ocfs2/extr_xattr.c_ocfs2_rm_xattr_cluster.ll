; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_rm_xattr_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_rm_xattr_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_xattr_block = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ocfs2_delete_xattr_in_bucket = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i32, i32, i8*)* @ocfs2_rm_xattr_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rm_xattr_cluster(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_super*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ocfs2_xattr_block*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  %20 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %21 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %15, align 8
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %16, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %32, %struct.ocfs2_xattr_block** %18, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @ocfs2_delete_xattr_in_bucket, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @ocfs2_iterate_xattr_buckets(%struct.inode* %33, i64 %34, i32 %35, i32 %36, i8* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %168

45:                                               ; preds = %6
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @INODE_CACHE(%struct.inode* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree* %21, i32 %47, %struct.buffer_head* %48)
  %50 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %20)
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @trace_ocfs2_rm_xattr_cluster(i64 %54, i64 %55, i32 %56, i32 %57)
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ocfs2_remove_xattr_clusters_from_cache(i32 %60, i64 %61, i32 %62)
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @ocfs2_lock_allocators(%struct.inode* %64, %struct.ocfs2_extent_tree* %21, i32 0, i32 1, i32* null, %struct.ocfs2_alloc_context** %19)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %45
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %168

72:                                               ; preds = %45
  %73 = load %struct.inode*, %struct.inode** %16, align 8
  %74 = call i32 @inode_lock(%struct.inode* %73)
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %76 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %80 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %154

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %90 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ocfs2_remove_extent_credits(i32 %91)
  %93 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %88, i32 %92)
  store i32* %93, i32** %17, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i64 @IS_ERR(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %154

102:                                              ; preds = %87
  %103 = load i32*, i32** %17, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call i32 @INODE_CACHE(%struct.inode* %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %107 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %108 = call i32 @ocfs2_journal_access_xb(i32* %103, i32 %105, %struct.buffer_head* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %150

114:                                              ; preds = %102
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %119 = call i32 @ocfs2_remove_extent(i32* %115, %struct.ocfs2_extent_tree* %21, i32 %116, i32 %117, %struct.ocfs2_alloc_context* %118, %struct.ocfs2_cached_dealloc_ctxt* %20)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %150

125:                                              ; preds = %114
  %126 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %127 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 0, %130
  %132 = call i32 @le32_add_cpu(i32* %129, i32 %131)
  %133 = load i32*, i32** %17, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %135 = call i32 @ocfs2_journal_dirty(i32* %133, %struct.buffer_head* %134)
  %136 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %136, i32* %137, i64 %138, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @mlog_errno(i32 %144)
  br label %146

146:                                              ; preds = %143, %125
  %147 = load i32*, i32** %17, align 8
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @ocfs2_update_inode_fsync_trans(i32* %147, %struct.inode* %148, i32 0)
  br label %150

150:                                              ; preds = %146, %122, %111
  %151 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %151, i32* %152)
  br label %154

154:                                              ; preds = %150, %97, %83
  %155 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %156 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %155, i32 1)
  %157 = load %struct.inode*, %struct.inode** %16, align 8
  %158 = call i32 @inode_unlock(%struct.inode* %157)
  %159 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %160 = icmp ne %struct.ocfs2_alloc_context* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %163 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %162)
  br label %164

164:                                              ; preds = %161, %154
  %165 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %166 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %165, %struct.ocfs2_cached_dealloc_ctxt* %20)
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %164, %68, %41
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_iterate_xattr_buckets(%struct.inode*, i64, i32, i32, i8*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @trace_ocfs2_rm_xattr_cluster(i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_remove_xattr_clusters_from_cache(i32, i64, i32) #1

declare dso_local i32 @ocfs2_lock_allocators(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_remove_extent_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_xb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_remove_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i64, i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
