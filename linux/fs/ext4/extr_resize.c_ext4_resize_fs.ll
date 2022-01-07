; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_resize_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_resize_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_flex_group_data = type { i32 }
%struct.ext4_sb_info = type { i32, i32, i64, i64, %struct.ext4_super_block* }
%struct.ext4_super_block = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"can't read last block, resize aborted\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"resizing filesystem from %llu to %llu blocks\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"can't shrink FS - resize aborted\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"resize would cause inodes_count overflow\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"resize_inode and meta_bg enabled simultaneously\00", align 1
@EXT4_RESIZE_INO = common dso_local global i32 0, align 4
@EXT4_IGET_SPECIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Error opening resize inode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"resized to %llu blocks\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"error (%d) occurred during file system resize\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"resized filesystem to %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_resize_fs(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_new_flex_group_data*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ext4_new_flex_group_data* null, %struct.ext4_new_flex_group_data** %6, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %23)
  store %struct.ext4_sb_info* %24, %struct.ext4_sb_info** %7, align 8
  %25 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %26 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %25, i32 0, i32 4
  %27 = load %struct.ext4_super_block*, %struct.ext4_super_block** %26, align 8
  store %struct.ext4_super_block* %27, %struct.ext4_super_block** %8, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %28 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  store i32 %31, i32* %21, align 4
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call %struct.buffer_head* @sb_bread(%struct.super_block* %32, i64 %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %9, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = icmp ne %struct.buffer_head* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %2
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %368

43:                                               ; preds = %2
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = call i32 @brelse(%struct.buffer_head* %44)
  br label %46

46:                                               ; preds = %340, %222, %189, %43
  %47 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %48 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %47)
  store i64 %48, i64* %17, align 8
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = load i32, i32* @KERN_INFO, align 4
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @ext4_msg(%struct.super_block* %49, i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %368

62:                                               ; preds = %46
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %17, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %368

67:                                               ; preds = %62
  %68 = load %struct.super_block*, %struct.super_block** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @ext4_get_group_number(%struct.super_block* %68, i64 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %74)
  %76 = sext i32 %75 to i64
  %77 = udiv i64 4294967295, %76
  %78 = icmp uge i64 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.super_block*, %struct.super_block** %4, align 8
  %81 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %368

84:                                               ; preds = %67
  %85 = load %struct.super_block*, %struct.super_block** %4, align 8
  %86 = load i64, i64* %17, align 8
  %87 = sub nsw i64 %86, 1
  %88 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %85, i64 %87, i32* %15, i64* %12)
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i64 @num_desc_blocks(%struct.super_block* %89, i32 %91)
  store i64 %92, i64* %13, align 8
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %95 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @num_desc_blocks(%struct.super_block* %93, i32 %96)
  store i64 %97, i64* %14, align 8
  %98 = load %struct.super_block*, %struct.super_block** %4, align 8
  %99 = call i32 @ext4_has_feature_meta_bg(%struct.super_block* %98)
  store i32 %99, i32* %22, align 4
  %100 = load %struct.super_block*, %struct.super_block** %4, align 8
  %101 = call i64 @ext4_has_feature_resize_inode(%struct.super_block* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %84
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.super_block*, %struct.super_block** %4, align 8
  %108 = call i32 @ext4_error(%struct.super_block* %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %368

111:                                              ; preds = %103
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %115 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @le16_to_cpu(i32 %116)
  %118 = add i64 %113, %117
  %119 = icmp ugt i64 %112, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %111
  %121 = load i64, i64* %5, align 8
  store i64 %121, i64* %18, align 8
  %122 = load i64, i64* %14, align 8
  %123 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %124 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @le16_to_cpu(i32 %125)
  %127 = add i64 %122, %126
  store i64 %127, i64* %13, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.super_block*, %struct.super_block** %4, align 8
  %130 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %129)
  %131 = mul i64 %128, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.super_block*, %struct.super_block** %4, align 8
  %136 = call i64 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %135)
  %137 = mul nsw i64 %134, %136
  %138 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %139 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @le32_to_cpu(i32 %140)
  %142 = add nsw i64 %137, %141
  store i64 %142, i64* %5, align 8
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %120, %111
  %146 = load %struct.inode*, %struct.inode** %10, align 8
  %147 = icmp ne %struct.inode* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load %struct.super_block*, %struct.super_block** %4, align 8
  %150 = load i32, i32* @EXT4_RESIZE_INO, align 4
  %151 = load i32, i32* @EXT4_IGET_SPECIAL, align 4
  %152 = call %struct.inode* @ext4_iget(%struct.super_block* %149, i32 %150, i32 %151)
  store %struct.inode* %152, %struct.inode** %10, align 8
  br label %153

