; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_num_ver.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_num_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64*, i32, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, %struct.virtual_item* }
%struct.virtual_item = type { i32, i64, i32 }

@M_INSERT = common dso_local global i32 0, align 4
@M_PASTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vs-8100: insert_size < 0 in overflow\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vs-8105: too many nodes are needed\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"vs-8110: direct item length is %d. It can not be longer than %d\00", align 1
@IH_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vs-8111\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"split_item_position is out of range\00", align 1
@TYPE_DIRENTRY = common dso_local global i64 0, align 8
@TYPE_INDIRECT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"vs-8115\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"not directory or indirect item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tree_balance*, i32, i32, i32, i32, i32, i16*, i32)* @get_num_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_num_ver(i32 %0, %struct.tree_balance* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i16* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tree_balance*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.virtual_node*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca [2 x i32], align 4
  %32 = alloca %struct.virtual_item*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i16* %7, i16** %18, align 8
  store i32 %8, i32* %19, align 4
  %43 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 3
  %45 = load %struct.virtual_node*, %struct.virtual_node** %44, align 8
  store %struct.virtual_node* %45, %struct.virtual_node** %22, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  store i32 -1, i32* %46, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 -1, i32* %47, align 4
  %48 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %49 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %9
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @M_INSERT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @M_PASTE, align 4
  %63 = icmp ne i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br label %66

66:                                               ; preds = %64, %9
  %67 = phi i1 [ true, %9 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @RFALSE(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @PATH_H_PBUFFER(i32 %72, i32 %73)
  %75 = call i32 @MAX_CHILD_SIZE(i32 %74)
  store i32 %75, i32* %24, align 4
  %76 = load i16*, i16** %18, align 8
  %77 = getelementptr inbounds i16, i16* %76, i64 3
  store i16 -1, i16* %77, align 2
  %78 = load i16*, i16** %18, align 8
  %79 = getelementptr inbounds i16, i16* %78, i64 4
  store i16 -1, i16* %79, align 2
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %66
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* @KEY_SIZE, align 4
  %87 = load i32, i32* @DC_SIZE, align 4
  %88 = add nsw i32 %86, %87
  %89 = mul nsw i32 %85, %88
  %90 = load i32, i32* @DC_SIZE, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %425

96:                                               ; preds = %82
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %24, align 4
  %99 = sdiv i32 %97, %98
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %425

101:                                              ; preds = %66
  store i32 1, i32* %26, align 4
  store i32 0, i32* %23, align 4
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  store i32 %109, i32* %29, align 4
  %110 = load %struct.virtual_node*, %struct.virtual_node** %22, align 8
  %111 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %28, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %17, align 4
  br label %121

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  store i32 %122, i32* %30, align 4
  %123 = load i32, i32* %27, align 4
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %255, %121
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %28, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %258

128:                                              ; preds = %124
  %129 = load %struct.virtual_node*, %struct.virtual_node** %22, align 8
  %130 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %129, i32 0, i32 1
  %131 = load %struct.virtual_item*, %struct.virtual_item** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %131, i64 %133
  store %struct.virtual_item* %134, %struct.virtual_item** %32, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %28, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %30, align 4
  br label %141

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  store i32 %142, i32* %33, align 4
  %143 = load i32, i32* %26, align 4
  %144 = icmp sgt i32 %143, 3
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @RFALSE(i32 %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.virtual_item*, %struct.virtual_item** %32, align 8
  %148 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %25, align 4
  %150 = load %struct.virtual_item*, %struct.virtual_item** %32, align 8
  %151 = load i32, i32* %29, align 4
  %152 = call i64 @op_part_size(%struct.virtual_item* %150, i32 0, i32 %151)
  %153 = load i32, i32* %25, align 4
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %25, align 4
  %157 = load %struct.virtual_item*, %struct.virtual_item** %32, align 8
  %158 = load i32, i32* %33, align 4
  %159 = call i64 @op_part_size(%struct.virtual_item* %157, i32 1, i32 %158)
  %160 = load i32, i32* %25, align 4
  %161 = sext i32 %160 to i64
  %162 = sub nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %25, align 4
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %25, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %24, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %141
  %170 = load i16*, i16** %18, align 8
  %171 = load i32, i32* %26, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %170, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = add i16 %175, 1
  store i16 %176, i16* %174, align 2
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %23, align 4
  store i32 0, i32* %29, align 4
  br label %255

180:                                              ; preds = %141
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %24, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load %struct.virtual_item*, %struct.virtual_item** %32, align 8
  %186 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @is_direct_le_ih(i32 %187)
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %24, align 4
  %191 = call i32 (i32, i8*, ...) @RFALSE(i32 %188, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %189, i32 %190)
  store i32 1, i32* %19, align 4
  br label %192

192:                                              ; preds = %184, %180
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %26, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %26, align 4
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %255

200:                                              ; preds = %192
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %23, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* @IH_SIZE, align 4
  %205 = sub nsw i32 %203, %204
  store i32 %205, i32* %34, align 4
  %206 = load %struct.virtual_item*, %struct.virtual_item** %32, align 8
  %207 = load i32, i32* %34, align 4
  %208 = load i32, i32* %29, align 4
  %209 = load i32, i32* %33, align 4
  %210 = call i32 @op_check_left(%struct.virtual_item* %206, i32 %207, i32 %208, i32 %209)
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %21, align 4
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %218

213:                                              ; preds = %200
  %214 = load i32, i32* %26, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %26, align 4
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %255

218:                                              ; preds = %200
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %29, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %29, align 4
  %222 = load i32, i32* %21, align 4
  %223 = trunc i32 %222 to i16
  %224 = load i16*, i16** %18, align 8
  %225 = load i32, i32* %26, align 4
  %226 = sub nsw i32 %225, 1
  %227 = add nsw i32 %226, 3
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i16, i16* %224, i64 %228
  store i16 %223, i16* %229, align 2
  %230 = load i32, i32* %26, align 4
  %231 = icmp sgt i32 %230, 2
  br i1 %231, label %232, label %237

232:                                              ; preds = %218
  %233 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %234 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @reiserfs_warning(i32 %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %237

237:                                              ; preds = %232, %218
  %238 = load i16*, i16** %18, align 8
  %239 = load i32, i32* %26, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i16, i16* %238, i64 %241
  %243 = load i16, i16* %242, align 2
  %244 = add i16 %243, 1
  store i16 %244, i16* %242, align 2
  %245 = load i32, i32* %20, align 4
  %246 = load i32, i32* %26, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %248
  store i32 %245, i32* %249, align 4
  %250 = load i32, i32* %26, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %26, align 4
  %252 = load i32, i32* %20, align 4
  store i32 %252, i32* %27, align 4
  %253 = load i32, i32* %20, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %255

255:                                              ; preds = %237, %213, %195, %169
  %256 = load i32, i32* %20, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %20, align 4
  br label %124

258:                                              ; preds = %124
  %259 = load i16*, i16** %18, align 8
  %260 = getelementptr inbounds i16, i16* %259, i64 4
  %261 = load i16, i16* %260, align 2
  %262 = sext i16 %261 to i32
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %351

264:                                              ; preds = %258
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %35, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %35, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %264
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, -1
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i32, i32* %15, align 4
  br label %276

275:                                              ; preds = %270, %264
  br label %276

276:                                              ; preds = %275, %273
  %277 = phi i32 [ %274, %273 ], [ 0, %275 ]
  store i32 %277, i32* %37, align 4
  %278 = load i32, i32* %28, align 4
  %279 = load i32, i32* %35, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load i32, i32* %30, align 4
  %283 = icmp ne i32 %282, -1
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* %30, align 4
  br label %287

286:                                              ; preds = %281, %276
  br label %287

287:                                              ; preds = %286, %284
  %288 = phi i32 [ %285, %284 ], [ 0, %286 ]
  store i32 %288, i32* %36, align 4
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %287
  %295 = load i16*, i16** %18, align 8
  %296 = getelementptr inbounds i16, i16* %295, i64 3
  %297 = load i16, i16* %296, align 2
  %298 = sext i16 %297 to i32
  br label %300

299:                                              ; preds = %287
  br label %300

300:                                              ; preds = %299, %294
  %301 = phi i32 [ %298, %294 ], [ 0, %299 ]
  store i32 %301, i32* %38, align 4
  %302 = load %struct.virtual_node*, %struct.virtual_node** %22, align 8
  %303 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %302, i32 0, i32 1
  %304 = load %struct.virtual_item*, %struct.virtual_item** %303, align 8
  %305 = load i32, i32* %35, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %304, i64 %306
  %308 = call signext i16 @op_unit_num(%struct.virtual_item* %307)
  %309 = sext i16 %308 to i32
  %310 = load i16*, i16** %18, align 8
  %311 = getelementptr inbounds i16, i16* %310, i64 4
  %312 = load i16, i16* %311, align 2
  %313 = sext i16 %312 to i32
  %314 = sub nsw i32 %309, %313
  %315 = load i32, i32* %36, align 4
  %316 = sub nsw i32 %314, %315
  %317 = load i32, i32* %37, align 4
  %318 = sub nsw i32 %316, %317
  %319 = load i32, i32* %38, align 4
  %320 = sub nsw i32 %318, %319
  %321 = trunc i32 %320 to i16
  %322 = load i16*, i16** %18, align 8
  %323 = getelementptr inbounds i16, i16* %322, i64 4
  store i16 %321, i16* %323, align 2
  %324 = load %struct.virtual_node*, %struct.virtual_node** %22, align 8
  %325 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %324, i32 0, i32 1
  %326 = load %struct.virtual_item*, %struct.virtual_item** %325, align 8
  %327 = load i32, i32* %35, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %326, i64 %328
  %330 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @TYPE_DIRENTRY, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %350

334:                                              ; preds = %300
  %335 = load %struct.virtual_node*, %struct.virtual_node** %22, align 8
  %336 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %335, i32 0, i32 1
  %337 = load %struct.virtual_item*, %struct.virtual_item** %336, align 8
  %338 = load i32, i32* %35, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %337, i64 %339
  %341 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @TYPE_INDIRECT, align 8
  %344 = icmp ne i64 %342, %343
  br i1 %344, label %345, label %350

345:                                              ; preds = %334
  %346 = load %struct.tree_balance*, %struct.tree_balance** %12, align 8
  %347 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @reiserfs_warning(i32 %348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %350

350:                                              ; preds = %345, %334, %300
  br label %351

351:                                              ; preds = %350, %258
  %352 = load i16*, i16** %18, align 8
  %353 = getelementptr inbounds i16, i16* %352, i64 3
  %354 = load i16, i16* %353, align 2
  %355 = sext i16 %354 to i32
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %423

357:                                              ; preds = %351
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %39, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %39, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %357
  %364 = load i32, i32* %15, align 4
  %365 = icmp ne i32 %364, -1
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load i32, i32* %15, align 4
  br label %369

368:                                              ; preds = %363, %357
  br label %369

369:                                              ; preds = %368, %366
  %370 = phi i32 [ %367, %366 ], [ 0, %368 ]
  store i32 %370, i32* %41, align 4
  %371 = load i32, i32* %28, align 4
  %372 = load i32, i32* %39, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %379

374:                                              ; preds = %369
  %375 = load i32, i32* %30, align 4
  %376 = icmp ne i32 %375, -1
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  %378 = load i32, i32* %30, align 4
  br label %380

379:                                              ; preds = %374, %369
  br label %380

380:                                              ; preds = %379, %377
  %381 = phi i32 [ %378, %377 ], [ 0, %379 ]
  store i32 %381, i32* %40, align 4
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %383, %385
  br i1 %386, label %387, label %398

387:                                              ; preds = %380
  %388 = load i16*, i16** %18, align 8
  %389 = getelementptr inbounds i16, i16* %388, i64 4
  %390 = load i16, i16* %389, align 2
  %391 = sext i16 %390 to i32
  %392 = icmp ne i32 %391, -1
  br i1 %392, label %393, label %398

393:                                              ; preds = %387
  %394 = load i16*, i16** %18, align 8
  %395 = getelementptr inbounds i16, i16* %394, i64 4
  %396 = load i16, i16* %395, align 2
  %397 = sext i16 %396 to i32
  br label %399

398:                                              ; preds = %387, %380
  br label %399

399:                                              ; preds = %398, %393
  %400 = phi i32 [ %397, %393 ], [ 0, %398 ]
  store i32 %400, i32* %42, align 4
  %401 = load %struct.virtual_node*, %struct.virtual_node** %22, align 8
  %402 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %401, i32 0, i32 1
  %403 = load %struct.virtual_item*, %struct.virtual_item** %402, align 8
  %404 = load i32, i32* %39, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %403, i64 %405
  %407 = call signext i16 @op_unit_num(%struct.virtual_item* %406)
  %408 = sext i16 %407 to i32
  %409 = load i16*, i16** %18, align 8
  %410 = getelementptr inbounds i16, i16* %409, i64 3
  %411 = load i16, i16* %410, align 2
  %412 = sext i16 %411 to i32
  %413 = sub nsw i32 %408, %412
  %414 = load i32, i32* %40, align 4
  %415 = sub nsw i32 %413, %414
  %416 = load i32, i32* %41, align 4
  %417 = sub nsw i32 %415, %416
  %418 = load i32, i32* %42, align 4
  %419 = sub nsw i32 %417, %418
  %420 = trunc i32 %419 to i16
  %421 = load i16*, i16** %18, align 8
  %422 = getelementptr inbounds i16, i16* %421, i64 3
  store i16 %420, i16* %422, align 2
  br label %423

423:                                              ; preds = %399, %351
  %424 = load i32, i32* %26, align 4
  store i32 %424, i32* %10, align 4
  br label %425

425:                                              ; preds = %423, %96, %95
  %426 = load i32, i32* %10, align 4
  ret i32 %426
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @MAX_CHILD_SIZE(i32) #1

declare dso_local i32 @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i64 @op_part_size(%struct.virtual_item*, i32, i32) #1

declare dso_local i32 @is_direct_le_ih(i32) #1

declare dso_local i32 @op_check_left(%struct.virtual_item*, i32, i32, i32) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*) #1

declare dso_local signext i16 @op_unit_num(%struct.virtual_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
