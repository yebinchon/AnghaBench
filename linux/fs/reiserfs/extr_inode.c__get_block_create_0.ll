; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c__get_block_create_0.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c__get_block_create_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.inode = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.cpu_key = type { i32 }
%struct.item_head = type { i32 }

@path = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TYPE_ANY = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GET_BLOCK_NO_HOLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@GET_BLOCK_READ_DIRECT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @_get_block_create_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_block_create_0(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpu_key, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.item_head*, align 8
  %13 = alloca %struct.item_head, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %23 = call i32 @INITIALIZE_PATH(i32 %22)
  store i8* null, i8** %15, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @TYPE_ANY, align 4
  %35 = call i32 @make_cpu_key(%struct.cpu_key* %10, %struct.inode* %24, i32 %33, i32 %34, i32 3)
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 @search_for_position_by_key(%struct.TYPE_11__* %38, %struct.cpu_key* %10, %struct.TYPE_10__* @path)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @POSITION_FOUND, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %4
  %44 = call i32 @pathrelse(%struct.TYPE_10__* @path)
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kunmap(i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @IO_ERROR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %312

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GET_BLOCK_NO_HOLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @PageUptodate(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %312

73:                                               ; preds = %64, %59
  store i32 0, i32* %5, align 4
  br label %312

74:                                               ; preds = %4
  %75 = call %struct.buffer_head* @get_last_bh(%struct.TYPE_10__* @path)
  store %struct.buffer_head* %75, %struct.buffer_head** %11, align 8
  %76 = call %struct.item_head* @tp_item_head(%struct.TYPE_10__* @path)
  store %struct.item_head* %76, %struct.item_head** %12, align 8
  %77 = load %struct.item_head*, %struct.item_head** %12, align 8
  %78 = call i64 @is_indirect_le_ih(%struct.item_head* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %74
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = load %struct.item_head*, %struct.item_head** %12, align 8
  %83 = call i64 @ih_item_body(%struct.buffer_head* %81, %struct.item_head* %82)
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %21, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %87 = call i64 @get_block_num(i32* %85, i32 %86)
  store i64 %87, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %80
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @map_bh(%struct.buffer_head* %91, %struct.TYPE_11__* %94, i64 %95)
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %98 = load %struct.item_head*, %struct.item_head** %12, align 8
  %99 = call i32 @ih_item_len(%struct.item_head* %98)
  %100 = load i32, i32* @UNFM_P_SIZE, align 4
  %101 = sdiv i32 %99, %100
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %97, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %90
  %105 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %106 = call i32 @set_buffer_boundary(%struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %104, %90
  br label %123

108:                                              ; preds = %80
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @GET_BLOCK_NO_HOLE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @PageUptodate(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %119, %113, %108
  br label %123

123:                                              ; preds = %122, %107
  %124 = call i32 @pathrelse(%struct.TYPE_10__* @path)
  %125 = load i8*, i8** %15, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @kunmap(i32 %130)
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %5, align 4
  br label %312

134:                                              ; preds = %74
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @GET_BLOCK_READ_DIRECT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %134
  %140 = call i32 @pathrelse(%struct.TYPE_10__* @path)
  %141 = load i8*, i8** %15, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @kunmap(i32 %146)
  br label %148

148:                                              ; preds = %143, %139
  %149 = load i32, i32* @ENOENT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %312

151:                                              ; preds = %134
  %152 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %153 = call i64 @buffer_uptodate(%struct.buffer_head* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %296

156:                                              ; preds = %151
  %157 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %158 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @PageUptodate(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161, %156
  %168 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %169 = call i32 @set_buffer_uptodate(%struct.buffer_head* %168)
  br label %296

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170
  %172 = call i32 @cpu_key_k_offset(%struct.cpu_key* %10)
  %173 = sub nsw i32 %172, 1
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = sub nsw i32 %174, 1
  %176 = and i32 %173, %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %20, align 8
  %178 = load %struct.item_head*, %struct.item_head** %12, align 8
  %179 = call i32 @copy_item_head(%struct.item_head* %13, %struct.item_head* %178)
  %180 = load i8*, i8** %15, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %188, label %182

182:                                              ; preds = %171
  %183 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %184 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @kmap(i32 %185)
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %15, align 8
  br label %188

188:                                              ; preds = %182, %171
  %189 = load i64, i64* %20, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %15, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 1
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @memset(i8* %192, i32 0, i32 %197)
  br label %199

199:                                              ; preds = %286, %188
  %200 = load %struct.item_head*, %struct.item_head** %12, align 8
  %201 = call i32 @is_direct_le_ih(%struct.item_head* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 (...) @BUG()
  br label %205

205:                                              ; preds = %203, %199
  %206 = load %struct.item_head*, %struct.item_head** %12, align 8
  %207 = call i32 @le_ih_k_offset(%struct.item_head* %206)
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp sgt i64 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %287

216:                                              ; preds = %205
  %217 = load %struct.item_head*, %struct.item_head** %12, align 8
  %218 = call i32 @le_ih_k_offset(%struct.item_head* %217)
  %219 = sub nsw i32 %218, 1
  %220 = load %struct.item_head*, %struct.item_head** %12, align 8
  %221 = call i32 @ih_item_len(%struct.item_head* %220)
  %222 = add nsw i32 %219, %221
  %223 = sext i32 %222 to i64
  %224 = load %struct.inode*, %struct.inode** %6, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %223, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %216
  %229 = load %struct.inode*, %struct.inode** %6, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.item_head*, %struct.item_head** %12, align 8
  %233 = call i32 @le_ih_k_offset(%struct.item_head* %232)
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %231, %235
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %238 = sext i32 %237 to i64
  %239 = sub nsw i64 %236, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %16, align 4
  store i32 1, i32* %19, align 4
  br label %246

241:                                              ; preds = %216
  %242 = load %struct.item_head*, %struct.item_head** %12, align 8
  %243 = call i32 @ih_item_len(%struct.item_head* %242)
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %245 = sub nsw i32 %243, %244
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %241, %228
  %247 = load i8*, i8** %15, align 8
  %248 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %249 = load %struct.item_head*, %struct.item_head** %12, align 8
  %250 = call i64 @ih_item_body(%struct.buffer_head* %248, %struct.item_head* %249)
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @path, i32 0, i32 0), align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %250, %252
  %254 = load i32, i32* %16, align 4
  %255 = call i32 @memcpy(i8* %247, i64 %253, i32 %254)
  %256 = load i32, i32* %19, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %246
  br label %287

259:                                              ; preds = %246
  %260 = load i32, i32* %16, align 4
  %261 = load i8*, i8** %15, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8* %263, i8** %15, align 8
  %264 = call i32 @PATH_LAST_POSITION(%struct.TYPE_10__* @path)
  %265 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %266 = call i32 @B_NR_ITEMS(%struct.buffer_head* %265)
  %267 = sub nsw i32 %266, 1
  %268 = icmp ne i32 %264, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  br label %287

270:                                              ; preds = %259
  %271 = call i32 @cpu_key_k_offset(%struct.cpu_key* %10)
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %271, %272
  %274 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %10, i32 %273)
  %275 = load %struct.inode*, %struct.inode** %6, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 1
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %276, align 8
  %278 = call i32 @search_for_position_by_key(%struct.TYPE_11__* %277, %struct.cpu_key* %10, %struct.TYPE_10__* @path)
  store i32 %278, i32* %18, align 4
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* @POSITION_FOUND, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  br label %287

283:                                              ; preds = %270
  %284 = call %struct.buffer_head* @get_last_bh(%struct.TYPE_10__* @path)
  store %struct.buffer_head* %284, %struct.buffer_head** %11, align 8
  %285 = call %struct.item_head* @tp_item_head(%struct.TYPE_10__* @path)
  store %struct.item_head* %285, %struct.item_head** %12, align 8
  br label %286

286:                                              ; preds = %283
  br i1 true, label %199, label %287

287:                                              ; preds = %286, %282, %269, %258, %215
  %288 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %289 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @flush_dcache_page(i32 %290)
  %292 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %293 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @kunmap(i32 %294)
  br label %296

296:                                              ; preds = %287, %167, %155
  %297 = call i32 @pathrelse(%struct.TYPE_10__* @path)
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* @IO_ERROR, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i32, i32* @EIO, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %5, align 4
  br label %312

304:                                              ; preds = %296
  %305 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %306 = load %struct.inode*, %struct.inode** %6, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 1
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = call i32 @map_bh(%struct.buffer_head* %305, %struct.TYPE_11__* %308, i64 0)
  %310 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %311 = call i32 @set_buffer_uptodate(%struct.buffer_head* %310)
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %304, %301, %148, %132, %73, %70, %56
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_for_position_by_key(%struct.TYPE_11__*, %struct.cpu_key*, %struct.TYPE_10__*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_10__*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i64 @PageUptodate(i32) #1

declare dso_local %struct.buffer_head* @get_last_bh(%struct.TYPE_10__*) #1

declare dso_local %struct.item_head* @tp_item_head(%struct.TYPE_10__*) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i64 @ih_item_body(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i64 @get_block_num(i32*, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @copy_item_head(%struct.item_head*, %struct.item_head*) #1

declare dso_local i64 @kmap(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @PATH_LAST_POSITION(%struct.TYPE_10__*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