153:                                              ; preds = %148, %145
  %154 = load %struct.inode*, %struct.inode** %10, align 8
  %155 = call i64 @IS_ERR(%struct.inode* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load %struct.super_block*, %struct.super_block** %4, align 8
  %159 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.inode*, %struct.inode** %10, align 8
  %161 = call i32 @PTR_ERR(%struct.inode* %160)
  store i32 %161, i32* %3, align 4
  br label %368

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %84
  %164 = load %struct.inode*, %struct.inode** %10, align 8
  %165 = icmp ne %struct.inode* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %22, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166, %163
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* %17, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %169, %166
  %174 = load %struct.super_block*, %struct.super_block** %4, align 8
  %175 = load %struct.inode*, %struct.inode** %10, align 8
  %176 = call i32 @ext4_convert_meta_bg(%struct.super_block* %174, %struct.inode* %175)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %342

180:                                              ; preds = %173
  %181 = load %struct.inode*, %struct.inode** %10, align 8
  %182 = icmp ne %struct.inode* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.inode*, %struct.inode** %10, align 8
  %185 = call i32 @iput(%struct.inode* %184)
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i64, i64* %18, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i64, i64* %18, align 8
  store i64 %190, i64* %5, align 8
  store i64 0, i64* %18, align 8
  br label %46

191:                                              ; preds = %186
  br label %192

192:                                              ; preds = %191, %169
  %193 = load %struct.super_block*, %struct.super_block** %4, align 8
  %194 = load i32, i32* %16, align 4
  %195 = call i64 @ext4_group_first_block_no(%struct.super_block* %193, i32 %194)
  %196 = load %struct.super_block*, %struct.super_block** %4, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i64 @ext4_group_overhead_blocks(%struct.super_block* %196, i32 %197)
  %199 = add nsw i64 %195, %198
  %200 = add nsw i64 %199, 2
  %201 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %202 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %200, %203
  %205 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %206 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %204, %207
  %209 = load i64, i64* %5, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %192
  %212 = load %struct.super_block*, %struct.super_block** %4, align 8
  %213 = load i32, i32* %16, align 4
  %214 = call i64 @ext4_group_first_block_no(%struct.super_block* %212, i32 %213)
  store i64 %214, i64* %5, align 8
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %217 = load %struct.inode*, %struct.inode** %10, align 8
  %218 = icmp ne %struct.inode* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load %struct.inode*, %struct.inode** %10, align 8
  %221 = call i32 @iput(%struct.inode* %220)
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %222

222:                                              ; preds = %219, %211
  br label %46

223:                                              ; preds = %192
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i64, i64* %5, align 8
  %229 = load i64, i64* %17, align 8
  %230 = sub nsw i64 %228, %229
  store i64 %230, i64* %11, align 8
  br label %239

231:                                              ; preds = %223
  %232 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %233 = load %struct.super_block*, %struct.super_block** %4, align 8
  %234 = call i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %233)
  %235 = load i64, i64* %12, align 8
  %236 = add nsw i64 %235, 1
  %237 = sub nsw i64 %234, %236
  %238 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %232, i64 %237)
  store i64 %238, i64* %11, align 8
  br label %239

239:                                              ; preds = %231, %227
  %240 = load i64, i64* %11, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load %struct.super_block*, %struct.super_block** %4, align 8
  %244 = load i64, i64* %17, align 8
  %245 = load i64, i64* %11, align 8
  %246 = call i32 @ext4_group_extend_no_check(%struct.super_block* %243, i64 %244, i64 %245)
  store i32 %246, i32* %20, align 4
  %247 = load i32, i32* %20, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %342

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250, %239
  %252 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %253 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %252)
  %254 = load i64, i64* %5, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %342

257:                                              ; preds = %251
  %258 = load %struct.super_block*, %struct.super_block** %4, align 8
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, 1
  %261 = call i32 @ext4_alloc_flex_bg_array(%struct.super_block* %258, i32 %260)
  store i32 %261, i32* %20, align 4
  %262 = load i32, i32* %20, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  br label %342

265:                                              ; preds = %257
  %266 = load %struct.super_block*, %struct.super_block** %4, align 8
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, 1
  %269 = call i32 @ext4_mb_alloc_groupinfo(%struct.super_block* %266, i32 %268)
  store i32 %269, i32* %20, align 4
  %270 = load i32, i32* %20, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %342

273:                                              ; preds = %265
  %274 = load i32, i32* %21, align 4
  %275 = call %struct.ext4_new_flex_group_data* @alloc_flex_gd(i32 %274)
  store %struct.ext4_new_flex_group_data* %275, %struct.ext4_new_flex_group_data** %6, align 8
  %276 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %277 = icmp eq %struct.ext4_new_flex_group_data* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load i32, i32* @ENOMEM, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %20, align 4
  br label %342

281:                                              ; preds = %273
  br label %282

