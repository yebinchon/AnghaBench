; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_figure_merge_contig_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_figure_merge_contig_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }
%struct.ocfs2_extent_rec = type { i64 }
%struct.ocfs2_merge_ctxt = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { i32 }
%struct.super_block = type { i32 }

@CONTIG_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"Extent block #%llu has an invalid l_next_free_rec of %d.  It should have matched the l_count of %d\0A\00", align 1
@CONTIG_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Extent block #%llu has an invalid l_next_free_rec of %d\0A\00", align 1
@CONTIG_LEFT = common dso_local global i32 0, align 4
@CONTIG_LEFTRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_merge_ctxt*)* @ocfs2_figure_merge_contig_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_figure_merge_contig_type(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_path* %1, %struct.ocfs2_extent_list* %2, i32 %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_merge_ctxt* %5) #0 {
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca %struct.ocfs2_extent_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_extent_rec*, align 8
  %12 = alloca %struct.ocfs2_merge_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_path*, align 8
  %20 = alloca %struct.ocfs2_path*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.ocfs2_extent_block*, align 8
  %23 = alloca %struct.super_block*, align 8
  %24 = alloca i32, align 4
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %8, align 8
  store %struct.ocfs2_extent_list* %2, %struct.ocfs2_extent_list** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %11, align 8
  store %struct.ocfs2_merge_ctxt* %5, %struct.ocfs2_merge_ctxt** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* @CONTIG_NONE, align 4
  store i32 %25, i32* %14, align 4
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %17, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %20, align 8
  %26 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %28)
  store %struct.super_block* %29, %struct.super_block** %23, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %6
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %33, i32 0, i32 0
  %35 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %35, i64 %38
  store %struct.ocfs2_extent_rec* %39, %struct.ocfs2_extent_rec** %17, align 8
  br label %121

40:                                               ; preds = %6
  %41 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %120

45:                                               ; preds = %40
  %46 = load %struct.super_block*, %struct.super_block** %23, align 8
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %48 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %46, %struct.ocfs2_path* %47, i64* %15)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %287

52:                                               ; preds = %45
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %119

55:                                               ; preds = %52
  %56 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %57 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %56)
  store %struct.ocfs2_path* %57, %struct.ocfs2_path** %19, align 8
  %58 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %59 = icmp ne %struct.ocfs2_path* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %287

65:                                               ; preds = %55
  %66 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @ocfs2_find_path(i32 %68, %struct.ocfs2_path* %69, i64 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %284

75:                                               ; preds = %65
  %76 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %77 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %76)
  store %struct.ocfs2_extent_list* %77, %struct.ocfs2_extent_list** %18, align 8
  %78 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %75
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %89 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %88)
  store %struct.buffer_head* %89, %struct.buffer_head** %21, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %93, %struct.ocfs2_extent_block** %22, align 8
  %94 = load %struct.super_block*, %struct.super_block** %23, align 8
  %95 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %22, align 8
  %96 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le64_to_cpu(i32 %97)
  %99 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %100 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = call i32 (%struct.super_block*, i8*, i64, i32, ...) @ocfs2_error(%struct.super_block* %94, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i64 %98, i32 %102, i32 %106)
  store i32 %107, i32* %13, align 4
  br label %284

108:                                              ; preds = %75
  %109 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %110 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %109, i32 0, i32 0
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %110, align 8
  %112 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %111, i64 %117
  store %struct.ocfs2_extent_rec* %118, %struct.ocfs2_extent_rec** %17, align 8
  br label %119

119:                                              ; preds = %108, %52
  br label %120

120:                                              ; preds = %119, %40
  br label %121

121:                                              ; preds = %120, %32
  %122 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %123 = icmp ne %struct.ocfs2_extent_rec* %122, null
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %129 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %136 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %135, i32 0, i32 0
  %137 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %137, i64 %139
  %141 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %134, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i32, i32* @CONTIG_RIGHT, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %144, %131
  br label %152

147:                                              ; preds = %127, %124
  %148 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %149 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %150 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %151 = call i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree* %148, %struct.ocfs2_extent_rec* %149, %struct.ocfs2_extent_rec* %150)
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %147, %146
  br label %153

