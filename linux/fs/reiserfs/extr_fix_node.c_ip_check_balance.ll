; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_ip_check_balance.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_ip_check_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vs-8210\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"S[0] can not be 0\00", align 1
@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-8215\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"incorrect return value of get_empty_nodes\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"vs-8220: tree is not balanced on internal level\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"vs-8225: tree is not balanced on leaf level\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vs-8230: bad h\00", align 1
@SET_PAR_SHIFT_LEFT = common dso_local global i32 0, align 4
@SET_PAR_SHIFT_RIGHT = common dso_local global i32 0, align 4
@FLOW = common dso_local global i32 0, align 4
@LEFT_SHIFT_FLOW = common dso_local global i32 0, align 4
@LEFT_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@LR_SHIFT_FLOW = common dso_local global i32 0, align 4
@LR_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@NOTHING_SHIFT_FLOW = common dso_local global i32 0, align 4
@NOTHING_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@NO_FLOW = common dso_local global i32 0, align 4
@RIGHT_SHIFT_FLOW = common dso_local global i32 0, align 4
@RIGHT_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @ip_check_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_check_balance(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtual_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [40 x i16], align 16
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %29 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 8
  %31 = load %struct.virtual_node*, %struct.virtual_node** %30, align 8
  store %struct.virtual_node* %31, %struct.virtual_node** %6, align 8
  %32 = bitcast [40 x i16]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 80, i1 false)
  %33 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %35, i32 %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %17, align 8
  %38 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %39 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %46 = icmp ne %struct.buffer_head* %45, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @reiserfs_panic(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @get_empty_nodes(%struct.tree_balance* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  switch i32 %58, label %66 [
    i32 130, label %59
    i32 129, label %64
    i32 128, label %64
  ]

59:                                               ; preds = %55
  %60 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @set_parameters(%struct.tree_balance* %60, i32 %61, i32 0, i32 0, i32 1, i16* null, i32 -1, i32 -1)
  %63 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %63, i32* %3, align 4
  br label %683

64:                                               ; preds = %55, %55
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %683

66:                                               ; preds = %55
  %67 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @reiserfs_panic(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @get_parents(%struct.tree_balance* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 130
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %683

80:                                               ; preds = %72
  %81 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %82 = call i32 @B_FREE_SPACE(%struct.buffer_head* %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @get_rfree(%struct.tree_balance* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @get_lfree(%struct.tree_balance* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %90 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @can_node_be_removed(i32 %91, i32 %92, i32 %93, i32 %94, %struct.tree_balance* %95, i32 %96)
  %98 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %80
  %101 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %101, i32* %3, align 4
  br label %683

102:                                              ; preds = %80
  %103 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @create_virtual_node(%struct.tree_balance* %103, i32 %104)
  %106 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @check_left(%struct.tree_balance* %106, i32 %107, i32 %108)
  %110 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @check_right(%struct.tree_balance* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %186

116:                                              ; preds = %102
  %117 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %125 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %123, %130
  %132 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %133 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  %136 = icmp sge i32 %131, %135
  br i1 %136, label %137, label %186

137:                                              ; preds = %116
  %138 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %139 = call i32 @MAX_NR_KEY(%struct.buffer_head* %138)
  %140 = shl i32 %139, 1
  %141 = add nsw i32 %140, 2
  %142 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %143 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %141, %148
  %150 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %151 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %149, %156
  %158 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %159 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = add nsw i32 %161, 1
  %163 = sdiv i32 %162, 2
  %164 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %165 = call i32 @MAX_NR_KEY(%struct.buffer_head* %164)
  %166 = add nsw i32 %165, 1
  %167 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %168 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %166, %173
  %175 = sub nsw i32 %163, %174
  store i32 %175, i32* %18, align 4
  %176 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %179 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %18, align 4
  %183 = sub nsw i32 %181, %182
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @set_parameters(%struct.tree_balance* %176, i32 %177, i32 %183, i32 %184, i32 0, i16* null, i32 -1, i32 -1)
  store i32 130, i32* %3, align 4
  br label %683

186:                                              ; preds = %116, %102
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %217

189:                                              ; preds = %186
  %190 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %191 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %198 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  %201 = icmp sge i32 %196, %200
  br i1 %201, label %215, label %202

202:                                              ; preds = %189
  %203 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %204 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %211 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  %214 = icmp sge i32 %209, %213
  br label %215

215:                                              ; preds = %202, %189
  %216 = phi i1 [ true, %189 ], [ %214, %202 ]
  br label %217

217:                                              ; preds = %215, %186
  %218 = phi i1 [ false, %186 ], [ %216, %215 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @RFALSE(i32 %219, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %261, label %223

223:                                              ; preds = %217
  %224 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %225 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %232 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp sge i32 %230, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %223
  %236 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %237 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %259, label %240

240:                                              ; preds = %235, %223
  %241 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %242 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %249 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp sge i32 %247, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %240
  %253 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %254 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, -1
  br label %257

257:                                              ; preds = %252, %240
  %258 = phi i1 [ false, %240 ], [ %256, %252 ]
  br label %259

259:                                              ; preds = %257, %235
  %260 = phi i1 [ true, %235 ], [ %258, %257 ]
  br label %261

261:                                              ; preds = %259, %217
  %262 = phi i1 [ false, %217 ], [ %260, %259 ]
  %263 = zext i1 %262 to i32
  %264 = call i32 @RFALSE(i32 %263, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %261
  %268 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %269 = call i64 @is_leaf_removable(%struct.tree_balance* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  store i32 130, i32* %3, align 4
  br label %683

272:                                              ; preds = %267, %261
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %7, align 4
  %275 = icmp sge i32 %273, %274
  br i1 %275, label %276, label %290

276:                                              ; preds = %272
  %277 = load i32, i32* %5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %276
  %280 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %281 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %284 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %279, %276
  %286 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @set_parameters(%struct.tree_balance* %286, i32 %287, i32 0, i32 0, i32 1, i16* null, i32 -1, i32 -1)
  %289 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %289, i32* %3, align 4
  br label %683

290:                                              ; preds = %272
  %291 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %292 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %19, align 4
  %298 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %299 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %305 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %306 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* %5, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %290
  %313 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %314 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  br label %317

316:                                              ; preds = %290
  br label %317

317:                                              ; preds = %316, %312
  %318 = phi i32 [ %315, %312 ], [ 0, %316 ]
  %319 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %320 = call i32 @get_num_ver(i32 %307, %struct.tree_balance* %308, i32 %309, i32 0, i32 -1, i32 %318, i32 -1, i16* %319, i32 0)
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %338, label %323

323:                                              ; preds = %317
  %324 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %325 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %328 = load i32, i32* %5, align 4
  %329 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %330 = getelementptr inbounds i16, i16* %329, i64 5
  %331 = call i32 @get_num_ver(i32 %326, %struct.tree_balance* %327, i32 %328, i32 0, i32 -1, i32 0, i32 -1, i16* %330, i32 1)
  store i32 %331, i32* %25, align 4
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %25, align 4
  %334 = icmp sgt i32 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %323
  store i32 5, i32* %21, align 4
  %336 = load i32, i32* %25, align 4
  store i32 %336, i32* %12, align 4
  br label %337

337:                                              ; preds = %335, %323
  br label %338

338:                                              ; preds = %337, %317
  store i32 10, i32* %22, align 4
  %339 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %340 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %343 = load i32, i32* %5, align 4
  %344 = load i32, i32* %19, align 4
  %345 = load i32, i32* %5, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %338
  %348 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %349 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, -1
  br label %352

352:                                              ; preds = %347, %338
  %353 = phi i1 [ true, %338 ], [ %351, %347 ]
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 0, i32 1
  %356 = sub nsw i32 %344, %355
  %357 = load i32, i32* %5, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %352
  %360 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %361 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  br label %364

363:                                              ; preds = %352
  br label %364

364:                                              ; preds = %363, %359
  %365 = phi i32 [ %362, %359 ], [ 0, %363 ]
  %366 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %367 = getelementptr inbounds i16, i16* %366, i64 10
  %368 = call i32 @get_num_ver(i32 %341, %struct.tree_balance* %342, i32 %343, i32 %356, i32 -1, i32 %365, i32 -1, i16* %367, i32 0)
  store i32 %368, i32* %13, align 4
  %369 = load i32, i32* %5, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %397, label %371

371:                                              ; preds = %364
  %372 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %373 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %376 = load i32, i32* %5, align 4
  %377 = load i32, i32* %19, align 4
  %378 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %379 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %380, -1
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 1, i32 0
  %384 = sub nsw i32 %377, %383
  %385 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %386 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %389 = getelementptr inbounds i16, i16* %388, i64 15
  %390 = call i32 @get_num_ver(i32 %374, %struct.tree_balance* %375, i32 %376, i32 %384, i32 %387, i32 0, i32 -1, i16* %389, i32 1)
  store i32 %390, i32* %26, align 4
  %391 = load i32, i32* %13, align 4
  %392 = load i32, i32* %26, align 4
  %393 = icmp sgt i32 %391, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %371
  store i32 15, i32* %22, align 4
  %395 = load i32, i32* %26, align 4
  store i32 %395, i32* %13, align 4
  br label %396

396:                                              ; preds = %394, %371
  br label %397

397:                                              ; preds = %396, %364
  store i32 20, i32* %23, align 4
  %398 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %399 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %402 = load i32, i32* %5, align 4
  %403 = load i32, i32* %5, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %411

405:                                              ; preds = %397
  %406 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %407 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %20, align 4
  %410 = sub nsw i32 %408, %409
  br label %420

411:                                              ; preds = %397
  %412 = load i32, i32* %20, align 4
  %413 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %414 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 4
  %416 = icmp ne i32 %415, -1
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i32 1, i32 0
  %419 = sub nsw i32 %412, %418
  br label %420

420:                                              ; preds = %411, %405
  %421 = phi i32 [ %410, %405 ], [ %419, %411 ]
  %422 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %423 = getelementptr inbounds i16, i16* %422, i64 20
  %424 = call i32 @get_num_ver(i32 %400, %struct.tree_balance* %401, i32 %402, i32 0, i32 -1, i32 %421, i32 -1, i16* %423, i32 0)
  store i32 %424, i32* %14, align 4
  %425 = load i32, i32* %5, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %453, label %427

427:                                              ; preds = %420
  %428 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %429 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %432 = load i32, i32* %5, align 4
  %433 = load i32, i32* %20, align 4
  %434 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %435 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, -1
  %438 = zext i1 %437 to i64
  %439 = select i1 %437, i32 1, i32 0
  %440 = sub nsw i32 %433, %439
  %441 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %442 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %445 = getelementptr inbounds i16, i16* %444, i64 25
  %446 = call i32 @get_num_ver(i32 %430, %struct.tree_balance* %431, i32 %432, i32 0, i32 -1, i32 %440, i32 %443, i16* %445, i32 1)
  store i32 %446, i32* %27, align 4
  %447 = load i32, i32* %14, align 4
  %448 = load i32, i32* %27, align 4
  %449 = icmp sgt i32 %447, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %427
  store i32 25, i32* %23, align 4
  %451 = load i32, i32* %27, align 4
  store i32 %451, i32* %14, align 4
  br label %452

452:                                              ; preds = %450, %427
  br label %453

453:                                              ; preds = %452, %420
  store i32 30, i32* %24, align 4
  %454 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %455 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %458 = load i32, i32* %5, align 4
  %459 = load i32, i32* %19, align 4
  %460 = load i32, i32* %5, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %453
  %463 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %464 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = icmp eq i32 %465, -1
  br label %467

467:                                              ; preds = %462, %453
  %468 = phi i1 [ true, %453 ], [ %466, %462 ]
  %469 = zext i1 %468 to i64
  %470 = select i1 %468, i32 0, i32 1
  %471 = sub nsw i32 %459, %470
  %472 = load i32, i32* %5, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %480

474:                                              ; preds = %467
  %475 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %476 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* %20, align 4
  %479 = sub nsw i32 %477, %478
  br label %489

480:                                              ; preds = %467
  %481 = load i32, i32* %20, align 4
  %482 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %483 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %482, i32 0, i32 4
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, -1
  %486 = zext i1 %485 to i64
  %487 = select i1 %485, i32 1, i32 0
  %488 = sub nsw i32 %481, %487
  br label %489

489:                                              ; preds = %480, %474
  %490 = phi i32 [ %479, %474 ], [ %488, %480 ]
  %491 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %492 = getelementptr inbounds i16, i16* %491, i64 30
  %493 = call i32 @get_num_ver(i32 %456, %struct.tree_balance* %457, i32 %458, i32 %471, i32 -1, i32 %490, i32 -1, i16* %492, i32 0)
  store i32 %493, i32* %15, align 4
  %494 = load i32, i32* %5, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %533, label %496

496:                                              ; preds = %489
  %497 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %498 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %501 = load i32, i32* %5, align 4
  %502 = load i32, i32* %19, align 4
  %503 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %504 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 8
  %506 = icmp ne i32 %505, -1
  %507 = zext i1 %506 to i64
  %508 = select i1 %506, i32 1, i32 0
  %509 = sub nsw i32 %502, %508
  %510 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %511 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* %20, align 4
  %514 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %515 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 4
  %517 = icmp ne i32 %516, -1
  %518 = zext i1 %517 to i64
  %519 = select i1 %517, i32 1, i32 0
  %520 = sub nsw i32 %513, %519
  %521 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %522 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %521, i32 0, i32 4
  %523 = load i32, i32* %522, align 4
  %524 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %525 = getelementptr inbounds i16, i16* %524, i64 35
  %526 = call i32 @get_num_ver(i32 %499, %struct.tree_balance* %500, i32 %501, i32 %509, i32 %512, i32 %520, i32 %523, i16* %525, i32 1)
  store i32 %526, i32* %28, align 4
  %527 = load i32, i32* %15, align 4
  %528 = load i32, i32* %28, align 4
  %529 = icmp sgt i32 %527, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %496
  store i32 35, i32* %24, align 4
  %531 = load i32, i32* %28, align 4
  store i32 %531, i32* %15, align 4
  br label %532

532:                                              ; preds = %530, %496
  br label %533

533:                                              ; preds = %532, %489
  %534 = load i32, i32* %15, align 4
  %535 = load i32, i32* %13, align 4
  %536 = icmp slt i32 %534, %535
  br i1 %536, label %537, label %649

537:                                              ; preds = %533
  %538 = load i32, i32* %15, align 4
  %539 = load i32, i32* %14, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %649

541:                                              ; preds = %537
  %542 = load i32, i32* %5, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %576

544:                                              ; preds = %541
  %545 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %546 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %545, i32 0, i32 2
  %547 = load i32*, i32** %546, align 8
  %548 = load i32, i32* %5, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %547, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = icmp ne i32 %551, 1
  br i1 %552, label %574, label %553

553:                                              ; preds = %544
  %554 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %555 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %554, i32 0, i32 1
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %5, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = icmp ne i32 %560, 1
  br i1 %561, label %574, label %562

562:                                              ; preds = %553
  %563 = load i32, i32* %15, align 4
  %564 = icmp ne i32 %563, 1
  br i1 %564, label %574, label %565

565:                                              ; preds = %562
  %566 = load i32, i32* %14, align 4
  %567 = icmp ne i32 %566, 2
  br i1 %567, label %574, label %568

568:                                              ; preds = %565
  %569 = load i32, i32* %13, align 4
  %570 = icmp ne i32 %569, 2
  br i1 %570, label %574, label %571

571:                                              ; preds = %568
  %572 = load i32, i32* %5, align 4
  %573 = icmp ne i32 %572, 1
  br label %574

574:                                              ; preds = %571, %568, %565, %562, %553, %544
  %575 = phi i1 [ true, %568 ], [ true, %565 ], [ true, %562 ], [ true, %553 ], [ true, %544 ], [ %573, %571 ]
  br label %576

576:                                              ; preds = %574, %541
  %577 = phi i1 [ false, %541 ], [ %575, %574 ]
  %578 = zext i1 %577 to i32
  %579 = call i32 @RFALSE(i32 %578, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %580 = load i32, i32* %24, align 4
  %581 = icmp eq i32 %580, 35
  br i1 %581, label %582, label %611

582:                                              ; preds = %576
  %583 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %584 = load i32, i32* %5, align 4
  %585 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %586 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %585, i32 0, i32 2
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %5, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %593 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %592, i32 0, i32 1
  %594 = load i32*, i32** %593, align 8
  %595 = load i32, i32* %5, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* %15, align 4
  %600 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %601 = load i32, i32* %24, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i16, i16* %600, i64 %602
  %604 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %605 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %604, i32 0, i32 3
  %606 = load i32, i32* %605, align 8
  %607 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %608 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %607, i32 0, i32 4
  %609 = load i32, i32* %608, align 4
  %610 = call i32 @set_parameters(%struct.tree_balance* %583, i32 %584, i32 %591, i32 %598, i32 %599, i16* %603, i32 %606, i32 %609)
  br label %648

611:                                              ; preds = %576
  %612 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %613 = load i32, i32* %5, align 4
  %614 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %615 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %614, i32 0, i32 2
  %616 = load i32*, i32** %615, align 8
  %617 = load i32, i32* %5, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %622 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %621, i32 0, i32 3
  %623 = load i32, i32* %622, align 8
  %624 = icmp eq i32 %623, -1
  %625 = zext i1 %624 to i64
  %626 = select i1 %624, i32 0, i32 1
  %627 = sub nsw i32 %620, %626
  %628 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %629 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %628, i32 0, i32 1
  %630 = load i32*, i32** %629, align 8
  %631 = load i32, i32* %5, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %636 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %635, i32 0, i32 4
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, -1
  %639 = zext i1 %638 to i64
  %640 = select i1 %638, i32 0, i32 1
  %641 = sub nsw i32 %634, %640
  %642 = load i32, i32* %15, align 4
  %643 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %644 = load i32, i32* %24, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i16, i16* %643, i64 %645
  %647 = call i32 @set_parameters(%struct.tree_balance* %612, i32 %613, i32 %627, i32 %641, i32 %642, i16* %646, i32 -1, i32 -1)
  br label %648

648:                                              ; preds = %611, %582
  store i32 130, i32* %3, align 4
  br label %683

649:                                              ; preds = %537, %533
  %650 = load i32, i32* %12, align 4
  %651 = load i32, i32* %15, align 4
  %652 = icmp eq i32 %650, %651
  br i1 %652, label %653, label %662

653:                                              ; preds = %649
  %654 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %655 = load i32, i32* %5, align 4
  %656 = load i32, i32* %12, align 4
  %657 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %658 = load i32, i32* %21, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i16, i16* %657, i64 %659
  %661 = call i32 @set_parameters(%struct.tree_balance* %654, i32 %655, i32 0, i32 0, i32 %656, i16* %660, i32 -1, i32 -1)
  store i32 130, i32* %3, align 4
  br label %683

662:                                              ; preds = %649
  %663 = load i32, i32* %13, align 4
  %664 = load i32, i32* %14, align 4
  %665 = icmp slt i32 %663, %664
  br i1 %665, label %666, label %668

666:                                              ; preds = %662
  %667 = load i32, i32* @SET_PAR_SHIFT_LEFT, align 4
  store i32 130, i32* %3, align 4
  br label %683

668:                                              ; preds = %662
  %669 = load i32, i32* %13, align 4
  %670 = load i32, i32* %14, align 4
  %671 = icmp sgt i32 %669, %670
  br i1 %671, label %672, label %674

672:                                              ; preds = %668
  %673 = load i32, i32* @SET_PAR_SHIFT_RIGHT, align 4
  store i32 130, i32* %3, align 4
  br label %683

674:                                              ; preds = %668
  %675 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %676 = load i32, i32* %5, align 4
  %677 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %675, i32 %676)
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %681

679:                                              ; preds = %674
  %680 = load i32, i32* @SET_PAR_SHIFT_LEFT, align 4
  store i32 130, i32* %3, align 4
  br label %683

681:                                              ; preds = %674
  %682 = load i32, i32* @SET_PAR_SHIFT_RIGHT, align 4
  store i32 130, i32* %3, align 4
  br label %683

683:                                              ; preds = %681, %679, %672, %666, %653, %648, %285, %271, %137, %100, %78, %64, %59
  %684 = load i32, i32* %3, align 4
  ret i32 %684
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #2

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*) #2

declare dso_local i32 @get_empty_nodes(%struct.tree_balance*, i32) #2

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i16*, i32, i32) #2

declare dso_local i32 @get_parents(%struct.tree_balance*, i32) #2

declare dso_local i32 @B_FREE_SPACE(%struct.buffer_head*) #2

declare dso_local i32 @get_rfree(%struct.tree_balance*, i32) #2

declare dso_local i32 @get_lfree(%struct.tree_balance*, i32) #2

declare dso_local i32 @can_node_be_removed(i32, i32, i32, i32, %struct.tree_balance*, i32) #2

declare dso_local i32 @create_virtual_node(%struct.tree_balance*, i32) #2

declare dso_local i32 @check_left(%struct.tree_balance*, i32, i32) #2

declare dso_local i32 @check_right(%struct.tree_balance*, i32, i32) #2

declare dso_local i32 @MAX_NR_KEY(%struct.buffer_head*) #2

declare dso_local i32 @RFALSE(i32, i8*) #2

declare dso_local i64 @is_leaf_removable(%struct.tree_balance*) #2

declare dso_local i32 @get_num_ver(i32, %struct.tree_balance*, i32, i32, i32, i32, i32, i16*, i32) #2

declare dso_local i64 @is_left_neighbor_in_cache(%struct.tree_balance*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
