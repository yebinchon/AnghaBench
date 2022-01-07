; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_populate_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_populate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.page = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bu_info = type { i32, %struct.TYPE_7__*, %struct.ubifs_data_node* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ubifs_data_node = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"ino %lu, pg %lu, i_size %lld, flags %#lx\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hole\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bad data node (block %u, inode %lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.page*, %struct.bu_info*, i32*)* @populate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_page(%struct.ubifs_info* %0, %struct.page* %1, %struct.bu_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.bu_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ubifs_data_node*, align 8
  %26 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.bu_info* %2, %struct.bu_info** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %30 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %15, align 8
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = call i32 @i_size_read(%struct.inode* %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.inode*, %struct.inode** %15, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %48, i32 %51)
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call i8* @kmap(%struct.page* %53)
  store i8* %54, i8** %19, align 8
  store i8* %54, i8** %18, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %4
  store i32 1, i32* %13, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i32 @memset(i8* %68, i32 0, i32 %69)
  br label %261

71:                                               ; preds = %61
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %71, %211, %226
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %80 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  %84 = load i8*, i8** %18, align 8
  %85 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %86 = call i32 @memset(i8* %84, i32 0, i32 %85)
  br label %220

87:                                               ; preds = %77
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %89 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %90 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = call i32 @key_block(%struct.ubifs_info* %88, i32* %95)
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %199

99:                                               ; preds = %87
  %100 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %101 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %100, i32 0, i32 2
  %102 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %101, align 8
  %103 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %104 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %102, i64 %113
  store %struct.ubifs_data_node* %114, %struct.ubifs_data_node** %25, align 8
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %116 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %117 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @le64_to_cpu(i32 %119)
  %121 = load %struct.inode*, %struct.inode** %15, align 8
  %122 = call %struct.TYPE_8__* @ubifs_inode(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %120, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @ubifs_assert(%struct.ubifs_info* %115, i32 %126)
  %128 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %129 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %99
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %99
  br label %279

139:                                              ; preds = %134
  %140 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %141 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %24, align 4
  %147 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  store i32 %147, i32* %23, align 4
  %148 = load %struct.inode*, %struct.inode** %15, align 8
  %149 = call i64 @ubifs_crypt_is_encrypted(%struct.inode* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %139
  %152 = load %struct.inode*, %struct.inode** %15, align 8
  %153 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @ubifs_decrypt(%struct.inode* %152, %struct.ubifs_data_node* %153, i32* %24, i32 %154)
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %279

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %139
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %162 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %163 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %162, i32 0, i32 1
  %164 = load i32, i32* %24, align 4
  %165 = load i8*, i8** %18, align 8
  %166 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %25, align 8
  %167 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = call i32 @ubifs_decompress(%struct.ubifs_info* %161, i32* %163, i32 %164, i8* %165, i32* %23, i32 %169)
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %21, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %23, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %160
  br label %279

178:                                              ; preds = %173
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i8*, i8** %18, align 8
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr i8, i8* %183, i64 %185
  %187 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %188 = load i32, i32* %22, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 @memset(i8* %186, i32 0, i32 %189)
  br label %191

191:                                              ; preds = %182, %178
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %196 = shl i32 %194, %195
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %14, align 4
  br label %219

199:                                              ; preds = %87
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %201 = load %struct.bu_info*, %struct.bu_info** %8, align 8
  %202 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %201, i32 0, i32 1
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = call i32 @key_block(%struct.ubifs_info* %200, i32* %207)
  %209 = load i32, i32* %17, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %199
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %77

214:                                              ; preds = %199
  store i32 1, i32* %13, align 4
  %215 = load i8*, i8** %18, align 8
  %216 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %217 = call i32 @memset(i8* %215, i32 0, i32 %216)
  br label %218

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218, %191
  br label %220

220:                                              ; preds = %219, %83
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %233

226:                                              ; preds = %220
  %227 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %228 = load i8*, i8** %18, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr i8, i8* %228, i64 %229
  store i8* %230, i8** %18, align 8
  %231 = load i32, i32* %17, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %17, align 4
  br label %77

233:                                              ; preds = %225
  %234 = load i32, i32* %20, align 4
  %235 = load %struct.page*, %struct.page** %7, align 8
  %236 = getelementptr inbounds %struct.page, %struct.page* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %233
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = sub nsw i32 %241, 1
  %243 = and i32 %240, %242
  store i32 %243, i32* %26, align 4
  %244 = load i32, i32* %26, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %239
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* %14, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = load i8*, i8** %19, align 8
  %252 = load i32, i32* %26, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr i8, i8* %251, i64 %253
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %26, align 4
  %257 = sub nsw i32 %255, %256
  %258 = call i32 @memset(i8* %254, i32 0, i32 %257)
  br label %259

259:                                              ; preds = %250, %246, %239
  br label %260

260:                                              ; preds = %259, %233
  br label %261

261:                                              ; preds = %260, %67
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load %struct.page*, %struct.page** %7, align 8
  %266 = call i32 @SetPageChecked(%struct.page* %265)
  %267 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %268

268:                                              ; preds = %264, %261
  %269 = load %struct.page*, %struct.page** %7, align 8
  %270 = call i32 @SetPageUptodate(%struct.page* %269)
  %271 = load %struct.page*, %struct.page** %7, align 8
  %272 = call i32 @ClearPageError(%struct.page* %271)
  %273 = load %struct.page*, %struct.page** %7, align 8
  %274 = call i32 @flush_dcache_page(%struct.page* %273)
  %275 = load %struct.page*, %struct.page** %7, align 8
  %276 = call i32 @kunmap(%struct.page* %275)
  %277 = load i32, i32* %11, align 4
  %278 = load i32*, i32** %9, align 8
  store i32 %277, i32* %278, align 4
  store i32 0, i32* %5, align 4
  br label %296

279:                                              ; preds = %177, %158, %138
  %280 = load %struct.page*, %struct.page** %7, align 8
  %281 = call i32 @ClearPageUptodate(%struct.page* %280)
  %282 = load %struct.page*, %struct.page** %7, align 8
  %283 = call i32 @SetPageError(%struct.page* %282)
  %284 = load %struct.page*, %struct.page** %7, align 8
  %285 = call i32 @flush_dcache_page(%struct.page* %284)
  %286 = load %struct.page*, %struct.page** %7, align 8
  %287 = call i32 @kunmap(%struct.page* %286)
  %288 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %289 = load i32, i32* %17, align 4
  %290 = load %struct.inode*, %struct.inode** %15, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @ubifs_err(%struct.ubifs_info* %288, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %289, i32 %292)
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %279, %268
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @key_block(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_8__* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ubifs_crypt_is_encrypted(%struct.inode*) #1

declare dso_local i32 @ubifs_decrypt(%struct.inode*, %struct.ubifs_data_node*, i32*, i32) #1

declare dso_local i32 @ubifs_decompress(%struct.ubifs_info*, i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
