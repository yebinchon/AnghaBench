; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32*, i32, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@LEAF_FROM_S_TO_SNEW = common dso_local global i32 0, align 4
@UNFM_P_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32)* @balance_leaf_new_nodes_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_new_nodes_insert(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, %struct.item_head* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_info, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.item_head* %3, %struct.item_head** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %13, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %26 = call i32 @B_NR_ITEMS(%struct.buffer_head* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %29 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %27, %34
  %36 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %37 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %6
  %41 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %42 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %43 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @leaf_move_items(i32 %41, %struct.tree_balance* %42, i32 %49, i32 %56, i32 %63)
  br label %303

65:                                               ; preds = %6
  %66 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %67 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %69, %76
  %78 = add nsw i32 %77, 1
  %79 = icmp eq i32 %68, %78
  br i1 %79, label %80, label %242

80:                                               ; preds = %65
  %81 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %82 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %242

89:                                               ; preds = %80
  %90 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %91 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %92 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %93 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %101 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @leaf_move_items(i32 %90, %struct.tree_balance* %91, i32 %99, i32 -1, i32 %106)
  %108 = load %struct.item_head*, %struct.item_head** %8, align 8
  %109 = call i32 @le_ih_k_offset(%struct.item_head* %108)
  store i32 %109, i32* %17, align 4
  %110 = load %struct.item_head*, %struct.item_head** %8, align 8
  %111 = call i32 @ih_item_len(%struct.item_head* %110)
  store i32 %111, i32* %18, align 4
  store i32 0, i32* %16, align 4
  %112 = load %struct.item_head*, %struct.item_head** %8, align 8
  %113 = call i64 @is_indirect_le_ih(%struct.item_head* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %89
  %116 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %117 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %116, i32 0, i32 6
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UNFM_P_SHIFT, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %115, %89
  %124 = load %struct.item_head*, %struct.item_head** %8, align 8
  %125 = load %struct.item_head*, %struct.item_head** %8, align 8
  %126 = call i32 @le_ih_k_offset(%struct.item_head* %125)
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %129 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %127, %134
  %136 = load i32, i32* %16, align 4
  %137 = shl i32 %135, %136
  %138 = add nsw i32 %126, %137
  %139 = call i32 @set_le_ih_k_offset(%struct.item_head* %124, i32 %138)
  %140 = load %struct.item_head*, %struct.item_head** %8, align 8
  %141 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %142 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @put_ih_item_len(%struct.item_head* %140, i32 %147)
  %149 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %150 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %151 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @buffer_info_init_bh(%struct.tree_balance* %149, %struct.buffer_info* %15, i32 %156)
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %160 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %158, %165
  %167 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %168 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %166, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %123
  store i32 0, i32* %19, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %175 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %173, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %172, i64 %182
  %184 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %185 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr inbounds i8, i8* %183, i64 %188
  store i8* %189, i8** %20, align 8
  br label %210

190:                                              ; preds = %123
  %191 = load i8*, i8** %9, align 8
  store i8* %191, i8** %20, align 8
  %192 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %193 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %197 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %195, %202
  %204 = sub nsw i32 %194, %203
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %207 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %190, %171
  %211 = load %struct.item_head*, %struct.item_head** %8, align 8
  %212 = load i8*, i8** %20, align 8
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %15, i32 0, %struct.item_head* %211, i8* %212, i32 %213)
  %215 = load %struct.item_head*, %struct.item_head** %8, align 8
  %216 = load i32, i32* %17, align 4
  %217 = call i32 @set_le_ih_k_offset(%struct.item_head* %215, i32 %216)
  %218 = load %struct.item_head*, %struct.item_head** %8, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %221 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %219, %226
  %228 = call i32 @put_ih_item_len(%struct.item_head* %218, i32 %227)
  %229 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %230 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %237 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %240, %235
  store i32 %241, i32* %239, align 4
  br label %303

242:                                              ; preds = %80, %65
  %243 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %244 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %245 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %246 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %254 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %261 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @leaf_move_items(i32 %243, %struct.tree_balance* %244, i32 %252, i32 %259, i32 %266)
  %268 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %269 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %270 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @buffer_info_init_bh(%struct.tree_balance* %268, %struct.buffer_info* %15, i32 %275)
  %277 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %278 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = sub nsw i32 %279, %280
  %282 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %283 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %281, %288
  %290 = sub nsw i32 %289, 1
  %291 = load %struct.item_head*, %struct.item_head** %8, align 8
  %292 = load i8*, i8** %9, align 8
  %293 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %294 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %15, i32 %290, %struct.item_head* %291, i8* %292, i32 %295)
  %297 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %298 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %297, i32 0, i32 4
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 0, i32* %300, align 4
  %301 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %302 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %301, i32 0, i32 3
  store i32 0, i32* %302, align 8
  br label %303

303:                                              ; preds = %40, %242, %210
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, i32) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_le_ih_k_offset(%struct.item_head*, i32) #1

declare dso_local i32 @put_ih_item_len(%struct.item_head*, i32) #1

declare dso_local i32 @buffer_info_init_bh(%struct.tree_balance*, %struct.buffer_info*, i32) #1

declare dso_local i32 @leaf_insert_into_buf(%struct.buffer_info*, i32, %struct.item_head*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
