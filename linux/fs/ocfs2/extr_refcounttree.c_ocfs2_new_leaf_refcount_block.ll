; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_new_leaf_refcount_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_new_leaf_refcount_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_refcount_block = type { i32, %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8* }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_4__ = type { i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_LEAF_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*)* @ocfs2_new_leaf_refcount_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_new_leaf_refcount_block(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca %struct.ocfs2_refcount_block*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_refcount_block*, align 8
  %21 = alloca %struct.ocfs2_extent_tree, align 4
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  %22 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %23 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %22)
  store %struct.super_block* %23, %struct.super_block** %17, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %27, %struct.ocfs2_refcount_block** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %28 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %18, align 8
  %29 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @le32_to_cpu(i8* %30)
  %32 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %42 = call i32 @ocfs2_journal_access_rb(i32* %38, %struct.ocfs2_caching_info* %39, %struct.buffer_head* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %5
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %189

48:                                               ; preds = %5
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %53 = call i32 @ocfs2_journal_access_rb(i32* %49, %struct.ocfs2_caching_info* %50, %struct.buffer_head* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %189

59:                                               ; preds = %48
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %62 = call i32 @ocfs2_claim_metadata(i32* %60, %struct.ocfs2_alloc_context* %61, i32 1, i64* %15, i32* %12, i32* %13, i64* %16)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %189

68:                                               ; preds = %59
  %69 = load %struct.super_block*, %struct.super_block** %17, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %69, i64 %70)
  store %struct.buffer_head* %71, %struct.buffer_head** %19, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %73 = icmp eq %struct.buffer_head* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %189

79:                                               ; preds = %68
  %80 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %82 = call i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info* %80, %struct.buffer_head* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %86 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %87 = call i32 @ocfs2_journal_access_rb(i32* %83, %struct.ocfs2_caching_info* %84, %struct.buffer_head* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %189

93:                                               ; preds = %79
  %94 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %97, %struct.ocfs2_refcount_block** %20, align 8
  %98 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %99 = load %struct.super_block*, %struct.super_block** %17, align 8
  %100 = getelementptr inbounds %struct.super_block, %struct.super_block* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memset(%struct.ocfs2_refcount_block* %98, i32 0, i32 %101)
  %103 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %104 = bitcast %struct.ocfs2_refcount_block* %103 to i8*
  %105 = load i32, i32* @OCFS2_REFCOUNT_BLOCK_SIGNATURE, align 4
  %106 = call i32 @strcpy(i8* %104, i32 %105)
  %107 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %108 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %112 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* %15, align 8
  %114 = call i8* @cpu_to_le64(i64 %113)
  %115 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %116 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %120 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.super_block*, %struct.super_block** %17, align 8
  %122 = call %struct.TYPE_4__* @OCFS2_SB(%struct.super_block* %121)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %127 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i8* @cpu_to_le64(i64 %128)
  %130 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %131 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i8* @cpu_to_le64(i64 %134)
  %136 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %137 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @OCFS2_REFCOUNT_LEAF_FL, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %141 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.super_block*, %struct.super_block** %17, align 8
  %143 = call i32 @ocfs2_refcount_recs_per_rb(%struct.super_block* %142)
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %146 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  %148 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %18, align 8
  %149 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %152 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %154 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %155 = call i32 @ocfs2_divide_leaf_refcount_block(%struct.buffer_head* %153, %struct.buffer_head* %154, i32* %14)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %93
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @mlog_errno(i32 %159)
  br label %189

161:                                              ; preds = %93
  %162 = load i32*, i32** %6, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %164 = call i32 @ocfs2_journal_dirty(i32* %162, %struct.buffer_head* %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %167 = call i32 @ocfs2_journal_dirty(i32* %165, %struct.buffer_head* %166)
  %168 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %170 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %21, %struct.ocfs2_caching_info* %168, %struct.buffer_head* %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %172 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @trace_ocfs2_new_leaf_refcount_block(i64 %173, i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %179 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %182 = call i32 @ocfs2_insert_extent(i32* %176, %struct.ocfs2_extent_tree* %21, i32 %177, i64 %180, i32 1, i32 0, %struct.ocfs2_alloc_context* %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %161
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @mlog_errno(i32 %186)
  br label %188

188:                                              ; preds = %185, %161
  br label %189

189:                                              ; preds = %188, %158, %90, %74, %65, %56, %45
  %190 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %191 = call i32 @brelse(%struct.buffer_head* %190)
  %192 = load i32, i32* %11, align 4
  ret i32 %192
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_claim_metadata(i32*, %struct.ocfs2_alloc_context*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @memset(%struct.ocfs2_refcount_block*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_refcount_recs_per_rb(%struct.super_block*) #1

declare dso_local i32 @ocfs2_divide_leaf_refcount_block(%struct.buffer_head*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_new_leaf_refcount_block(i64, i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i64, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
