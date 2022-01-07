; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_dc_check_balance_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_dc_check_balance_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, %struct.buffer_head**, %struct.buffer_head**, i32, %struct.virtual_node* }
%struct.buffer_head = type { i32 }
%struct.virtual_node = type { i32 }

@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vs-8235: trying to borrow for root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @dc_check_balance_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_check_balance_internal(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtual_node*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %24 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %23, i32 0, i32 5
  %25 = load %struct.virtual_node*, %struct.virtual_node** %24, align 8
  store %struct.virtual_node* %25, %struct.virtual_node** %6, align 8
  %26 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %28, i32 %29)
  store %struct.buffer_head* %30, %struct.buffer_head** %7, align 8
  %31 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %32 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.buffer_head* @PATH_H_PPARENT(i32 %33, i32 %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %8, align 8
  %36 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @create_virtual_node(%struct.tree_balance* %36, i32 %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = icmp ne %struct.buffer_head* %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %2
  %42 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %43 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @set_parameters(%struct.tree_balance* %47, i32 %48, i32 0, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %50 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %50, i32* %3, align 4
  br label %569

51:                                               ; preds = %41
  %52 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @set_parameters(%struct.tree_balance* %52, i32 %53, i32 0, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %55 = load i32, i32* @CARRY_ON, align 4
  store i32 %55, i32* %3, align 4
  br label %569

56:                                               ; preds = %2
  %57 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @get_parents(%struct.tree_balance* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @CARRY_ON, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %569

64:                                               ; preds = %56
  %65 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @get_rfree(%struct.tree_balance* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @get_lfree(%struct.tree_balance* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @check_left(%struct.tree_balance* %71, i32 %72, i32 %73)
  %75 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @check_right(%struct.tree_balance* %75, i32 %76, i32 %77)
  %79 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %80 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %83 = call i32 @MIN_NR_KEY(%struct.buffer_head* %82)
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %273

85:                                               ; preds = %64
  %86 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %87 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %90 = call i32 @MIN_NR_KEY(%struct.buffer_head* %89)
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %197

92:                                               ; preds = %85
  %93 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %94 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %101 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = icmp sge i32 %99, %103
  br i1 %104, label %105, label %147

105:                                              ; preds = %92
  %106 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %107 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @PATH_H_B_ITEM_ORDER(i32 %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %114 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %113, i32 0, i32 3
  %115 = load %struct.buffer_head**, %struct.buffer_head*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %115, i64 %117
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  %120 = call i32 @B_NR_ITEMS(%struct.buffer_head* %119)
  br label %124

121:                                              ; preds = %105
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %122, 1
  br label %124

124:                                              ; preds = %121, %112
  %125 = phi i32 [ %120, %112 ], [ %123, %121 ]
  store i32 %125, i32* %13, align 4
  %126 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %127 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %126, i32 0, i32 3
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %128, i64 %130
  %132 = load %struct.buffer_head*, %struct.buffer_head** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @B_N_CHILD(%struct.buffer_head* %132, i32 %133)
  %135 = call i32 @dc_size(i32 %134)
  %136 = load i32, i32* @DC_SIZE, align 4
  %137 = load i32, i32* @KEY_SIZE, align 4
  %138 = add nsw i32 %136, %137
  %139 = sdiv i32 %135, %138
  store i32 %139, i32* %12, align 4
  %140 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 0, %142
  %144 = sub nsw i32 %143, 1
  %145 = call i32 @set_parameters(%struct.tree_balance* %140, i32 %141, i32 %144, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %146 = load i32, i32* @CARRY_ON, align 4
  store i32 %146, i32* %3, align 4
  br label %569

147:                                              ; preds = %92
  %148 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %149 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %156 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  %159 = icmp sge i32 %154, %158
  br i1 %159, label %160, label %196

160:                                              ; preds = %147
  %161 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %162 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @PATH_H_B_ITEM_ORDER(i32 %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %167 = call i32 @B_NR_ITEMS(%struct.buffer_head* %166)
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %173

170:                                              ; preds = %160
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  br label %173

173:                                              ; preds = %170, %169
  %174 = phi i32 [ 0, %169 ], [ %172, %170 ]
  store i32 %174, i32* %15, align 4
  %175 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %176 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %175, i32 0, i32 2
  %177 = load %struct.buffer_head**, %struct.buffer_head*** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %177, i64 %179
  %181 = load %struct.buffer_head*, %struct.buffer_head** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @B_N_CHILD(%struct.buffer_head* %181, i32 %182)
  %184 = call i32 @dc_size(i32 %183)
  %185 = load i32, i32* @DC_SIZE, align 4
  %186 = load i32, i32* @KEY_SIZE, align 4
  %187 = add nsw i32 %185, %186
  %188 = sdiv i32 %184, %187
  store i32 %188, i32* %14, align 4
  %189 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 0, %191
  %193 = sub nsw i32 %192, 1
  %194 = call i32 @set_parameters(%struct.tree_balance* %189, i32 %190, i32 0, i32 %193, i32 0, i32* null, i32 -1, i32 -1)
  %195 = load i32, i32* @CARRY_ON, align 4
  store i32 %195, i32* %3, align 4
  br label %569

196:                                              ; preds = %147
  br label %197

197:                                              ; preds = %196, %85
  %198 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %199 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %206 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %204, %211
  %213 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %214 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  %217 = icmp sge i32 %212, %216
  br i1 %217, label %218, label %268

218:                                              ; preds = %197
  %219 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %220 = call i32 @MAX_NR_KEY(%struct.buffer_head* %219)
  %221 = shl i32 %220, 1
  %222 = add nsw i32 %221, 2
  %223 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %224 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %222, %229
  %231 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %232 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %230, %237
  %239 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %240 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %238, %241
  %243 = add nsw i32 %242, 1
  %244 = sdiv i32 %243, 2
  %245 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %246 = call i32 @MAX_NR_KEY(%struct.buffer_head* %245)
  %247 = add nsw i32 %246, 1
  %248 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %249 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %247, %254
  %256 = sub nsw i32 %244, %255
  store i32 %256, i32* %16, align 4
  %257 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %260 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  %263 = load i32, i32* %16, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load i32, i32* %16, align 4
  %266 = call i32 @set_parameters(%struct.tree_balance* %257, i32 %258, i32 %264, i32 %265, i32 0, i32* null, i32 -1, i32 -1)
  %267 = load i32, i32* @CARRY_ON, align 4
  store i32 %267, i32* %3, align 4
  br label %569

268:                                              ; preds = %197
  %269 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @set_parameters(%struct.tree_balance* %269, i32 %270, i32 0, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %272 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %272, i32* %3, align 4
  br label %569

273:                                              ; preds = %64
  %274 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %275 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %282 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1
  %285 = icmp sge i32 %280, %284
  br i1 %285, label %286, label %356

286:                                              ; preds = %273
  %287 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %288 = load i32, i32* %5, align 4
  %289 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %313, label %291

291:                                              ; preds = %286
  %292 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %293 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %300 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  %303 = icmp slt i32 %298, %302
  br i1 %303, label %313, label %304

304:                                              ; preds = %291
  %305 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %306 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %305, i32 0, i32 2
  %307 = load %struct.buffer_head**, %struct.buffer_head*** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %307, i64 %309
  %311 = load %struct.buffer_head*, %struct.buffer_head** %310, align 8
  %312 = icmp ne %struct.buffer_head* %311, null
  br i1 %312, label %355, label %313

313:                                              ; preds = %304, %291, %286
  %314 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %315 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %5, align 4
  %318 = call i32 @PATH_H_B_ITEM_ORDER(i32 %316, i32 %317)
  store i32 %318, i32* %17, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %313
  %321 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %322 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %321, i32 0, i32 3
  %323 = load %struct.buffer_head**, %struct.buffer_head*** %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %323, i64 %325
  %327 = load %struct.buffer_head*, %struct.buffer_head** %326, align 8
  %328 = call i32 @B_NR_ITEMS(%struct.buffer_head* %327)
  br label %332

329:                                              ; preds = %313
  %330 = load i32, i32* %17, align 4
  %331 = sub nsw i32 %330, 1
  br label %332

332:                                              ; preds = %329, %320
  %333 = phi i32 [ %328, %320 ], [ %331, %329 ]
  store i32 %333, i32* %18, align 4
  %334 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %335 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %334, i32 0, i32 3
  %336 = load %struct.buffer_head**, %struct.buffer_head*** %335, align 8
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %336, i64 %338
  %340 = load %struct.buffer_head*, %struct.buffer_head** %339, align 8
  %341 = load i32, i32* %18, align 4
  %342 = call i32 @B_N_CHILD(%struct.buffer_head* %340, i32 %341)
  %343 = call i32 @dc_size(i32 %342)
  %344 = load i32, i32* @DC_SIZE, align 4
  %345 = load i32, i32* @KEY_SIZE, align 4
  %346 = add nsw i32 %344, %345
  %347 = sdiv i32 %343, %346
  store i32 %347, i32* %17, align 4
  %348 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* %17, align 4
  %351 = sub nsw i32 0, %350
  %352 = sub nsw i32 %351, 1
  %353 = call i32 @set_parameters(%struct.tree_balance* %348, i32 %349, i32 %352, i32 0, i32 0, i32* null, i32 -1, i32 -1)
  %354 = load i32, i32* @CARRY_ON, align 4
  store i32 %354, i32* %3, align 4
  br label %569

355:                                              ; preds = %304
  br label %356

356:                                              ; preds = %355, %273
  %357 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %358 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %5, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %365 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, 1
  %368 = icmp sge i32 %363, %367
  br i1 %368, label %369, label %405

369:                                              ; preds = %356
  %370 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %371 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* %5, align 4
  %374 = call i32 @PATH_H_B_ITEM_ORDER(i32 %372, i32 %373)
  store i32 %374, i32* %19, align 4
  %375 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %376 = call i32 @B_NR_ITEMS(%struct.buffer_head* %375)
  %377 = icmp eq i32 %374, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %369
  br label %382

379:                                              ; preds = %369
  %380 = load i32, i32* %19, align 4
  %381 = add nsw i32 %380, 1
  br label %382

382:                                              ; preds = %379, %378
  %383 = phi i32 [ 0, %378 ], [ %381, %379 ]
  store i32 %383, i32* %20, align 4
  %384 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %385 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %384, i32 0, i32 2
  %386 = load %struct.buffer_head**, %struct.buffer_head*** %385, align 8
  %387 = load i32, i32* %5, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %386, i64 %388
  %390 = load %struct.buffer_head*, %struct.buffer_head** %389, align 8
  %391 = load i32, i32* %20, align 4
  %392 = call i32 @B_N_CHILD(%struct.buffer_head* %390, i32 %391)
  %393 = call i32 @dc_size(i32 %392)
  %394 = load i32, i32* @DC_SIZE, align 4
  %395 = load i32, i32* @KEY_SIZE, align 4
  %396 = add nsw i32 %394, %395
  %397 = sdiv i32 %393, %396
  store i32 %397, i32* %19, align 4
  %398 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %399 = load i32, i32* %5, align 4
  %400 = load i32, i32* %19, align 4
  %401 = sub nsw i32 0, %400
  %402 = sub nsw i32 %401, 1
  %403 = call i32 @set_parameters(%struct.tree_balance* %398, i32 %399, i32 0, i32 %402, i32 0, i32* null, i32 -1, i32 -1)
  %404 = load i32, i32* @CARRY_ON, align 4
  store i32 %404, i32* %3, align 4
  br label %569

405:                                              ; preds = %356
  %406 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %407 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %406, i32 0, i32 1
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %414 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %5, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %412, %419
  %421 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %422 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, 1
  %425 = icmp sge i32 %420, %424
  br i1 %425, label %426, label %476

426:                                              ; preds = %405
  %427 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %428 = call i32 @MAX_NR_KEY(%struct.buffer_head* %427)
  %429 = shl i32 %428, 1
  %430 = add nsw i32 %429, 2
  %431 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %432 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 %430, %437
  %439 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %440 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = sub nsw i32 %438, %445
  %447 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %448 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = add nsw i32 %446, %449
  %451 = add nsw i32 %450, 1
  %452 = sdiv i32 %451, 2
  %453 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %454 = call i32 @MAX_NR_KEY(%struct.buffer_head* %453)
  %455 = add nsw i32 %454, 1
  %456 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %457 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 %455, %462
  %464 = sub nsw i32 %452, %463
  store i32 %464, i32* %21, align 4
  %465 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %466 = load i32, i32* %5, align 4
  %467 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %468 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %469, 1
  %471 = load i32, i32* %21, align 4
  %472 = sub nsw i32 %470, %471
  %473 = load i32, i32* %21, align 4
  %474 = call i32 @set_parameters(%struct.tree_balance* %465, i32 %466, i32 %472, i32 %473, i32 0, i32* null, i32 -1, i32 -1)
  %475 = load i32, i32* @CARRY_ON, align 4
  store i32 %475, i32* %3, align 4
  br label %569

476:                                              ; preds = %405
  %477 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %478 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %477, i32 0, i32 3
  %479 = load %struct.buffer_head**, %struct.buffer_head*** %478, align 8
  %480 = load i32, i32* %5, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %479, i64 %481
  %483 = load %struct.buffer_head*, %struct.buffer_head** %482, align 8
  %484 = icmp ne %struct.buffer_head* %483, null
  br i1 %484, label %495, label %485

485:                                              ; preds = %476
  %486 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %487 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %486, i32 0, i32 2
  %488 = load %struct.buffer_head**, %struct.buffer_head*** %487, align 8
  %489 = load i32, i32* %5, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %488, i64 %490
  %492 = load %struct.buffer_head*, %struct.buffer_head** %491, align 8
  %493 = icmp ne %struct.buffer_head* %492, null
  %494 = xor i1 %493, true
  br label %495

495:                                              ; preds = %485, %476
  %496 = phi i1 [ false, %476 ], [ %494, %485 ]
  %497 = zext i1 %496 to i32
  %498 = call i32 @RFALSE(i32 %497, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %499 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %500 = load i32, i32* %5, align 4
  %501 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %499, i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %512, label %503

503:                                              ; preds = %495
  %504 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %505 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %504, i32 0, i32 2
  %506 = load %struct.buffer_head**, %struct.buffer_head*** %505, align 8
  %507 = load i32, i32* %5, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %506, i64 %508
  %510 = load %struct.buffer_head*, %struct.buffer_head** %509, align 8
  %511 = icmp ne %struct.buffer_head* %510, null
  br i1 %511, label %541, label %512

512:                                              ; preds = %503, %495
  %513 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %514 = call i32 @MAX_NR_KEY(%struct.buffer_head* %513)
  %515 = add nsw i32 %514, 1
  %516 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %517 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %516, i32 0, i32 0
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %5, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = sub nsw i32 %515, %522
  %524 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %525 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = add nsw i32 %523, %526
  %528 = add nsw i32 %527, 1
  %529 = sdiv i32 %528, 2
  %530 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %531 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = add nsw i32 %532, 1
  %534 = sub nsw i32 %529, %533
  store i32 %534, i32* %22, align 4
  %535 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %536 = load i32, i32* %5, align 4
  %537 = load i32, i32* %22, align 4
  %538 = sub nsw i32 0, %537
  %539 = call i32 @set_parameters(%struct.tree_balance* %535, i32 %536, i32 %538, i32 0, i32 1, i32* null, i32 -1, i32 -1)
  %540 = load i32, i32* @CARRY_ON, align 4
  store i32 %540, i32* %3, align 4
  br label %569

541:                                              ; preds = %503
  %542 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %543 = load i32, i32* %5, align 4
  %544 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %545 = call i32 @MAX_NR_KEY(%struct.buffer_head* %544)
  %546 = add nsw i32 %545, 1
  %547 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %548 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %5, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = sub nsw i32 %546, %553
  %555 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %556 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = add nsw i32 %554, %557
  %559 = add nsw i32 %558, 1
  %560 = sdiv i32 %559, 2
  %561 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %562 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, 1
  %565 = sub nsw i32 %560, %564
  %566 = sub nsw i32 0, %565
  %567 = call i32 @set_parameters(%struct.tree_balance* %542, i32 %543, i32 0, i32 %566, i32 1, i32* null, i32 -1, i32 -1)
  %568 = load i32, i32* @CARRY_ON, align 4
  store i32 %568, i32* %3, align 4
  br label %569

569:                                              ; preds = %541, %512, %426, %382, %332, %268, %218, %173, %124, %62, %51, %46
  %570 = load i32, i32* %3, align 4
  ret i32 %570
}

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local %struct.buffer_head* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @create_virtual_node(%struct.tree_balance*, i32) #1

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_parents(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_rfree(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_lfree(%struct.tree_balance*, i32) #1

declare dso_local i32 @check_left(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @check_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @MIN_NR_KEY(%struct.buffer_head*) #1

declare dso_local i32 @PATH_H_B_ITEM_ORDER(i32, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @dc_size(i32) #1

declare dso_local i32 @B_N_CHILD(%struct.buffer_head*, i32) #1

declare dso_local i32 @MAX_NR_KEY(%struct.buffer_head*) #1

declare dso_local i64 @is_left_neighbor_in_cache(%struct.tree_balance*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
