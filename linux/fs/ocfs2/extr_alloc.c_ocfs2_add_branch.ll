; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_add_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_add_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.buffer_head*, i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_extent_block = type { i8*, i32, %struct.ocfs2_extent_list }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head*, %struct.buffer_head**, %struct.ocfs2_alloc_context*)* @ocfs2_add_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_branch(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.buffer_head* %2, %struct.buffer_head** %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca %struct.ocfs2_extent_block*, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca %struct.ocfs2_extent_list*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  store i32 0, i32* %14, align 4
  store %struct.buffer_head** null, %struct.buffer_head*** %18, align 8
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %25 = icmp ne %struct.buffer_head** %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %5
  %32 = phi i1 [ true, %5 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %41, %struct.ocfs2_extent_block** %19, align 8
  %42 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %42, i32 0, i32 2
  store %struct.ocfs2_extent_list* %43, %struct.ocfs2_extent_list** %21, align 8
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %45, i32 0, i32 2
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %46, align 8
  store %struct.ocfs2_extent_list* %47, %struct.ocfs2_extent_list** %21, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @le16_to_cpu(i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %64, %struct.ocfs2_extent_block** %19, align 8
  %65 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %65, i32 0, i32 2
  %67 = call i64 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list* %66)
  store i64 %67, i64* %22, align 8
  %68 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %68, i32 0, i32 2
  %70 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %69, align 8
  %71 = call i64 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list* %70)
  store i64 %71, i64* %23, align 8
  %72 = load i64, i64* %23, align 8
  %73 = load i64, i64* %22, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %48
  %76 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ocfs2_metadata_cache_owner(i32 %78)
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* %22, align 8
  %82 = call i32 @trace_ocfs2_adjust_rightmost_branch(i64 %79, i64 %80, i64 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %85 = call i32 @ocfs2_adjust_rightmost_branch(i32* %83, %struct.ocfs2_extent_tree* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %349

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %48
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call %struct.buffer_head** @kcalloc(i32 %93, i32 8, i32 %94)
  store %struct.buffer_head** %95, %struct.buffer_head*** %18, align 8
  %96 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %97 = icmp ne %struct.buffer_head** %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %349

103:                                              ; preds = %92
  %104 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %105 = call i32 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %110 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ocfs2_reuse_blk_from_dealloc(i32* %108, %struct.ocfs2_extent_tree* %109, %struct.buffer_head** %110, i32 %111, i32* %14)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %349

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %119
  %129 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %130 = icmp ne %struct.ocfs2_alloc_context* %129, null
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @BUG_ON(i32 %132)
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %136, %137
  %139 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %140 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %140, i64 %142
  %144 = call i32 @ocfs2_create_new_meta_bhs(i32* %134, %struct.ocfs2_extent_tree* %135, i32 %138, %struct.ocfs2_alloc_context* %139, %struct.buffer_head** %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %128
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %349

150:                                              ; preds = %128
  br label %151

151:                                              ; preds = %150, %119
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %233, %151
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %236

156:                                              ; preds = %152
  %157 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %157, i64 %159
  %161 = load %struct.buffer_head*, %struct.buffer_head** %160, align 8
  store %struct.buffer_head* %161, %struct.buffer_head** %17, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %165, %struct.ocfs2_extent_block** %19, align 8
  %166 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %167 = call i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block* %166)
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @BUG_ON(i32 %170)
  %172 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %173 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %172, i32 0, i32 2
  store %struct.ocfs2_extent_list* %173, %struct.ocfs2_extent_list** %20, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %176 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %179 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %180 = call i32 @ocfs2_journal_access_eb(i32* %174, i32 %177, %struct.buffer_head* %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %156
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @mlog_errno(i32 %184)
  br label %349

186:                                              ; preds = %156
  %187 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %188 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %187, i32 0, i32 0
  store i8* null, i8** %188, align 8
  %189 = load i32, i32* %13, align 4
  %190 = call i8* @cpu_to_le16(i32 %189)
  %191 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %192 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = call i8* @cpu_to_le16(i32 1)
  %194 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %195 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load i64, i64* %22, align 8
  %197 = call i8* @cpu_to_le32(i64 %196)
  %198 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %199 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  store i8* %197, i8** %202, align 8
  %203 = load i64, i64* %15, align 8
  %204 = call i8* @cpu_to_le64(i64 %203)
  %205 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %206 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  store i8* %204, i8** %209, align 8
  %210 = call i8* @cpu_to_le32(i64 0)
  %211 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %212 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %211, i32 0, i32 1
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  store i8* %210, i8** %215, align 8
  %216 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %217 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %186
  %221 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %222 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @le64_to_cpu(i32 %223)
  store i64 %224, i64* %16, align 8
  br label %225

225:                                              ; preds = %220, %186
  %226 = load i32*, i32** %6, align 8
  %227 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %228 = call i32 @ocfs2_journal_dirty(i32* %226, %struct.buffer_head* %227)
  %229 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %230 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @le64_to_cpu(i32 %231)
  store i64 %232, i64* %15, align 8
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %152

236:                                              ; preds = %152
  %237 = load i32*, i32** %6, align 8
  %238 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %239 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %242 = load %struct.buffer_head*, %struct.buffer_head** %241, align 8
  %243 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %244 = call i32 @ocfs2_journal_access_eb(i32* %237, i32 %240, %struct.buffer_head* %242, i32 %243)
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %236
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @mlog_errno(i32 %248)
  br label %349

250:                                              ; preds = %236
  %251 = load i32*, i32** %6, align 8
  %252 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %253 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %254 = call i32 @ocfs2_et_root_journal_access(i32* %251, %struct.ocfs2_extent_tree* %252, i32 %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @mlog_errno(i32 %258)
  br label %349

260:                                              ; preds = %250
  %261 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %262 = icmp ne %struct.buffer_head* %261, null
  br i1 %262, label %263, label %277

263:                                              ; preds = %260
  %264 = load i32*, i32** %6, align 8
  %265 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %266 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %269 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %270 = call i32 @ocfs2_journal_access_eb(i32* %264, i32 %267, %struct.buffer_head* %268, i32 %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %263
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @mlog_errno(i32 %274)
  br label %349

276:                                              ; preds = %263
  br label %277

277:                                              ; preds = %276, %260
  %278 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %279 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @le16_to_cpu(i8* %280)
  store i32 %281, i32* %13, align 4
  %282 = load i64, i64* %15, align 8
  %283 = call i8* @cpu_to_le64(i64 %282)
  %284 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %285 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %284, i32 0, i32 1
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 2
  store i8* %283, i8** %290, align 8
  %291 = load i64, i64* %22, align 8
  %292 = call i8* @cpu_to_le32(i64 %291)
  %293 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %294 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %293, i32 0, i32 1
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 1
  store i8* %292, i8** %299, align 8
  %300 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %301 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %300, i32 0, i32 1
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  store i8* null, i8** %306, align 8
  %307 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %308 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %307, i32 0, i32 0
  %309 = call i32 @le16_add_cpu(i8** %308, i32 1)
  %310 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %311 = load i64, i64* %16, align 8
  %312 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %310, i64 %311)
  %313 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %314 = load %struct.buffer_head*, %struct.buffer_head** %313, align 8
  %315 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = inttoptr i64 %316 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %317, %struct.ocfs2_extent_block** %19, align 8
  %318 = load i64, i64* %16, align 8
  %319 = call i8* @cpu_to_le64(i64 %318)
  %320 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %321 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %320, i32 0, i32 0
  store i8* %319, i8** %321, align 8
  %322 = load i32*, i32** %6, align 8
  %323 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %324 = load %struct.buffer_head*, %struct.buffer_head** %323, align 8
  %325 = call i32 @ocfs2_journal_dirty(i32* %322, %struct.buffer_head* %324)
  %326 = load i32*, i32** %6, align 8
  %327 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %328 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %327, i32 0, i32 0
  %329 = load %struct.buffer_head*, %struct.buffer_head** %328, align 8
  %330 = call i32 @ocfs2_journal_dirty(i32* %326, %struct.buffer_head* %329)
  %331 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %332 = icmp ne %struct.buffer_head* %331, null
  br i1 %332, label %333, label %337

333:                                              ; preds = %277
  %334 = load i32*, i32** %6, align 8
  %335 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %336 = call i32 @ocfs2_journal_dirty(i32* %334, %struct.buffer_head* %335)
  br label %337

337:                                              ; preds = %333, %277
  %338 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %339 = load %struct.buffer_head*, %struct.buffer_head** %338, align 8
  %340 = call i32 @brelse(%struct.buffer_head* %339)
  %341 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %342 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %341, i64 0
  %343 = load %struct.buffer_head*, %struct.buffer_head** %342, align 8
  %344 = call i32 @get_bh(%struct.buffer_head* %343)
  %345 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %346 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %345, i64 0
  %347 = load %struct.buffer_head*, %struct.buffer_head** %346, align 8
  %348 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %347, %struct.buffer_head** %348, align 8
  store i32 0, i32* %11, align 4
  br label %349

349:                                              ; preds = %337, %273, %257, %247, %183, %147, %115, %98, %88
  %350 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %351 = icmp ne %struct.buffer_head** %350, null
  br i1 %351, label %352, label %370

352:                                              ; preds = %349
  store i32 0, i32* %13, align 4
  br label %353

353:                                              ; preds = %364, %352
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %12, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %353
  %358 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %358, i64 %360
  %362 = load %struct.buffer_head*, %struct.buffer_head** %361, align 8
  %363 = call i32 @brelse(%struct.buffer_head* %362)
  br label %364

364:                                              ; preds = %357
  %365 = load i32, i32* %13, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %13, align 4
  br label %353

367:                                              ; preds = %353
  %368 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %369 = call i32 @kfree(%struct.buffer_head** %368)
  br label %370

370:                                              ; preds = %367, %349
  %371 = load i32, i32* %11, align 4
  ret i32 %371
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @trace_ocfs2_adjust_rightmost_branch(i64, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @ocfs2_adjust_rightmost_branch(i32*, %struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_reuse_blk_from_dealloc(i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head**, i32, i32*) #1

declare dso_local i32 @ocfs2_create_new_meta_bhs(i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le16_add_cpu(i8**, i32) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
