; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_reuse_blk_from_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_reuse_blk_from_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, %struct.ocfs2_cached_dealloc_ctxt* }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_per_slot_free_list = type { i32, i32, %struct.ocfs2_per_slot_free_list*, i32, i32, %struct.ocfs2_per_slot_free_list* }
%struct.ocfs2_cached_block_free = type { i32, i32, %struct.ocfs2_cached_block_free*, i32, i32, %struct.ocfs2_cached_block_free* }
%struct.ocfs2_extent_block = type { %struct.TYPE_4__, i8*, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.ocfs2_super = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Reusing block(%llu) from dealloc(local slot:%d, real slot:%d)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_EXTENT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head**, i32, i32*)* @ocfs2_reuse_blk_from_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reuse_blk_from_dealloc(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.buffer_head** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %15 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  %16 = alloca %struct.ocfs2_cached_block_free*, align 8
  %17 = alloca %struct.ocfs2_extent_block*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ocfs2_metadata_cache_get_super(i32 %21)
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %18, align 8
  %24 = load i32*, i32** %10, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %25, i32 0, i32 1
  %27 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %26, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %27, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %28 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %29 = icmp ne %struct.ocfs2_cached_dealloc_ctxt* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %205

31:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %199, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %202

36:                                               ; preds = %32
  %37 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %42 = call %struct.ocfs2_per_slot_free_list* @ocfs2_find_preferred_free_list(i32 %37, i32 %40, i32* %13, %struct.ocfs2_cached_dealloc_ctxt* %41)
  store %struct.ocfs2_per_slot_free_list* %42, %struct.ocfs2_per_slot_free_list** %15, align 8
  %43 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %44 = icmp ne %struct.ocfs2_per_slot_free_list* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %202

46:                                               ; preds = %36
  %47 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %48 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %47, i32 0, i32 2
  %49 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %48, align 8
  %50 = bitcast %struct.ocfs2_per_slot_free_list* %49 to %struct.ocfs2_cached_block_free*
  store %struct.ocfs2_cached_block_free* %50, %struct.ocfs2_cached_block_free** %16, align 8
  %51 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %52 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %51, i32 0, i32 5
  %53 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %52, align 8
  %54 = bitcast %struct.ocfs2_cached_block_free* %53 to %struct.ocfs2_per_slot_free_list*
  %55 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %56 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %55, i32 0, i32 2
  store %struct.ocfs2_per_slot_free_list* %54, %struct.ocfs2_per_slot_free_list** %56, align 8
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %61 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %59, i32 %62)
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %64, i64 %66
  store %struct.buffer_head* %63, %struct.buffer_head** %67, align 8
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %68, i64 %70
  %72 = load %struct.buffer_head*, %struct.buffer_head** %71, align 8
  %73 = icmp eq %struct.buffer_head* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %46
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %205

79:                                               ; preds = %46
  %80 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %81 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %84 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %86)
  %88 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %91, i64 %93
  %95 = load %struct.buffer_head*, %struct.buffer_head** %94, align 8
  %96 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %90, %struct.buffer_head* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %99 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %101, i64 %103
  %105 = load %struct.buffer_head*, %struct.buffer_head** %104, align 8
  %106 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %107 = call i32 @ocfs2_journal_access_eb(i32* %97, i32 %100, %struct.buffer_head* %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %79
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %205

113:                                              ; preds = %79
  %114 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %114, i64 %116
  %118 = load %struct.buffer_head*, %struct.buffer_head** %117, align 8
  %119 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %122 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memset(i64 %120, i32 0, i32 %125)
  %127 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %127, i64 %129
  %131 = load %struct.buffer_head*, %struct.buffer_head** %130, align 8
  %132 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %134, %struct.ocfs2_extent_block** %17, align 8
  %135 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %136 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @OCFS2_EXTENT_BLOCK_SIGNATURE, align 4
  %139 = call i32 @strcpy(i32 %137, i32 %138)
  %140 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %141 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le64(i32 %142)
  %144 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %145 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %147 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %151 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %155 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %157 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @cpu_to_le64(i32 %158)
  %160 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %161 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %163 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @cpu_to_le16(i32 %164)
  %166 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %167 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %169 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = call i32 @ocfs2_extent_recs_per_eb(%struct.TYPE_5__* %170)
  %172 = call i8* @cpu_to_le16(i32 %171)
  %173 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %174 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i8* %172, i8** %175, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %177, i64 %179
  %181 = load %struct.buffer_head*, %struct.buffer_head** %180, align 8
  %182 = call i32 @ocfs2_journal_dirty(i32* %176, %struct.buffer_head* %181)
  %183 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %184 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %183, i32 0, i32 2
  %185 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %184, align 8
  %186 = icmp ne %struct.ocfs2_per_slot_free_list* %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %113
  %188 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %189 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %192 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %194 = call i32 @kfree(%struct.ocfs2_per_slot_free_list* %193)
  br label %195

195:                                              ; preds = %187, %113
  %196 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %16, align 8
  %197 = bitcast %struct.ocfs2_cached_block_free* %196 to %struct.ocfs2_per_slot_free_list*
  %198 = call i32 @kfree(%struct.ocfs2_per_slot_free_list* %197)
  br label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %32

202:                                              ; preds = %45, %32
  %203 = load i32, i32* %11, align 4
  %204 = load i32*, i32** %10, align 8
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %202, %110, %74, %30
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i64 @unlikely(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %205
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %223, %211
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  %217 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %217, i64 %219
  %221 = load %struct.buffer_head*, %struct.buffer_head** %220, align 8
  %222 = call i32 @brelse(%struct.buffer_head* %221)
  br label %223

223:                                              ; preds = %216
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %212

226:                                              ; preds = %212
  br label %227

227:                                              ; preds = %226, %205
  %228 = load i32, i32* %12, align 4
  ret i32 %228
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_per_slot_free_list* @ocfs2_find_preferred_free_list(i32, i32, i32*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_extent_recs_per_eb(%struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.ocfs2_per_slot_free_list*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
