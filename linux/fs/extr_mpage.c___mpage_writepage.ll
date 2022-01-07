; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mpage.c___mpage_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mpage.c___mpage_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.inode = type { i32, i32 }
%struct.writeback_control = type { i32 }
%struct.mpage_data = type { i64, %struct.bio*, i64, i64 (%struct.inode.0*, i64, %struct.buffer_head*, i32)* }
%struct.bio = type { i32 }
%struct.inode.0 = type opaque
%struct.buffer_head = type opaque
%struct.block_device = type { i32 }
%struct.buffer_head.1 = type { i64, i32, %struct.block_device*, i64, %struct.page*, %struct.buffer_head.1* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i8*)* @__mpage_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mpage_writepage(%struct.page* %0, %struct.writeback_control* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpage_data*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.block_device*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.block_device*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.buffer_head.1, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.buffer_head.1*, align 8
  %30 = alloca %struct.buffer_head.1*, align 8
  %31 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i8* %2, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.mpage_data*
  store %struct.mpage_data* %33, %struct.mpage_data** %7, align 8
  %34 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %35 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %34, i32 0, i32 1
  %36 = load %struct.bio*, %struct.bio** %35, align 8
  store %struct.bio* %36, %struct.bio** %8, align 8
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 1
  %39 = load %struct.address_space*, %struct.address_space** %38, align 8
  store %struct.address_space* %39, %struct.address_space** %9, align 8
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 1
  %42 = load %struct.address_space*, %struct.address_space** %41, align 8
  %43 = getelementptr inbounds %struct.address_space, %struct.address_space* %42, i32 0, i32 1
  %44 = load %struct.inode*, %struct.inode** %43, align 8
  store %struct.inode* %44, %struct.inode** %10, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = lshr i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %16, align 8
  %54 = alloca i64, i64 %52, align 16
  store i64 %52, i64* %17, align 8
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %19, align 4
  store %struct.block_device* null, %struct.block_device** %20, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store %struct.block_device* null, %struct.block_device** %23, align 8
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call i32 @i_size_read(%struct.inode* %56)
  store i32 %57, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %58 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %59 = call i32 @wbc_to_write_flags(%struct.writeback_control* %58)
  store i32 %59, i32* %28, align 4
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i64 @page_has_buffers(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %150

63:                                               ; preds = %3
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call %struct.buffer_head.1* @page_buffers(%struct.page* %64)
  store %struct.buffer_head.1* %65, %struct.buffer_head.1** %29, align 8
  %66 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  store %struct.buffer_head.1* %66, %struct.buffer_head.1** %30, align 8
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %139, %63
  %68 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %69 = call i32 @buffer_locked(%struct.buffer_head.1* %68)
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %72 = call i32 @buffer_mapped(%struct.buffer_head.1* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %76 = call i64 @buffer_dirty(%struct.buffer_head.1* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %393

79:                                               ; preds = %74
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %83, %79
  br label %139

86:                                               ; preds = %67
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %393

91:                                               ; preds = %86
  %92 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %93 = call i64 @buffer_dirty(%struct.buffer_head.1* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %97 = call i32 @buffer_uptodate(%struct.buffer_head.1* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %91
  br label %393

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %105 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sub i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %54, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = icmp ne i64 %106, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %393

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %118 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i64, i64* %54, i64 %122
  store i64 %119, i64* %123, align 8
  %124 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %125 = call i32 @buffer_boundary(%struct.buffer_head.1* %124)
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %116
  %129 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %130 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %22, align 8
  %132 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %133 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %132, i32 0, i32 2
  %134 = load %struct.block_device*, %struct.block_device** %133, align 8
  store %struct.block_device* %134, %struct.block_device** %23, align 8
  br label %135

135:                                              ; preds = %128, %116
  %136 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %137 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %136, i32 0, i32 2
  %138 = load %struct.block_device*, %struct.block_device** %137, align 8
  store %struct.block_device* %138, %struct.block_device** %20, align 8
  br label %139

139:                                              ; preds = %135, %85
  %140 = load %struct.buffer_head.1*, %struct.buffer_head.1** %30, align 8
  %141 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %140, i32 0, i32 5
  %142 = load %struct.buffer_head.1*, %struct.buffer_head.1** %141, align 8
  store %struct.buffer_head.1* %142, %struct.buffer_head.1** %30, align 8
  %143 = load %struct.buffer_head.1*, %struct.buffer_head.1** %29, align 8
  %144 = icmp ne %struct.buffer_head.1* %142, %143
  br i1 %144, label %67, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %242

149:                                              ; preds = %145
  br label %393

150:                                              ; preds = %3
  %151 = load %struct.page*, %struct.page** %4, align 8
  %152 = call i32 @PageUptodate(%struct.page* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @BUG_ON(i32 %155)
  %157 = load %struct.page*, %struct.page** %4, align 8
  %158 = getelementptr inbounds %struct.page, %struct.page* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @PAGE_SHIFT, align 4
  %161 = load i32, i32* %11, align 4
  %162 = sub i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = shl i64 %159, %163
  store i64 %164, i64* %15, align 8
  %165 = load i32, i32* %26, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %11, align 4
  %168 = ashr i32 %166, %167
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %14, align 8
  %170 = load %struct.page*, %struct.page** %4, align 8
  %171 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 4
  store %struct.page* %170, %struct.page** %171, align 8
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %233, %150
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %236

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* %11, align 4
  %179 = shl i32 1, %178
  %180 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %182 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %181, i32 0, i32 3
  %183 = load i64 (%struct.inode.0*, i64, %struct.buffer_head*, i32)*, i64 (%struct.inode.0*, i64, %struct.buffer_head*, i32)** %182, align 8
  %184 = load %struct.inode*, %struct.inode** %10, align 8
  %185 = bitcast %struct.inode* %184 to %struct.inode.0*
  %186 = load i64, i64* %15, align 8
  %187 = bitcast %struct.buffer_head.1* %25 to %struct.buffer_head*
  %188 = call i64 %183(%struct.inode.0* %185, i64 %186, %struct.buffer_head* %187, i32 1)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %176
  br label %393

191:                                              ; preds = %176
  %192 = call i64 @buffer_new(%struct.buffer_head.1* %25)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 @clean_bdev_bh_alias(%struct.buffer_head.1* %25)
  br label %196

196:                                              ; preds = %194, %191
  %197 = call i32 @buffer_boundary(%struct.buffer_head.1* %25)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %22, align 8
  %202 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 2
  %203 = load %struct.block_device*, %struct.block_device** %202, align 8
  store %struct.block_device* %203, %struct.block_device** %23, align 8
  br label %204

204:                                              ; preds = %199, %196
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sub i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %54, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  %216 = icmp ne i64 %209, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  br label %393

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %218, %204
  %220 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %18, align 4
  %224 = zext i32 %222 to i64
  %225 = getelementptr inbounds i64, i64* %54, i64 %224
  store i64 %221, i64* %225, align 8
  %226 = call i32 @buffer_boundary(%struct.buffer_head.1* %25)
  store i32 %226, i32* %21, align 4
  %227 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %25, i32 0, i32 2
  %228 = load %struct.block_device*, %struct.block_device** %227, align 8
  store %struct.block_device* %228, %struct.block_device** %20, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* %14, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  br label %236

233:                                              ; preds = %219
  %234 = load i64, i64* %15, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %15, align 8
  br label %172

236:                                              ; preds = %232, %172
  %237 = load i32, i32* %18, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @BUG_ON(i32 %239)
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %19, align 4
  br label %242

242:                                              ; preds = %236, %148
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* @PAGE_SHIFT, align 4
  %245 = ashr i32 %243, %244
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %12, align 8
  %247 = load %struct.page*, %struct.page** %4, align 8
  %248 = getelementptr inbounds %struct.page, %struct.page* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %12, align 8
  %251 = icmp uge i64 %249, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %242
  %253 = load i32, i32* %26, align 4
  %254 = load i32, i32* @PAGE_SIZE, align 4
  %255 = sub i32 %254, 1
  %256 = and i32 %253, %255
  store i32 %256, i32* %31, align 4
  %257 = load %struct.page*, %struct.page** %4, align 8
  %258 = getelementptr inbounds %struct.page, %struct.page* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %12, align 8
  %261 = icmp ugt i64 %259, %260
  br i1 %261, label %265, label %262

262:                                              ; preds = %252
  %263 = load i32, i32* %31, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262, %252
  br label %393

266:                                              ; preds = %262
  %267 = load %struct.page*, %struct.page** %4, align 8
  %268 = load i32, i32* %31, align 4
  %269 = load i32, i32* @PAGE_SIZE, align 4
  %270 = call i32 @zero_user_segment(%struct.page* %267, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %266, %242
  %272 = load %struct.bio*, %struct.bio** %8, align 8
  %273 = icmp ne %struct.bio* %272, null
  br i1 %273, label %274, label %287

274:                                              ; preds = %271
  %275 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %276 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i64, i64* %54, i64 0
  %279 = load i64, i64* %278, align 16
  %280 = sub nsw i64 %279, 1
  %281 = icmp ne i64 %277, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %274
  %283 = load i32, i32* @REQ_OP_WRITE, align 4
  %284 = load i32, i32* %28, align 4
  %285 = load %struct.bio*, %struct.bio** %8, align 8
  %286 = call %struct.bio* @mpage_bio_submit(i32 %283, i32 %284, %struct.bio* %285)
  store %struct.bio* %286, %struct.bio** %8, align 8
  br label %287

287:                                              ; preds = %282, %274, %271
  br label %288

288:                                              ; preds = %348, %287
  %289 = load %struct.bio*, %struct.bio** %8, align 8
  %290 = icmp eq %struct.bio* %289, null
  br i1 %290, label %291, label %334

291:                                              ; preds = %288
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %13, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %291
  %296 = load %struct.block_device*, %struct.block_device** %20, align 8
  %297 = getelementptr inbounds i64, i64* %54, i64 0
  %298 = load i64, i64* %297, align 16
  %299 = load i32, i32* %11, align 4
  %300 = sub i32 %299, 9
  %301 = zext i32 %300 to i64
  %302 = shl i64 %298, %301
  %303 = load %struct.page*, %struct.page** %4, align 8
  %304 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %305 = call i32 @bdev_write_page(%struct.block_device* %296, i64 %302, %struct.page* %303, %struct.writeback_control* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %295
  br label %422

308:                                              ; preds = %295
  br label %309

309:                                              ; preds = %308, %291
  %310 = load %struct.block_device*, %struct.block_device** %20, align 8
  %311 = getelementptr inbounds i64, i64* %54, i64 0
  %312 = load i64, i64* %311, align 16
  %313 = load i32, i32* %11, align 4
  %314 = sub i32 %313, 9
  %315 = zext i32 %314 to i64
  %316 = shl i64 %312, %315
  %317 = load i32, i32* @BIO_MAX_PAGES, align 4
  %318 = load i32, i32* @GFP_NOFS, align 4
  %319 = load i32, i32* @__GFP_HIGH, align 4
  %320 = or i32 %318, %319
  %321 = call %struct.bio* @mpage_alloc(%struct.block_device* %310, i64 %316, i32 %317, i32 %320)
  store %struct.bio* %321, %struct.bio** %8, align 8
  %322 = load %struct.bio*, %struct.bio** %8, align 8
  %323 = icmp eq %struct.bio* %322, null
  br i1 %323, label %324, label %325

324:                                              ; preds = %309
  br label %393

325:                                              ; preds = %309
  %326 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %327 = load %struct.bio*, %struct.bio** %8, align 8
  %328 = call i32 @wbc_init_bio(%struct.writeback_control* %326, %struct.bio* %327)
  %329 = load %struct.inode*, %struct.inode** %10, align 8
  %330 = getelementptr inbounds %struct.inode, %struct.inode* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.bio*, %struct.bio** %8, align 8
  %333 = getelementptr inbounds %struct.bio, %struct.bio* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 4
  br label %334

334:                                              ; preds = %325, %288
  %335 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %336 = load %struct.page*, %struct.page** %4, align 8
  %337 = load i32, i32* @PAGE_SIZE, align 4
  %338 = call i32 @wbc_account_cgroup_owner(%struct.writeback_control* %335, %struct.page* %336, i32 %337)
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* %11, align 4
  %341 = shl i32 %339, %340
  store i32 %341, i32* %24, align 4
  %342 = load %struct.bio*, %struct.bio** %8, align 8
  %343 = load %struct.page*, %struct.page** %4, align 8
  %344 = load i32, i32* %24, align 4
  %345 = call i32 @bio_add_page(%struct.bio* %342, %struct.page* %343, i32 %344, i32 0)
  %346 = load i32, i32* %24, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %334
  %349 = load i32, i32* @REQ_OP_WRITE, align 4
  %350 = load i32, i32* %28, align 4
  %351 = load %struct.bio*, %struct.bio** %8, align 8
  %352 = call %struct.bio* @mpage_bio_submit(i32 %349, i32 %350, %struct.bio* %351)
  store %struct.bio* %352, %struct.bio** %8, align 8
  br label %288

353:                                              ; preds = %334
  %354 = load %struct.page*, %struct.page** %4, align 8
  %355 = load i32, i32* %19, align 4
  %356 = call i32 @clean_buffers(%struct.page* %354, i32 %355)
  %357 = load %struct.page*, %struct.page** %4, align 8
  %358 = call i32 @PageWriteback(%struct.page* %357)
  %359 = call i32 @BUG_ON(i32 %358)
  %360 = load %struct.page*, %struct.page** %4, align 8
  %361 = call i32 @set_page_writeback(%struct.page* %360)
  %362 = load %struct.page*, %struct.page** %4, align 8
  %363 = call i32 @unlock_page(%struct.page* %362)
  %364 = load i32, i32* %21, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %353
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* %13, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %384

370:                                              ; preds = %366, %353
  %371 = load i32, i32* @REQ_OP_WRITE, align 4
  %372 = load i32, i32* %28, align 4
  %373 = load %struct.bio*, %struct.bio** %8, align 8
  %374 = call %struct.bio* @mpage_bio_submit(i32 %371, i32 %372, %struct.bio* %373)
  store %struct.bio* %374, %struct.bio** %8, align 8
  %375 = load i64, i64* %22, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %370
  %378 = load %struct.block_device*, %struct.block_device** %23, align 8
  %379 = load i64, i64* %22, align 8
  %380 = load i32, i32* %11, align 4
  %381 = shl i32 1, %380
  %382 = call i32 @write_boundary_block(%struct.block_device* %378, i64 %379, i32 %381)
  br label %383

383:                                              ; preds = %377, %370
  br label %392

384:                                              ; preds = %366
  %385 = load i32, i32* %13, align 4
  %386 = sub i32 %385, 1
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %54, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %391 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  br label %392

392:                                              ; preds = %384, %383
  br label %422

393:                                              ; preds = %324, %265, %217, %190, %149, %114, %99, %90, %78
  %394 = load %struct.bio*, %struct.bio** %8, align 8
  %395 = icmp ne %struct.bio* %394, null
  br i1 %395, label %396, label %401

396:                                              ; preds = %393
  %397 = load i32, i32* @REQ_OP_WRITE, align 4
  %398 = load i32, i32* %28, align 4
  %399 = load %struct.bio*, %struct.bio** %8, align 8
  %400 = call %struct.bio* @mpage_bio_submit(i32 %397, i32 %398, %struct.bio* %399)
  store %struct.bio* %400, %struct.bio** %8, align 8
  br label %401

401:                                              ; preds = %396, %393
  %402 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %403 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %401
  %407 = load %struct.address_space*, %struct.address_space** %9, align 8
  %408 = getelementptr inbounds %struct.address_space, %struct.address_space* %407, i32 0, i32 0
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 0
  %411 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %410, align 8
  %412 = load %struct.page*, %struct.page** %4, align 8
  %413 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %414 = call i32 %411(%struct.page* %412, %struct.writeback_control* %413)
  store i32 %414, i32* %27, align 4
  br label %418

415:                                              ; preds = %401
  %416 = load i32, i32* @EAGAIN, align 4
  %417 = sub nsw i32 0, %416
  store i32 %417, i32* %27, align 4
  br label %422

418:                                              ; preds = %406
  %419 = load %struct.address_space*, %struct.address_space** %9, align 8
  %420 = load i32, i32* %27, align 4
  %421 = call i32 @mapping_set_error(%struct.address_space* %419, i32 %420)
  br label %422

422:                                              ; preds = %418, %415, %392, %307
  %423 = load %struct.bio*, %struct.bio** %8, align 8
  %424 = load %struct.mpage_data*, %struct.mpage_data** %7, align 8
  %425 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %424, i32 0, i32 1
  store %struct.bio* %423, %struct.bio** %425, align 8
  %426 = load i32, i32* %27, align 4
  %427 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %427)
  ret i32 %426
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i_size_read(%struct.inode*) #2

declare dso_local i32 @wbc_to_write_flags(%struct.writeback_control*) #2

declare dso_local i64 @page_has_buffers(%struct.page*) #2

declare dso_local %struct.buffer_head.1* @page_buffers(%struct.page*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @buffer_locked(%struct.buffer_head.1*) #2

declare dso_local i32 @buffer_mapped(%struct.buffer_head.1*) #2

declare dso_local i64 @buffer_dirty(%struct.buffer_head.1*) #2

declare dso_local i32 @buffer_uptodate(%struct.buffer_head.1*) #2

declare dso_local i32 @buffer_boundary(%struct.buffer_head.1*) #2

declare dso_local i32 @PageUptodate(%struct.page*) #2

declare dso_local i64 @buffer_new(%struct.buffer_head.1*) #2

declare dso_local i32 @clean_bdev_bh_alias(%struct.buffer_head.1*) #2

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #2

declare dso_local %struct.bio* @mpage_bio_submit(i32, i32, %struct.bio*) #2

declare dso_local i32 @bdev_write_page(%struct.block_device*, i64, %struct.page*, %struct.writeback_control*) #2

declare dso_local %struct.bio* @mpage_alloc(%struct.block_device*, i64, i32, i32) #2

declare dso_local i32 @wbc_init_bio(%struct.writeback_control*, %struct.bio*) #2

declare dso_local i32 @wbc_account_cgroup_owner(%struct.writeback_control*, %struct.page*, i32) #2

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #2

declare dso_local i32 @clean_buffers(%struct.page*, i32) #2

declare dso_local i32 @PageWriteback(%struct.page*) #2

declare dso_local i32 @set_page_writeback(%struct.page*) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local i32 @write_boundary_block(%struct.block_device*, i64, i32) #2

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
