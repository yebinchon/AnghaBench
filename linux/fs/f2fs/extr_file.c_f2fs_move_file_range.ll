; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_move_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_move_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.inode = type { i64, i64, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_4__ = type { i32* }

@EXDEV = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@F2FS_BLKSIZE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.file*, i64, i64)* @f2fs_move_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_move_file_range(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.f2fs_sb_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %12, align 8
  %24 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %23)
  store %struct.f2fs_sb_info* %24, %struct.f2fs_sb_info** %14, align 8
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.file*, %struct.file** %9, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %5
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %5
  %44 = load i32, i32* @EXDEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %331

46:                                               ; preds = %35
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @f2fs_readonly(i64 %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EROFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %331

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %12, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @S_ISREG(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.inode*, %struct.inode** %13, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @S_ISREG(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %331

71:                                               ; preds = %62
  %72 = load %struct.inode*, %struct.inode** %12, align 8
  %73 = call i64 @IS_ENCRYPTED(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.inode*, %struct.inode** %13, align 8
  %77 = call i64 @IS_ENCRYPTED(%struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %331

82:                                               ; preds = %75
  %83 = load %struct.inode*, %struct.inode** %12, align 8
  %84 = load %struct.inode*, %struct.inode** %13, align 8
  %85 = icmp eq %struct.inode* %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %331

91:                                               ; preds = %86
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %97, %98
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %331

104:                                              ; preds = %95, %91
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.inode*, %struct.inode** %12, align 8
  %107 = call i32 @inode_lock(%struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %12, align 8
  %109 = load %struct.inode*, %struct.inode** %13, align 8
  %110 = icmp ne %struct.inode* %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %18, align 4
  %114 = load %struct.inode*, %struct.inode** %13, align 8
  %115 = call i32 @inode_trylock(%struct.inode* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %327

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %18, align 4
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %122, %123
  %125 = load %struct.inode*, %struct.inode** %12, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ugt i64 %124, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %119
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %130, %131
  %133 = load i64, i64* %8, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %119
  br label %319

136:                                              ; preds = %129
  %137 = load i64, i64* %11, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.inode*, %struct.inode** %12, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = sub i64 %142, %143
  store i64 %144, i64* %11, align 8
  store i64 %144, i64* %15, align 8
  br label %145

145:                                              ; preds = %139, %136
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %11, align 8
  %148 = add i64 %146, %147
  %149 = load %struct.inode*, %struct.inode** %12, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %145
  %154 = load %struct.inode*, %struct.inode** %12, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @F2FS_BLKSIZE, align 4
  %158 = call i64 @ALIGN(i64 %156, i32 %157)
  %159 = load i64, i64* %8, align 8
  %160 = sub i64 %158, %159
  store i64 %160, i64* %11, align 8
  br label %161

161:                                              ; preds = %153, %145
  %162 = load i64, i64* %11, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %18, align 4
  br label %319

165:                                              ; preds = %161
  %166 = load %struct.inode*, %struct.inode** %13, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %17, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %15, align 8
  %171 = add i64 %169, %170
  %172 = load %struct.inode*, %struct.inode** %13, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ugt i64 %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %15, align 8
  %179 = add i64 %177, %178
  store i64 %179, i64* %16, align 8
  br label %180

180:                                              ; preds = %176, %165
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* @F2FS_BLKSIZE, align 4
  %183 = call i32 @IS_ALIGNED(i64 %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* %11, align 8
  %188 = add i64 %186, %187
  %189 = load i32, i32* @F2FS_BLKSIZE, align 4
  %190 = call i32 @IS_ALIGNED(i64 %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i64, i64* %10, align 8
  %194 = load i32, i32* @F2FS_BLKSIZE, align 4
  %195 = call i32 @IS_ALIGNED(i64 %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192, %185, %180
  br label %319

198:                                              ; preds = %192
  %199 = load %struct.inode*, %struct.inode** %12, align 8
  %200 = call i32 @f2fs_convert_inline_inode(%struct.inode* %199)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %319

204:                                              ; preds = %198
  %205 = load %struct.inode*, %struct.inode** %13, align 8
  %206 = call i32 @f2fs_convert_inline_inode(%struct.inode* %205)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %319

210:                                              ; preds = %204
  %211 = load %struct.inode*, %struct.inode** %12, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i64, i64* %8, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %11, align 8
  %217 = add i64 %215, %216
  %218 = call i32 @filemap_write_and_wait_range(i32 %213, i64 %214, i64 %217)
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %319

222:                                              ; preds = %210
  %223 = load %struct.inode*, %struct.inode** %13, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i64, i64* %10, align 8
  %227 = load i64, i64* %10, align 8
  %228 = load i64, i64* %11, align 8
  %229 = add i64 %227, %228
  %230 = call i32 @filemap_write_and_wait_range(i32 %225, i64 %226, i64 %229)
  store i32 %230, i32* %18, align 4
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %222
  br label %319

234:                                              ; preds = %222
  %235 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %14, align 8
  %236 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %235, i32 1)
  %237 = load %struct.inode*, %struct.inode** %12, align 8
  %238 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %237)
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @WRITE, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = call i32 @down_write(i32* %242)
  %244 = load %struct.inode*, %struct.inode** %12, align 8
  %245 = load %struct.inode*, %struct.inode** %13, align 8
  %246 = icmp ne %struct.inode* %244, %245
  br i1 %246, label %247, label %260

247:                                              ; preds = %234
  %248 = load i32, i32* @EBUSY, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %18, align 4
  %250 = load %struct.inode*, %struct.inode** %13, align 8
  %251 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %250)
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* @WRITE, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = call i32 @down_write_trylock(i32* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %247
  br label %311

259:                                              ; preds = %247
  br label %260

260:                                              ; preds = %259, %234
  %261 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %14, align 8
  %262 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %261)
  %263 = load %struct.inode*, %struct.inode** %12, align 8
  %264 = load %struct.inode*, %struct.inode** %13, align 8
  %265 = load i64, i64* %8, align 8
  %266 = load i64, i64* @F2FS_BLKSIZE_BITS, align 8
  %267 = lshr i64 %265, %266
  %268 = load i64, i64* %10, align 8
  %269 = load i64, i64* @F2FS_BLKSIZE_BITS, align 8
  %270 = lshr i64 %268, %269
  %271 = load i64, i64* %11, align 8
  %272 = load i64, i64* @F2FS_BLKSIZE_BITS, align 8
  %273 = lshr i64 %271, %272
  %274 = call i32 @__exchange_data_block(%struct.inode* %263, %struct.inode* %264, i64 %267, i64 %270, i64 %273, i32 0)
  store i32 %274, i32* %18, align 4
  %275 = load i32, i32* %18, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %296, label %277

277:                                              ; preds = %260
  %278 = load i64, i64* %16, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.inode*, %struct.inode** %13, align 8
  %282 = load i64, i64* %16, align 8
  %283 = call i32 @f2fs_i_size_write(%struct.inode* %281, i64 %282)
  br label %295

284:                                              ; preds = %277
  %285 = load i64, i64* %17, align 8
  %286 = load %struct.inode*, %struct.inode** %13, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %285, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load %struct.inode*, %struct.inode** %13, align 8
  %292 = load i64, i64* %17, align 8
  %293 = call i32 @f2fs_i_size_write(%struct.inode* %291, i64 %292)
  br label %294

294:                                              ; preds = %290, %284
  br label %295

295:                                              ; preds = %294, %280
  br label %296

296:                                              ; preds = %295, %260
  %297 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %14, align 8
  %298 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %297)
  %299 = load %struct.inode*, %struct.inode** %12, align 8
  %300 = load %struct.inode*, %struct.inode** %13, align 8
  %301 = icmp ne %struct.inode* %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %296
  %303 = load %struct.inode*, %struct.inode** %13, align 8
  %304 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %303)
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @WRITE, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = call i32 @up_write(i32* %308)
  br label %310

310:                                              ; preds = %302, %296
  br label %311

311:                                              ; preds = %310, %258
  %312 = load %struct.inode*, %struct.inode** %12, align 8
  %313 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %312)
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* @WRITE, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = call i32 @up_write(i32* %317)
  br label %319

319:                                              ; preds = %311, %233, %221, %209, %203, %197, %164, %135
  %320 = load %struct.inode*, %struct.inode** %12, align 8
  %321 = load %struct.inode*, %struct.inode** %13, align 8
  %322 = icmp ne %struct.inode* %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = load %struct.inode*, %struct.inode** %13, align 8
  %325 = call i32 @inode_unlock(%struct.inode* %324)
  br label %326

326:                                              ; preds = %323, %319
  br label %327

327:                                              ; preds = %326, %117
  %328 = load %struct.inode*, %struct.inode** %12, align 8
  %329 = call i32 @inode_unlock(%struct.inode* %328)
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %327, %101, %90, %79, %68, %53, %43
  %332 = load i32, i32* %6, align 4
  ret i32 %332
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_readonly(i64) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_trylock(%struct.inode*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i64, i64) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__exchange_data_block(%struct.inode*, %struct.inode*, i64, i64, i64, i32) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
