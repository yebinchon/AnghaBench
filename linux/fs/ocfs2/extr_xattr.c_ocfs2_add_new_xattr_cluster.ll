; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_add_new_xattr_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_add_new_xattr_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32, i32* }
%struct.ocfs2_super = type { i64, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_MAX_XATTR_TREE_LEAF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i32*, i32, i32*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_add_new_xattr_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_new_xattr_cluster(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket* %3, i32* %4, i32 %5, i32* %6, %struct.ocfs2_xattr_set_ctxt* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %12 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.ocfs2_super*, align 8
  %27 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %11, align 8
  store %struct.ocfs2_xattr_bucket* %3, %struct.ocfs2_xattr_bucket** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.ocfs2_xattr_set_ctxt* %7, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ocfs2_clusters_to_blocks(i32 %30, i32 1)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %18, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %35 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %25, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ocfs2_super* @OCFS2_SB(i32 %40)
  store %struct.ocfs2_super* %41, %struct.ocfs2_super** %26, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %47 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %46)
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @trace_ocfs2_add_new_xattr_cluster_begin(i64 %45, i64 %47, i32 %48, i32 %49)
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @INODE_CACHE(%struct.inode* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %54 = call i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree* %27, i32 %52, %struct.buffer_head* %53)
  %55 = load i32*, i32** %25, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @INODE_CACHE(%struct.inode* %56)
  %58 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %59 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %60 = call i32 @ocfs2_journal_access_xb(i32* %55, i32 %57, %struct.buffer_head* %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %165

66:                                               ; preds = %8
  %67 = load i32*, i32** %25, align 8
  %68 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %69 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @__ocfs2_claim_clusters(i32* %67, i32 %70, i32 1, i32 %71, i32* %21, i32* %22)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @ENOSPC, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %165

84:                                               ; preds = %66
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp sgt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @BUG_ON(i32 %88)
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %91 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = call i8* @ocfs2_clusters_to_blocks(i32 %92, i32 %93)
  %95 = ptrtoint i8* %94 to i64
  store i64 %95, i64* %24, align 8
  %96 = load i64, i64* %24, align 8
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @trace_ocfs2_add_new_xattr_cluster(i64 %96, i32 %97)
  %99 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %100 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %99)
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %18, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = load i64, i64* %24, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %84
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %113 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = shl i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @OCFS2_MAX_XATTR_TREE_LEAF_SIZE, align 8
  %119 = icmp sle i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %108
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32*, i32** %13, align 8
  store i32 %126, i32* %127, align 4
  br label %143

128:                                              ; preds = %108, %84
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = load i32*, i32** %25, align 8
  %131 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %132 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %133 = load i64, i64* %24, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @ocfs2_adjust_xattr_cross_cluster(%struct.inode* %129, i32* %130, %struct.ocfs2_xattr_bucket* %131, %struct.ocfs2_xattr_bucket* %132, i64 %133, i32 %134, i32* %23, i32* %135)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %165

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %120
  %144 = load i64, i64* %24, align 8
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @trace_ocfs2_add_new_xattr_cluster_insert(i64 %144, i32 %145, i32 %146)
  %148 = load i32*, i32** %25, align 8
  %149 = load i32, i32* %23, align 4
  %150 = load i64, i64* %24, align 8
  %151 = load i32, i32* %22, align 4
  %152 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %153 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ocfs2_insert_extent(i32* %148, %struct.ocfs2_extent_tree* %27, i32 %149, i64 %150, i32 %151, i32 0, i32 %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %143
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @mlog_errno(i32 %159)
  br label %165

161:                                              ; preds = %143
  %162 = load i32*, i32** %25, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %164 = call i32 @ocfs2_journal_dirty(i32* %162, %struct.buffer_head* %163)
  br label %165

165:                                              ; preds = %161, %158, %139, %83, %63
  %166 = load i32, i32* %17, align 4
  ret i32 %166
}

declare dso_local i8* @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_add_new_xattr_cluster_begin(i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_xb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @__ocfs2_claim_clusters(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_add_new_xattr_cluster(i64, i32) #1

declare dso_local i32 @ocfs2_adjust_xattr_cross_cluster(%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i64, i32, i32*, i32*) #1

declare dso_local i32 @trace_ocfs2_add_new_xattr_cluster_insert(i64, i32, i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