282:                                              ; preds = %324, %281
  %283 = load %struct.super_block*, %struct.super_block** %4, align 8
  %284 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %285 = load i64, i64* %5, align 8
  %286 = load i32, i32* %21, align 4
  %287 = call i64 @ext4_setup_next_flex_gd(%struct.super_block* %283, %struct.ext4_new_flex_group_data* %284, i64 %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %325

289:                                              ; preds = %282
  %290 = load i64, i64* @jiffies, align 8
  %291 = load i64, i64* %19, align 8
  %292 = sub i64 %290, %291
  %293 = load i32, i32* @HZ, align 4
  %294 = mul nsw i32 %293, 10
  %295 = sext i32 %294 to i64
  %296 = icmp ugt i64 %292, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %289
  %298 = load i64, i64* %19, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load %struct.super_block*, %struct.super_block** %4, align 8
  %302 = load i32, i32* @KERN_INFO, align 4
  %303 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %304 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %303)
  %305 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @ext4_msg(%struct.super_block* %301, i32 %302, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %304)
  br label %306

306:                                              ; preds = %300, %297
  %307 = load i64, i64* @jiffies, align 8
  store i64 %307, i64* %19, align 8
  br label %308

308:                                              ; preds = %306, %289
  %309 = load %struct.super_block*, %struct.super_block** %4, align 8
  %310 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %311 = load i32, i32* %21, align 4
  %312 = call i64 @ext4_alloc_group_tables(%struct.super_block* %309, %struct.ext4_new_flex_group_data* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %308
  br label %325

315:                                              ; preds = %308
  %316 = load %struct.super_block*, %struct.super_block** %4, align 8
  %317 = load %struct.inode*, %struct.inode** %10, align 8
  %318 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %319 = call i32 @ext4_flex_group_add(%struct.super_block* %316, %struct.inode* %317, %struct.ext4_new_flex_group_data* %318)
  store i32 %319, i32* %20, align 4
  %320 = load i32, i32* %20, align 4
  %321 = call i64 @unlikely(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  br label %325

324:                                              ; preds = %315
  br label %282

325:                                              ; preds = %323, %314, %282
  %326 = load i32, i32* %20, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %341, label %328

328:                                              ; preds = %325
  %329 = load i64, i64* %18, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %341

331:                                              ; preds = %328
  %332 = load i64, i64* %18, align 8
  store i64 %332, i64* %5, align 8
  store i64 0, i64* %18, align 8
  %333 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %334 = call i32 @free_flex_gd(%struct.ext4_new_flex_group_data* %333)
  store %struct.ext4_new_flex_group_data* null, %struct.ext4_new_flex_group_data** %6, align 8
  %335 = load %struct.inode*, %struct.inode** %10, align 8
  %336 = icmp ne %struct.inode* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load %struct.inode*, %struct.inode** %10, align 8
  %339 = call i32 @iput(%struct.inode* %338)
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %340

340:                                              ; preds = %337, %331
  br label %46

341:                                              ; preds = %328, %325
  br label %342

342:                                              ; preds = %341, %278, %272, %264, %256, %249, %179
  %343 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %344 = icmp ne %struct.ext4_new_flex_group_data* %343, null
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %347 = call i32 @free_flex_gd(%struct.ext4_new_flex_group_data* %346)
  br label %348

348:                                              ; preds = %345, %342
  %349 = load %struct.inode*, %struct.inode** %10, align 8
  %350 = icmp ne %struct.inode* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load %struct.inode*, %struct.inode** %10, align 8
  %353 = call i32 @iput(%struct.inode* %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = load i32, i32* %20, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = load %struct.super_block*, %struct.super_block** %4, align 8
  %359 = load i32, i32* %20, align 4
  %360 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %358, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %359)
  br label %361

361:                                              ; preds = %357, %354
  %362 = load %struct.super_block*, %struct.super_block** %4, align 8
  %363 = load i32, i32* @KERN_INFO, align 4
  %364 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %365 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %364)
  %366 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @ext4_msg(%struct.super_block* %362, i32 %363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %365)
  %367 = load i32, i32* %20, align 4
  store i32 %367, i32* %3, align 4
  br label %368

368:                                              ; preds = %361, %157, %106, %79, %66, %57, %38
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, i64, ...) #1

declare dso_local i32 @ext4_get_group_number(%struct.super_block*, i64) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_get_group_no_and_offset(%struct.super_block*, i64, i32*, i64*) #1

declare dso_local i64 @num_desc_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_has_feature_meta_bg(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_resize_inode(%struct.super_block*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i64 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.inode* @ext4_iget(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_convert_meta_bg(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_group_overhead_blocks(%struct.super_block*, i32) #1

declare dso_local i64 @EXT4_C2B(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_group_extend_no_check(%struct.super_block*, i64, i64) #1

declare dso_local i32 @ext4_alloc_flex_bg_array(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_mb_alloc_groupinfo(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_new_flex_group_data* @alloc_flex_gd(i32) #1

declare dso_local i64 @ext4_setup_next_flex_gd(%struct.super_block*, %struct.ext4_new_flex_group_data*, i64, i32) #1

declare dso_local i64 @ext4_alloc_group_tables(%struct.super_block*, %struct.ext4_new_flex_group_data*, i32) #1

declare dso_local i32 @ext4_flex_group_add(%struct.super_block*, %struct.inode*, %struct.ext4_new_flex_group_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_flex_gd(%struct.ext4_new_flex_group_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
