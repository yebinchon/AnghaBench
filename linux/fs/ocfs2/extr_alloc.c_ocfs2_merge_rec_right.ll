; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_merge_rec_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_path*, %struct.TYPE_9__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, i32)* @ocfs2_merge_rec_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_merge_rec_right(%struct.ocfs2_path* %0, %struct.TYPE_9__* %1, %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_rec* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_extent_rec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_extent_rec*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_path*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ocfs2_extent_list*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %15, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  store i32 0, i32* %20, align 4
  %28 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %29 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %28)
  store %struct.ocfs2_extent_list* %29, %struct.ocfs2_extent_list** %21, align 8
  %30 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %31 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = icmp sge i32 %32, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %41 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %40, i32 0, i32 0
  %42 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %42, i64 %44
  store %struct.ocfs2_extent_rec* %45, %struct.ocfs2_extent_rec** %16, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %206

53:                                               ; preds = %5
  %54 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %206

63:                                               ; preds = %53
  %64 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %65 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %66 = call i32 @ocfs2_get_right_path(%struct.ocfs2_extent_tree* %64, %struct.ocfs2_path* %65, %struct.ocfs2_path** %19)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %286

73:                                               ; preds = %63
  %74 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %75 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %74)
  store %struct.ocfs2_extent_list* %75, %struct.ocfs2_extent_list** %18, align 8
  %76 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @le16_to_cpu(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sle i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %85 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %84, i32 0, i32 0
  %86 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %85, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %86, i64 0
  store %struct.ocfs2_extent_rec* %87, %struct.ocfs2_extent_rec** %17, align 8
  %88 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %89 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  %93 = icmp sle i32 %92, 1
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %96, i32 0, i32 0
  %98 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %97, align 8
  %99 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %98, i64 1
  store %struct.ocfs2_extent_rec* %99, %struct.ocfs2_extent_rec** %17, align 8
  br label %100

100:                                              ; preds = %91, %73
  %101 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %102 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  %105 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %104, %109
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %112 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @le32_to_cpu(i32 %113)
  %115 = icmp ne i64 %110, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @BUG_ON(i32 %116)
  %118 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %119 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %120 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %121 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %118, %struct.ocfs2_path* %119, %struct.ocfs2_path* %120)
  store i32 %121, i32* %20, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %128 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_9__* %122, i32 %123, i32 %126, %struct.ocfs2_path* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %100
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @mlog_errno(i32 %132)
  br label %282

134:                                              ; preds = %100
  %135 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %136 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.buffer_head*, %struct.buffer_head** %141, align 8
  store %struct.buffer_head* %142, %struct.buffer_head** %23, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %144 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %145 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.buffer_head*, %struct.buffer_head** %150, align 8
  %152 = icmp ne %struct.buffer_head* %143, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @BUG_ON(i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %157 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %155, i32 %158, %struct.ocfs2_path* %159, i32 %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %134
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @mlog_errno(i32 %165)
  br label %282

167:                                              ; preds = %134
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %202, %167
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %173 = call i32 @path_num_items(%struct.ocfs2_path* %172)
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %170
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %178 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %176, i32 %179, %struct.ocfs2_path* %180, i32 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @mlog_errno(i32 %186)
  br label %282

188:                                              ; preds = %175
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %190 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %191 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %189, i32 %192, %struct.ocfs2_path* %193, i32 %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @mlog_errno(i32 %199)
  br label %282

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %170

205:                                              ; preds = %170
  br label %223

206:                                              ; preds = %53, %5
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %209 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @le16_to_cpu(i32 %210)
  %212 = sub nsw i32 %211, 1
  %213 = icmp eq i32 %207, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @BUG_ON(i32 %214)
  %216 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %217 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %216, i32 0, i32 0
  %218 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %218, i64 %221
  store %struct.ocfs2_extent_rec* %222, %struct.ocfs2_extent_rec** %17, align 8
  br label %223

223:                                              ; preds = %206, %205
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %225 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %226 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %229 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %230 = call i32 @path_num_items(%struct.ocfs2_path* %229)
  %231 = sub nsw i32 %230, 1
  %232 = call i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__* %224, i32 %227, %struct.ocfs2_path* %228, i32 %231)
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %223
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @mlog_errno(i32 %236)
  br label %282

238:                                              ; preds = %223
  %239 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %240 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %239, i32 0, i32 0
  %241 = load i32, i32* %15, align 4
  %242 = sub i32 0, %241
  %243 = call i32 @le16_add_cpu(i32* %240, i32 %242)
  %244 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %245 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %244, i32 0, i32 2
  %246 = load i32, i32* %15, align 4
  %247 = sub i32 0, %246
  %248 = call i32 @le32_add_cpu(i32* %245, i32 %247)
  %249 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %250 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %249, i32 0, i32 1
  %251 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %252 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ocfs2_metadata_cache_get_super(i32 %253)
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @ocfs2_clusters_to_blocks(i32 %254, i32 %255)
  %257 = sub nsw i32 0, %256
  %258 = call i32 @le64_add_cpu(i32* %250, i32 %257)
  %259 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %260 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %259, i32 0, i32 0
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @le16_add_cpu(i32* %260, i32 %261)
  %263 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %263, i32 %264)
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %267 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %268 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %266, %struct.buffer_head* %267)
  %269 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %270 = icmp ne %struct.ocfs2_path* %269, null
  br i1 %270, label %271, label %281

271:                                              ; preds = %238
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %273 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %274 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %273)
  %275 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %272, %struct.buffer_head* %274)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %277 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %278 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %279 = load i32, i32* %20, align 4
  %280 = call i32 @ocfs2_complete_edge_insert(%struct.TYPE_9__* %276, %struct.ocfs2_path* %277, %struct.ocfs2_path* %278, i32 %279)
  br label %281

281:                                              ; preds = %271, %238
  br label %282

282:                                              ; preds = %281, %235, %198, %185, %164, %131
  %283 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %284 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %283)
  %285 = load i32, i32* %12, align 4
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %282, %69
  %287 = load i32, i32* %6, align 4
  ret i32 %287
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_get_right_path(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_9__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(%struct.TYPE_9__*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_cleanup_merge(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_complete_edge_insert(%struct.TYPE_9__*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
