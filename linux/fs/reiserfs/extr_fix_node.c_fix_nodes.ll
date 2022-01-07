; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_fix_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_fix_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32**, i32, i32**, i32**, i32**, i32**, i32**, i32**, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@REPEAT_SEARCH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PAP-8350: creating new empty root\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"PAP-8355: attempt to create too high of a tree\00", align 1
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@MAX_FEB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fix_nodes(i32 %0, %struct.tree_balance* %1, %struct.item_head* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %7, align 8
  store %struct.item_head* %2, %struct.item_head** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %19 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %18, i32 0, i32 10
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 @PATH_LAST_POSITION(%struct.TYPE_7__* %20)
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 10
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_7__* %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %15, align 8
  %26 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_8__* @REISERFS_SB(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 10
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %39 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @get_generation(i32 %40)
  %42 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %45 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %48 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SB_BUFFER_WITH_SB(i32 %49)
  %51 = call i32 @reiserfs_prepare_for_journal(i32 %46, i32 %50, i32 1)
  %52 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %56 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SB_BUFFER_WITH_SB(i32 %57)
  %59 = call i32 @journal_mark_dirty(i32 %54, i32 %58)
  %60 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %61 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %4
  %64 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %64, i32* %5, align 4
  br label %519

65:                                               ; preds = %4
  %66 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %67 = call i64 @buffer_locked(%struct.buffer_head* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %71 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @reiserfs_write_unlock_nested(i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = call i32 @__wait_on_buffer(%struct.buffer_head* %74)
  %76 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %77 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @reiserfs_write_lock_nested(i32 %78, i32 %79)
  %81 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %82 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %85, i32* %5, align 4
  br label %519

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %89 = call i32 @get_mem_for_virtual_node(%struct.tree_balance* %88)
  %90 = load i32, i32* @REPEAT_SEARCH, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %93, i32* %5, align 4
  br label %519

94:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %286, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MAX_HEIGHT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %101 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %99, %95
  %109 = phi i1 [ false, %95 ], [ %107, %99 ]
  br i1 %109, label %110, label %289

110:                                              ; preds = %108
  %111 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @get_direct_parent(%struct.tree_balance* %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @CARRY_ON, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %304

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.item_head*, %struct.item_head** %8, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @check_balance(i32 %119, %struct.tree_balance* %120, i32 %121, i32 %122, i32 %123, %struct.item_head* %124, i8* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @CARRY_ON, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %118
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @get_neighbors(%struct.tree_balance* %135, i32 %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @CARRY_ON, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %304

142:                                              ; preds = %134
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @MAX_HEIGHT, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %149 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %147, %142
  br label %289

156:                                              ; preds = %130
  br label %304

157:                                              ; preds = %118
  %158 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @get_neighbors(%struct.tree_balance* %158, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @CARRY_ON, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %304

165:                                              ; preds = %157
  %166 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @get_empty_nodes(%struct.tree_balance* %166, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @CARRY_ON, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %304

173:                                              ; preds = %165
  %174 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %175 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %174, i32 0, i32 10
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @PATH_H_PBUFFER(%struct.TYPE_7__* %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %204, label %180

180:                                              ; preds = %173
  %181 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %182 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 1
  %189 = zext i1 %188 to i32
  %190 = call i32 @RFALSE(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @MAX_HEIGHT, align 4
  %193 = sub nsw i32 %192, 1
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %180
  %196 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %197 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %195, %180
  br label %285

204:                                              ; preds = %173
  %205 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %206 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %205, i32 0, i32 10
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  %210 = call i32 @PATH_H_PBUFFER(%struct.TYPE_7__* %207, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %264, label %212

212:                                              ; preds = %204
  %213 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %214 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %249

221:                                              ; preds = %212
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @MAX_HEIGHT, align 4
  %224 = sub nsw i32 %223, 1
  %225 = icmp eq i32 %222, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @RFALSE(i32 %226, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %228 = load i32, i32* @DC_SIZE, align 4
  %229 = load i32, i32* @KEY_SIZE, align 4
  %230 = add nsw i32 %228, %229
  %231 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %232 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %237, 1
  %239 = mul nsw i32 %230, %238
  %240 = load i32, i32* @DC_SIZE, align 4
  %241 = add nsw i32 %239, %240
  %242 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %243 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  store i32 %241, i32* %248, align 4
  br label %263

249:                                              ; preds = %212
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @MAX_HEIGHT, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %256 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  store i32 0, i32* %261, align 4
  br label %262

262:                                              ; preds = %254, %249
  br label %263

263:                                              ; preds = %262, %221
  br label %284

264:                                              ; preds = %204
  %265 = load i32, i32* @DC_SIZE, align 4
  %266 = load i32, i32* @KEY_SIZE, align 4
  %267 = add nsw i32 %265, %266
  %268 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %269 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, 1
  %276 = mul nsw i32 %267, %275
  %277 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %278 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  store i32 %276, i32* %283, align 4
  br label %284

284:                                              ; preds = %264, %263
  br label %285

285:                                              ; preds = %284, %203
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %11, align 4
  br label %95

289:                                              ; preds = %155, %108
  %290 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %291 = call i32 @wait_tb_buffers_until_unlocked(%struct.tree_balance* %290)
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* @CARRY_ON, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %297 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  store i32 1, i32* %14, align 4
  %300 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %300, i32* %10, align 4
  br label %304

301:                                              ; preds = %295
  %302 = load i32, i32* @CARRY_ON, align 4
  store i32 %302, i32* %5, align 4
  br label %519

303:                                              ; preds = %289
  store i32 1, i32* %14, align 4
  br label %304

304:                                              ; preds = %303, %299, %172, %164, %156, %141, %117
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %304
  %308 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %309 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %312 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %311, i32 0, i32 10
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = call i32 @pathrelse_and_restore(i32 %310, %struct.TYPE_7__* %313)
  br label %320

315:                                              ; preds = %304
  %316 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %317 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %316, i32 0, i32 10
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %317, align 8
  %319 = call i32 @pathrelse(%struct.TYPE_7__* %318)
  br label %320

320:                                              ; preds = %315, %307
  store i32 0, i32* %17, align 4
  br label %321

321:                                              ; preds = %480, %320
  %322 = load i32, i32* %17, align 4
  %323 = load i32, i32* @MAX_HEIGHT, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %483

325:                                              ; preds = %321
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %395

328:                                              ; preds = %325
  %329 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %330 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %333 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %332, i32 0, i32 9
  %334 = load i32**, i32*** %333, align 8
  %335 = load i32, i32* %17, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32*, i32** %334, i64 %336
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @reiserfs_restore_prepared_buffer(i32 %331, i32* %338)
  %340 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %341 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %344 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %343, i32 0, i32 8
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %17, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 @reiserfs_restore_prepared_buffer(i32 %342, i32* %349)
  %351 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %352 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %355 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %354, i32 0, i32 7
  %356 = load i32**, i32*** %355, align 8
  %357 = load i32, i32* %17, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @reiserfs_restore_prepared_buffer(i32 %353, i32* %360)
  %362 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %363 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %366 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %365, i32 0, i32 6
  %367 = load i32**, i32*** %366, align 8
  %368 = load i32, i32* %17, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32*, i32** %367, i64 %369
  %371 = load i32*, i32** %370, align 8
  %372 = call i32 @reiserfs_restore_prepared_buffer(i32 %364, i32* %371)
  %373 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %374 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %377 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %376, i32 0, i32 5
  %378 = load i32**, i32*** %377, align 8
  %379 = load i32, i32* %17, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32*, i32** %378, i64 %380
  %382 = load i32*, i32** %381, align 8
  %383 = call i32 @reiserfs_restore_prepared_buffer(i32 %375, i32* %382)
  %384 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %385 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %388 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %387, i32 0, i32 4
  %389 = load i32**, i32*** %388, align 8
  %390 = load i32, i32* %17, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*, i32** %389, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = call i32 @reiserfs_restore_prepared_buffer(i32 %386, i32* %393)
  br label %395

395:                                              ; preds = %328, %325
  %396 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %397 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %396, i32 0, i32 9
  %398 = load i32**, i32*** %397, align 8
  %399 = load i32, i32* %17, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32*, i32** %398, i64 %400
  %402 = load i32*, i32** %401, align 8
  %403 = call i32 @brelse(i32* %402)
  %404 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %405 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %404, i32 0, i32 8
  %406 = load i32**, i32*** %405, align 8
  %407 = load i32, i32* %17, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %406, i64 %408
  %410 = load i32*, i32** %409, align 8
  %411 = call i32 @brelse(i32* %410)
  %412 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %413 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %412, i32 0, i32 7
  %414 = load i32**, i32*** %413, align 8
  %415 = load i32, i32* %17, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %414, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = call i32 @brelse(i32* %418)
  %420 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %421 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %420, i32 0, i32 6
  %422 = load i32**, i32*** %421, align 8
  %423 = load i32, i32* %17, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32*, i32** %422, i64 %424
  %426 = load i32*, i32** %425, align 8
  %427 = call i32 @brelse(i32* %426)
  %428 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %429 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %428, i32 0, i32 5
  %430 = load i32**, i32*** %429, align 8
  %431 = load i32, i32* %17, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32*, i32** %430, i64 %432
  %434 = load i32*, i32** %433, align 8
  %435 = call i32 @brelse(i32* %434)
  %436 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %437 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %436, i32 0, i32 4
  %438 = load i32**, i32*** %437, align 8
  %439 = load i32, i32* %17, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32*, i32** %438, i64 %440
  %442 = load i32*, i32** %441, align 8
  %443 = call i32 @brelse(i32* %442)
  %444 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %445 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %444, i32 0, i32 9
  %446 = load i32**, i32*** %445, align 8
  %447 = load i32, i32* %17, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32*, i32** %446, i64 %448
  store i32* null, i32** %449, align 8
  %450 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %451 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %450, i32 0, i32 8
  %452 = load i32**, i32*** %451, align 8
  %453 = load i32, i32* %17, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32*, i32** %452, i64 %454
  store i32* null, i32** %455, align 8
  %456 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %457 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %456, i32 0, i32 7
  %458 = load i32**, i32*** %457, align 8
  %459 = load i32, i32* %17, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32*, i32** %458, i64 %460
  store i32* null, i32** %461, align 8
  %462 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %463 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %462, i32 0, i32 6
  %464 = load i32**, i32*** %463, align 8
  %465 = load i32, i32* %17, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32*, i32** %464, i64 %466
  store i32* null, i32** %467, align 8
  %468 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %469 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %468, i32 0, i32 5
  %470 = load i32**, i32*** %469, align 8
  %471 = load i32, i32* %17, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32*, i32** %470, i64 %472
  store i32* null, i32** %473, align 8
  %474 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %475 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %474, i32 0, i32 4
  %476 = load i32**, i32*** %475, align 8
  %477 = load i32, i32* %17, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32*, i32** %476, i64 %478
  store i32* null, i32** %479, align 8
  br label %480

480:                                              ; preds = %395
  %481 = load i32, i32* %17, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %17, align 4
  br label %321

483:                                              ; preds = %321
  %484 = load i32, i32* %14, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %517

486:                                              ; preds = %483
  store i32 0, i32* %17, align 4
  br label %487

487:                                              ; preds = %513, %486
  %488 = load i32, i32* %17, align 4
  %489 = load i32, i32* @MAX_FEB_SIZE, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %491, label %516

491:                                              ; preds = %487
  %492 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %493 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %492, i32 0, i32 2
  %494 = load i32**, i32*** %493, align 8
  %495 = load i32, i32* %17, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32*, i32** %494, i64 %496
  %498 = load i32*, i32** %497, align 8
  %499 = icmp ne i32* %498, null
  br i1 %499, label %500, label %512

500:                                              ; preds = %491
  %501 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %502 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %505 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %504, i32 0, i32 2
  %506 = load i32**, i32*** %505, align 8
  %507 = load i32, i32* %17, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32*, i32** %506, i64 %508
  %510 = load i32*, i32** %509, align 8
  %511 = call i32 @reiserfs_restore_prepared_buffer(i32 %503, i32* %510)
  br label %512

512:                                              ; preds = %500, %491
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %17, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %17, align 4
  br label %487

516:                                              ; preds = %487
  br label %517

517:                                              ; preds = %516, %483
  %518 = load i32, i32* %10, align 4
  store i32 %518, i32* %5, align 4
  br label %519

519:                                              ; preds = %517, %301, %92, %84, %63
  %520 = load i32, i32* %5, align 4
  ret i32 %520
}

declare dso_local i32 @PATH_LAST_POSITION(%struct.TYPE_7__*) #1

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @REISERFS_SB(i32) #1

declare dso_local i32 @get_generation(i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(i32, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(i32) #1

declare dso_local i32 @journal_mark_dirty(i32, i32) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(i32) #1

declare dso_local i32 @__wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_write_lock_nested(i32, i32) #1

declare dso_local i32 @get_mem_for_virtual_node(%struct.tree_balance*) #1

declare dso_local i32 @get_direct_parent(%struct.tree_balance*, i32) #1

declare dso_local i32 @check_balance(i32, %struct.tree_balance*, i32, i32, i32, %struct.item_head*, i8*) #1

declare dso_local i32 @get_neighbors(%struct.tree_balance*, i32) #1

declare dso_local i32 @get_empty_nodes(%struct.tree_balance*, i32) #1

declare dso_local i32 @PATH_H_PBUFFER(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @wait_tb_buffers_until_unlocked(%struct.tree_balance*) #1

declare dso_local i32 @pathrelse_and_restore(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_7__*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(i32, i32*) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
