; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_ext4_move_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_ext4_move_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i64, i32, i32 }
%struct.ext4_ext_path = type { i64, %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"ext4 move extent: The argument files should be in same FS [ino:orig %lu, donor %lu]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"ext4 move extent: The argument files should not be same inode [ino:orig %lu, donor %lu]\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"ext4 move extent: The argument files should be regular file [ino:orig %lu, donor %lu]\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Online defrag not supported with data journaling\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Online defrag not supported for encrypted files\00", align 1
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_move_extents(%struct.file* %0, %struct.file* %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ext4_ext_path*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ext4_extent*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.file* %1, %struct.file** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %30 = load %struct.file*, %struct.file** %8, align 8
  %31 = call %struct.inode* @file_inode(%struct.file* %30)
  store %struct.inode* %31, %struct.inode** %14, align 8
  %32 = load %struct.file*, %struct.file** %9, align 8
  %33 = call %struct.inode* @file_inode(%struct.file* %32)
  store %struct.inode* %33, %struct.inode** %15, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %16, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load %struct.inode*, %struct.inode** %14, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %34, %37
  store i32 %38, i32* %17, align 4
  %39 = load i64, i64* %10, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %19, align 4
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %20, align 4
  %43 = load %struct.inode*, %struct.inode** %14, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.inode*, %struct.inode** %15, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %6
  %51 = load %struct.inode*, %struct.inode** %14, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %15, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ext4_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %323

60:                                               ; preds = %6
  %61 = load %struct.inode*, %struct.inode** %14, align 8
  %62 = load %struct.inode*, %struct.inode** %15, align 8
  %63 = icmp eq %struct.inode* %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %15, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ext4_debug(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %323

74:                                               ; preds = %60
  %75 = load %struct.inode*, %struct.inode** %14, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @S_ISREG(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %15, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @S_ISREG(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.inode*, %struct.inode** %14, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %15, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ext4_debug(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %323

96:                                               ; preds = %80
  %97 = load %struct.inode*, %struct.inode** %14, align 8
  %98 = call i64 @ext4_should_journal_data(%struct.inode* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load %struct.inode*, %struct.inode** %15, align 8
  %102 = call i64 @ext4_should_journal_data(%struct.inode* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100, %96
  %105 = load %struct.inode*, %struct.inode** %14, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @KERN_ERR, align 4
  %109 = call i32 @ext4_msg(i64 %107, i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @EOPNOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %323

112:                                              ; preds = %100
  %113 = load %struct.inode*, %struct.inode** %14, align 8
  %114 = call i64 @IS_ENCRYPTED(%struct.inode* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load %struct.inode*, %struct.inode** %15, align 8
  %118 = call i64 @IS_ENCRYPTED(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116, %112
  %121 = load %struct.inode*, %struct.inode** %14, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = call i32 @ext4_msg(i64 %123, i32 %124, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EOPNOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %323

128:                                              ; preds = %116
  %129 = load %struct.inode*, %struct.inode** %14, align 8
  %130 = load %struct.inode*, %struct.inode** %15, align 8
  %131 = call i32 @lock_two_nondirectories(%struct.inode* %129, %struct.inode* %130)
  %132 = load %struct.inode*, %struct.inode** %14, align 8
  %133 = call i32 @inode_dio_wait(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %15, align 8
  %135 = call i32 @inode_dio_wait(%struct.inode* %134)
  %136 = load %struct.inode*, %struct.inode** %14, align 8
  %137 = load %struct.inode*, %struct.inode** %15, align 8
  %138 = call i32 @ext4_double_down_write_data_sem(%struct.inode* %136, %struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %14, align 8
  %140 = load %struct.inode*, %struct.inode** %15, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @mext_check_arguments(%struct.inode* %139, %struct.inode* %140, i64 %141, i64 %142, i64* %12)
  store i32 %143, i32* %21, align 4
  %144 = load i32, i32* %21, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %128
  br label %302

147:                                              ; preds = %128
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %12, align 8
  %151 = add nsw i64 %149, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %281, %194, %147
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %288

157:                                              ; preds = %153
  %158 = load %struct.inode*, %struct.inode** %14, align 8
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @get_ext_path(%struct.inode* %158, i32 %159, %struct.ext4_ext_path** %16)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %302

164:                                              ; preds = %157
  %165 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %166 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %167 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %165, i64 %168
  %170 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %169, i32 0, i32 1
  %171 = load %struct.ext4_extent*, %struct.ext4_extent** %170, align 8
  store %struct.ext4_extent* %171, %struct.ext4_extent** %22, align 8
  %172 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %173 = call i32 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %172)
  store i32 %173, i32* %24, align 4
  %174 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %175 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le32_to_cpu(i32 %176)
  store i32 %177, i32* %23, align 4
  %178 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %179 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %178)
  store i32 %179, i32* %29, align 4
  %180 = load i32, i32* %23, align 4
  %181 = load i32, i32* %29, align 4
  %182 = add nsw i32 %180, %181
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %19, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %164
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, i32* %18, align 4
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* @ENODATA, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %21, align 4
  br label %302

194:                                              ; preds = %186
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 %195, %196
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %20, align 4
  %200 = load i32, i32* %24, align 4
  store i32 %200, i32* %19, align 4
  br label %153

201:                                              ; preds = %164
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %19, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %19, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %20, align 4
  %211 = load i32, i32* %23, align 4
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %18, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %302

216:                                              ; preds = %205
  br label %223

217:                                              ; preds = %201
  %218 = load i32, i32* %23, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load i32, i32* %29, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %29, align 4
  br label %223

223:                                              ; preds = %217, %216
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.ext4_extent*, %struct.ext4_extent** %22, align 8
  %226 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %225)
  store i32 %226, i32* %28, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %19, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %29, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = sub nsw i32 %233, %234
  store i32 %235, i32* %29, align 4
  br label %236

236:                                              ; preds = %232, %224
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* @PAGE_SHIFT, align 4
  %239 = load %struct.inode*, %struct.inode** %14, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %238, %241
  %243 = ashr i32 %237, %242
  store i32 %243, i32* %25, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* @PAGE_SHIFT, align 4
  %246 = load %struct.inode*, %struct.inode** %15, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %245, %248
  %250 = ashr i32 %244, %249
  store i32 %250, i32* %26, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %17, align 4
  %253 = srem i32 %251, %252
  store i32 %253, i32* %27, align 4
  %254 = load i32, i32* %29, align 4
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %27, align 4
  %257 = sub nsw i32 %255, %256
  %258 = icmp sgt i32 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %236
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %27, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %29, align 4
  br label %263

263:                                              ; preds = %259, %236
  %264 = load %struct.inode*, %struct.inode** %14, align 8
  %265 = load %struct.inode*, %struct.inode** %15, align 8
  %266 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %264, %struct.inode* %265)
  %267 = load %struct.file*, %struct.file** %8, align 8
  %268 = load %struct.inode*, %struct.inode** %15, align 8
  %269 = load i32, i32* %25, align 4
  %270 = load i32, i32* %26, align 4
  %271 = load i32, i32* %27, align 4
  %272 = load i32, i32* %29, align 4
  %273 = load i32, i32* %28, align 4
  %274 = call i32 @move_extent_per_page(%struct.file* %267, %struct.inode* %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32* %21)
  %275 = load %struct.inode*, %struct.inode** %14, align 8
  %276 = load %struct.inode*, %struct.inode** %15, align 8
  %277 = call i32 @ext4_double_down_write_data_sem(%struct.inode* %275, %struct.inode* %276)
  %278 = load i32, i32* %21, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %263
  br label %288

281:                                              ; preds = %263
  %282 = load i32, i32* %29, align 4
  %283 = load i32, i32* %19, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %19, align 4
  %285 = load i32, i32* %29, align 4
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, i32* %20, align 4
  br label %153

288:                                              ; preds = %280, %153
  %289 = load i32, i32* %19, align 4
  %290 = sext i32 %289 to i64
  %291 = load i64, i64* %10, align 8
  %292 = sub nsw i64 %290, %291
  %293 = load i64*, i64** %13, align 8
  store i64 %292, i64* %293, align 8
  %294 = load i64*, i64** %13, align 8
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* %12, align 8
  %297 = icmp sgt i64 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %288
  %299 = load i64, i64* %12, align 8
  %300 = load i64*, i64** %13, align 8
  store i64 %299, i64* %300, align 8
  br label %301

301:                                              ; preds = %298, %288
  br label %302

302:                                              ; preds = %301, %215, %190, %163, %146
  %303 = load i64*, i64** %13, align 8
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load %struct.inode*, %struct.inode** %14, align 8
  %308 = call i32 @ext4_discard_preallocations(%struct.inode* %307)
  %309 = load %struct.inode*, %struct.inode** %15, align 8
  %310 = call i32 @ext4_discard_preallocations(%struct.inode* %309)
  br label %311

311:                                              ; preds = %306, %302
  %312 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %313 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %312)
  %314 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %315 = call i32 @kfree(%struct.ext4_ext_path* %314)
  %316 = load %struct.inode*, %struct.inode** %14, align 8
  %317 = load %struct.inode*, %struct.inode** %15, align 8
  %318 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %316, %struct.inode* %317)
  %319 = load %struct.inode*, %struct.inode** %14, align 8
  %320 = load %struct.inode*, %struct.inode** %15, align 8
  %321 = call i32 @unlock_two_nondirectories(%struct.inode* %319, %struct.inode* %320)
  %322 = load i32, i32* %21, align 4
  store i32 %322, i32* %7, align 4
  br label %323

323:                                              ; preds = %311, %120, %104, %86, %64, %50
  %324 = load i32, i32* %7, align 4
  ret i32 %324
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @ext4_debug(i8*, i32, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_msg(i64, i32, i8*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @lock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @ext4_double_down_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @mext_check_arguments(%struct.inode*, %struct.inode*, i64, i64, i64*) #1

declare dso_local i32 @get_ext_path(%struct.inode*, i32, %struct.ext4_ext_path**) #1

declare dso_local i32 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_double_up_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @move_extent_per_page(%struct.file*, %struct.inode*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
