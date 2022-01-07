; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_init_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_init_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i8* }
%struct.ext4_group_info = type { i8*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"init page %lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"read bitmap for group %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"put buddy for group %u in page %lu/%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"put bitmap for group %u in page %lu/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i8*, i32)* @ext4_mb_init_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_init_cache(%struct.page* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.ext4_group_info*, align 8
  %23 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store %struct.buffer_head** null, %struct.buffer_head*** %18, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = call i32 (i32, i8*, i64, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %19, align 8
  %34 = load %struct.inode*, %struct.inode** %19, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %16, align 8
  %37 = load %struct.super_block*, %struct.super_block** %16, align 8
  %38 = call i64 @ext4_get_groups_count(%struct.super_block* %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.inode*, %struct.inode** %19, align 8
  %40 = call i32 @i_blocksize(%struct.inode* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.buffer_head** @kzalloc(i32 %57, i32 %58)
  store %struct.buffer_head** %59, %struct.buffer_head*** %18, align 8
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %61 = icmp eq %struct.buffer_head** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %316

65:                                               ; preds = %52
  br label %67

66:                                               ; preds = %49
  store %struct.buffer_head** %17, %struct.buffer_head*** %18, align 8
  br label %67

67:                                               ; preds = %66, %65
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = getelementptr inbounds %struct.page, %struct.page* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 2
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %13, align 8
  store i32 0, i32* %12, align 4
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %130, %67
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %135

80:                                               ; preds = %76
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %135

85:                                               ; preds = %80
  %86 = load %struct.super_block*, %struct.super_block** %16, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %86, i64 %87)
  store %struct.ext4_group_info* %88, %struct.ext4_group_info** %22, align 8
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = call i64 @PageUptodate(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.ext4_group_info*, %struct.ext4_group_info** %22, align 8
  %94 = call i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %97, i64 %99
  store %struct.buffer_head* null, %struct.buffer_head** %100, align 8
  br label %130

101:                                              ; preds = %92, %85
  %102 = load %struct.super_block*, %struct.super_block** %16, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call %struct.buffer_head* @ext4_read_block_bitmap_nowait(%struct.super_block* %102, i64 %103)
  %105 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %105, i64 %107
  store %struct.buffer_head* %104, %struct.buffer_head** %108, align 8
  %109 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %109, i64 %111
  %113 = load %struct.buffer_head*, %struct.buffer_head** %112, align 8
  %114 = call i64 @IS_ERR(%struct.buffer_head* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %101
  %117 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %117, i64 %119
  %121 = load %struct.buffer_head*, %struct.buffer_head** %120, align 8
  %122 = call i32 @PTR_ERR(%struct.buffer_head* %121)
  store i32 %122, i32* %11, align 4
  %123 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %123, i64 %125
  store %struct.buffer_head* null, %struct.buffer_head** %126, align 8
  br label %316

127:                                              ; preds = %101
  %128 = load i64, i64* %14, align 8
  %129 = call i32 (i32, i8*, i64, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %127, %96
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %14, align 8
  br label %76

135:                                              ; preds = %84, %76
  store i32 0, i32* %12, align 4
  %136 = load i64, i64* %13, align 8
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %163, %135
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %142, i64 %144
  %146 = load %struct.buffer_head*, %struct.buffer_head** %145, align 8
  %147 = icmp ne %struct.buffer_head* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  br label %163

149:                                              ; preds = %141
  %150 = load %struct.super_block*, %struct.super_block** %16, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %152, i64 %154
  %156 = load %struct.buffer_head*, %struct.buffer_head** %155, align 8
  %157 = call i32 @ext4_wait_block_bitmap(%struct.super_block* %150, i64 %151, %struct.buffer_head* %156)
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %23, align 4
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %160, %149
  br label %163

163:                                              ; preds = %162, %148
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  %166 = load i64, i64* %14, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %14, align 8
  br label %137

168:                                              ; preds = %137
  %169 = load %struct.page*, %struct.page** %4, align 8
  %170 = getelementptr inbounds %struct.page, %struct.page* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = mul nsw i32 %171, %172
  store i32 %173, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %174

174:                                              ; preds = %310, %168
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %313

178:                                              ; preds = %174
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %179, %180
  %182 = ashr i32 %181, 1
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %14, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %7, align 8
  %186 = icmp uge i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %313

188:                                              ; preds = %178
  %189 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %13, align 8
  %192 = sub i64 %190, %191
  %193 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %189, i64 %192
  %194 = load %struct.buffer_head*, %struct.buffer_head** %193, align 8
  %195 = icmp ne %struct.buffer_head* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %188
  br label %310

197:                                              ; preds = %188
  %198 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* %13, align 8
  %201 = sub i64 %199, %200
  %202 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %198, i64 %201
  %203 = load %struct.buffer_head*, %struct.buffer_head** %202, align 8
  %204 = call i32 @buffer_verified(%struct.buffer_head* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %197
  br label %310

207:                                              ; preds = %197
  store i32 0, i32* %11, align 4
  %208 = load %struct.page*, %struct.page** %4, align 8
  %209 = call i8* @page_address(%struct.page* %208)
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %8, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %209, i64 %213
  store i8* %214, i8** %20, align 8
  %215 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %216 = load i64, i64* %14, align 8
  %217 = load i64, i64* %13, align 8
  %218 = sub i64 %216, %217
  %219 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %215, i64 %218
  %220 = load %struct.buffer_head*, %struct.buffer_head** %219, align 8
  %221 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %21, align 8
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %223, %224
  %226 = and i32 %225, 1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %274

228:                                              ; preds = %207
  %229 = load i8*, i8** %5, align 8
  %230 = icmp eq i8* %229, null
  %231 = zext i1 %230 to i32
  %232 = call i32 @BUG_ON(i32 %231)
  %233 = load i64, i64* %14, align 8
  %234 = load %struct.page*, %struct.page** %4, align 8
  %235 = getelementptr inbounds %struct.page, %struct.page* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %8, align 4
  %239 = mul nsw i32 %237, %238
  %240 = call i32 (i32, i8*, i64, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %233, i32 %236, i32 %239)
  %241 = load %struct.super_block*, %struct.super_block** %16, align 8
  %242 = load i64, i64* %14, align 8
  %243 = call i32 @trace_ext4_mb_buddy_bitmap_load(%struct.super_block* %241, i64 %242)
  %244 = load %struct.super_block*, %struct.super_block** %16, align 8
  %245 = load i64, i64* %14, align 8
  %246 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %244, i64 %245)
  store %struct.ext4_group_info* %246, %struct.ext4_group_info** %22, align 8
  %247 = load %struct.ext4_group_info*, %struct.ext4_group_info** %22, align 8
  %248 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %247, i32 0, i32 1
  store i64 0, i64* %248, align 8
  %249 = load %struct.ext4_group_info*, %struct.ext4_group_info** %22, align 8
  %250 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.super_block*, %struct.super_block** %16, align 8
  %253 = getelementptr inbounds %struct.super_block, %struct.super_block* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 2
  %256 = sext i32 %255 to i64
  %257 = mul i64 1, %256
  %258 = trunc i64 %257 to i32
  %259 = call i32 @memset(i8* %251, i32 0, i32 %258)
  %260 = load %struct.super_block*, %struct.super_block** %16, align 8
  %261 = load i64, i64* %14, align 8
  %262 = call i32 @ext4_lock_group(%struct.super_block* %260, i64 %261)
  %263 = load i8*, i8** %20, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @memset(i8* %263, i32 255, i32 %264)
  %266 = load %struct.super_block*, %struct.super_block** %16, align 8
  %267 = load i8*, i8** %20, align 8
  %268 = load i8*, i8** %5, align 8
  %269 = load i64, i64* %14, align 8
  %270 = call i32 @ext4_mb_generate_buddy(%struct.super_block* %266, i8* %267, i8* %268, i64 %269)
  %271 = load %struct.super_block*, %struct.super_block** %16, align 8
  %272 = load i64, i64* %14, align 8
  %273 = call i32 @ext4_unlock_group(%struct.super_block* %271, i64 %272)
  store i8* null, i8** %5, align 8
  br label %309

274:                                              ; preds = %207
  %275 = load i8*, i8** %5, align 8
  %276 = icmp ne i8* %275, null
  %277 = zext i1 %276 to i32
  %278 = call i32 @BUG_ON(i32 %277)
  %279 = load i64, i64* %14, align 8
  %280 = load %struct.page*, %struct.page** %4, align 8
  %281 = getelementptr inbounds %struct.page, %struct.page* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %8, align 4
  %285 = mul nsw i32 %283, %284
  %286 = call i32 (i32, i8*, i64, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %279, i32 %282, i32 %285)
  %287 = load %struct.super_block*, %struct.super_block** %16, align 8
  %288 = load i64, i64* %14, align 8
  %289 = call i32 @trace_ext4_mb_bitmap_load(%struct.super_block* %287, i64 %288)
  %290 = load %struct.super_block*, %struct.super_block** %16, align 8
  %291 = load i64, i64* %14, align 8
  %292 = call i32 @ext4_lock_group(%struct.super_block* %290, i64 %291)
  %293 = load i8*, i8** %20, align 8
  %294 = load i8*, i8** %21, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i32 @memcpy(i8* %293, i8* %294, i32 %295)
  %297 = load %struct.super_block*, %struct.super_block** %16, align 8
  %298 = load i8*, i8** %20, align 8
  %299 = load i64, i64* %14, align 8
  %300 = call i32 @ext4_mb_generate_from_pa(%struct.super_block* %297, i8* %298, i64 %299)
  %301 = load %struct.super_block*, %struct.super_block** %16, align 8
  %302 = load i8*, i8** %20, align 8
  %303 = load i64, i64* %14, align 8
  %304 = call i32 @ext4_mb_generate_from_freelist(%struct.super_block* %301, i8* %302, i64 %303)
  %305 = load %struct.super_block*, %struct.super_block** %16, align 8
  %306 = load i64, i64* %14, align 8
  %307 = call i32 @ext4_unlock_group(%struct.super_block* %305, i64 %306)
  %308 = load i8*, i8** %20, align 8
  store i8* %308, i8** %5, align 8
  br label %309

309:                                              ; preds = %274, %228
  br label %310

310:                                              ; preds = %309, %206, %196
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %12, align 4
  br label %174

313:                                              ; preds = %187, %174
  %314 = load %struct.page*, %struct.page** %4, align 8
  %315 = call i32 @SetPageUptodate(%struct.page* %314)
  br label %316

316:                                              ; preds = %313, %116, %62
  %317 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %318 = icmp ne %struct.buffer_head** %317, null
  br i1 %318, label %319, label %341

319:                                              ; preds = %316
  store i32 0, i32* %12, align 4
  br label %320

320:                                              ; preds = %331, %319
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %320
  %325 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %326 = load i32, i32* %12, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %325, i64 %327
  %329 = load %struct.buffer_head*, %struct.buffer_head** %328, align 8
  %330 = call i32 @brelse(%struct.buffer_head* %329)
  br label %331

331:                                              ; preds = %324
  %332 = load i32, i32* %12, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %12, align 4
  br label %320

334:                                              ; preds = %320
  %335 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %336 = icmp ne %struct.buffer_head** %335, %17
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %339 = call i32 @kfree(%struct.buffer_head** %338)
  br label %340

340:                                              ; preds = %337, %334
  br label %341

341:                                              ; preds = %340, %316
  %342 = load i32, i32* %11, align 4
  ret i32 %342
}

declare dso_local i32 @mb_debug(i32, i8*, i64, ...) #1

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local %struct.buffer_head** @kzalloc(i32, i32) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i64) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info*) #1

declare dso_local %struct.buffer_head* @ext4_read_block_bitmap_nowait(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_wait_block_bitmap(%struct.super_block*, i64, %struct.buffer_head*) #1

declare dso_local i32 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ext4_mb_buddy_bitmap_load(%struct.super_block*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_mb_generate_buddy(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i64) #1

declare dso_local i32 @trace_ext4_mb_bitmap_load(%struct.super_block*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ext4_mb_generate_from_pa(%struct.super_block*, i8*, i64) #1

declare dso_local i32 @ext4_mb_generate_from_freelist(%struct.super_block*, i8*, i64) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