153:                                              ; preds = %152, %121
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %17, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %156 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @le16_to_cpu(i32 %157)
  %159 = sub nsw i32 %158, 1
  %160 = icmp slt i32 %154, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %163 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %162, i32 0, i32 0
  %164 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %164, i64 %167
  store %struct.ocfs2_extent_rec* %168, %struct.ocfs2_extent_rec** %17, align 8
  br label %255

169:                                              ; preds = %153
  %170 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %171 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %175 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = icmp eq i32 %173, %177
  br i1 %178, label %179, label %254

179:                                              ; preds = %169
  %180 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %181 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %254

184:                                              ; preds = %179
  %185 = load %struct.super_block*, %struct.super_block** %23, align 8
  %186 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %187 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %185, %struct.ocfs2_path* %186, i64* %16)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %284

191:                                              ; preds = %184
  %192 = load i64, i64* %16, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %284

195:                                              ; preds = %191
  %196 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %197 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %196)
  store %struct.ocfs2_path* %197, %struct.ocfs2_path** %20, align 8
  %198 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %199 = icmp ne %struct.ocfs2_path* %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @mlog_errno(i32 %203)
  br label %284

205:                                              ; preds = %195
  %206 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %207 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %210 = load i64, i64* %16, align 8
  %211 = call i32 @ocfs2_find_path(i32 %208, %struct.ocfs2_path* %209, i64 %210)
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  br label %281

215:                                              ; preds = %205
  %216 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %217 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %216)
  store %struct.ocfs2_extent_list* %217, %struct.ocfs2_extent_list** %18, align 8
  %218 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %219 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %218, i32 0, i32 0
  %220 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %219, align 8
  %221 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %220, i64 0
  store %struct.ocfs2_extent_rec* %221, %struct.ocfs2_extent_rec** %17, align 8
  %222 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %223 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %215
  %226 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %227 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @le16_to_cpu(i32 %228)
  %230 = icmp sle i32 %229, 1
  br i1 %230, label %231, label %248

231:                                              ; preds = %225
  %232 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %233 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %232)
  store %struct.buffer_head* %233, %struct.buffer_head** %21, align 8
  %234 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %235 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %237, %struct.ocfs2_extent_block** %22, align 8
  %238 = load %struct.super_block*, %struct.super_block** %23, align 8
  %239 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %22, align 8
  %240 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @le64_to_cpu(i32 %241)
  %243 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %244 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @le16_to_cpu(i32 %245)
  %247 = call i32 (%struct.super_block*, i8*, i64, i32, ...) @ocfs2_error(%struct.super_block* %238, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %242, i32 %246)
  store i32 %247, i32* %13, align 4
  br label %281

248:                                              ; preds = %225
  %249 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %250 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %249, i32 0, i32 0
  %251 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %250, align 8
  %252 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %251, i64 1
  store %struct.ocfs2_extent_rec* %252, %struct.ocfs2_extent_rec** %17, align 8
  br label %253

253:                                              ; preds = %248, %215
  br label %254

254:                                              ; preds = %253, %179, %169
  br label %255

255:                                              ; preds = %254, %161
  %256 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %257 = icmp ne %struct.ocfs2_extent_rec* %256, null
  br i1 %257, label %258, label %280

258:                                              ; preds = %255
  %259 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %260 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %261 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %262 = call i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree* %259, %struct.ocfs2_extent_rec* %260, %struct.ocfs2_extent_rec* %261)
  store i32 %262, i32* %24, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* @CONTIG_LEFT, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %258
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @CONTIG_RIGHT, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i32, i32* @CONTIG_LEFTRIGHT, align 4
  store i32 %271, i32* %14, align 4
  br label %279

272:                                              ; preds = %266, %258
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* @CONTIG_NONE, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = load i32, i32* %24, align 4
  store i32 %277, i32* %14, align 4
  br label %278

278:                                              ; preds = %276, %272
  br label %279

279:                                              ; preds = %278, %270
  br label %280

280:                                              ; preds = %279, %255
  br label %281

281:                                              ; preds = %280, %231, %214
  %282 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %283 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %282)
  br label %284

284:                                              ; preds = %281, %200, %194, %190, %87, %74
  %285 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %286 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %285)
  br label %287

287:                                              ; preds = %284, %60, %51
  %288 = load i32, i32* %13, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = load i32, i32* %14, align 4
  %292 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %12, align 8
  %293 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %290, %287
  %295 = load i32, i32* %13, align 4
  ret i32 %295
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
