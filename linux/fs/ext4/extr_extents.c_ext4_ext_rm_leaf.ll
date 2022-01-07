; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_rm_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_rm_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32*, %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i32, i32 }
%struct.ext4_extent_header = type { i64 }
%struct.partial_cluster = type { i64, i64, i32 }
%struct.ext4_sb_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"truncate since %u in leaf to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"remove ext %u:[%d]%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"  border %u:%u\0A\00", align 1
@nofree = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"can not handle truncate %u:%u on extent %u:%u\00", align 1
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"new extent: %u:%u:%llu\0A\00", align 1
@tofree = common dso_local global i64 0, align 8
@EXT4_FREE_BLOCKS_RERESERVE_CLUSTER = common dso_local global i32 0, align 4
@initial = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.partial_cluster*, i16, i16)* @ext4_ext_rm_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_rm_leaf(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, %struct.partial_cluster* %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca %struct.partial_cluster*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca %struct.ext4_sb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ext4_extent_header*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i32, align 4
  %26 = alloca %struct.ext4_extent*, align 8
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %10, align 8
  store %struct.partial_cluster* %3, %struct.partial_cluster** %11, align 8
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ext4_sb_info* @EXT4_SB(i32 %31)
  store %struct.ext4_sb_info* %32, %struct.ext4_sb_info** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i32 @ext_depth(%struct.inode* %33)
  store i32 %34, i32* %17, align 4
  store i32 0, i32* %25, align 4
  %35 = load i16, i16* %12, align 2
  %36 = load i16, i16* %13, align 2
  %37 = zext i16 %36 to i32
  %38 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i16 zeroext %35, i32 %37)
  %39 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %39, i64 %41
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i32 0, i32 2
  %44 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %43, align 8
  %45 = icmp ne %struct.ext4_extent_header* %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %6
  %47 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %47, i64 %49
  %51 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call %struct.ext4_extent_header* @ext_block_hdr(i32* %52)
  %54 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %54, i64 %56
  %58 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i32 0, i32 2
  store %struct.ext4_extent_header* %53, %struct.ext4_extent_header** %58, align 8
  br label %59

59:                                               ; preds = %46, %6
  %60 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i64 %62
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i32 0, i32 2
  %65 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %64, align 8
  store %struct.ext4_extent_header* %65, %struct.ext4_extent_header** %19, align 8
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i64 %68
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i32 0, i32 2
  %71 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %70, align 8
  %72 = icmp eq %struct.ext4_extent_header* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %59
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = trunc i32 %78 to i16
  %80 = call i32 (%struct.inode*, i8*, i16, ...) @EXT4_ERROR_INODE(%struct.inode* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %79)
  %81 = load i32, i32* @EFSCORRUPTED, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %492

83:                                               ; preds = %59
  %84 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %84, i64 %86
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %87, i32 0, i32 1
  %89 = load %struct.ext4_extent*, %struct.ext4_extent** %88, align 8
  store %struct.ext4_extent* %89, %struct.ext4_extent** %26, align 8
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %91 = icmp ne %struct.ext4_extent* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %94 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %93)
  store %struct.ext4_extent* %94, %struct.ext4_extent** %26, align 8
  br label %95

95:                                               ; preds = %92, %83
  %96 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %97 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call zeroext i16 @le32_to_cpu(i32 %98)
  store i16 %99, i16* %23, align 2
  %100 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %101 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %100)
  store i16 %101, i16* %24, align 2
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = load i16, i16* %12, align 2
  %104 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %105 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %106 = call i32 @trace_ext4_ext_rm_leaf(%struct.inode* %102, i16 zeroext %103, %struct.ext4_extent* %104, %struct.partial_cluster* %105)
  br label %107

107:                                              ; preds = %371, %202, %95
  %108 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %109 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %110 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %109)
  %111 = icmp uge %struct.ext4_extent* %108, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i16, i16* %23, align 2
  %114 = zext i16 %113 to i32
  %115 = load i16, i16* %24, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = load i16, i16* %12, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp sgt i32 %117, %119
  br label %121

121:                                              ; preds = %112, %107
  %122 = phi i1 [ false, %107 ], [ %120, %112 ]
  br i1 %122, label %123, label %386

123:                                              ; preds = %121
  %124 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %125 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 1, i32* %25, align 4
  br label %129

128:                                              ; preds = %123
  store i32 0, i32* %25, align 4
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i16, i16* %23, align 2
  %131 = load i32, i32* %25, align 4
  %132 = load i16, i16* %24, align 2
  %133 = zext i16 %132 to i32
  %134 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %130, i32 %131, i32 %133)
  %135 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %136 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %136, i64 %138
  %140 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %139, i32 0, i32 1
  store %struct.ext4_extent* %135, %struct.ext4_extent** %140, align 8
  %141 = load i16, i16* %23, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* %12, align 2
  %144 = zext i16 %143 to i32
  %145 = icmp sgt i32 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %129
  %147 = load i16, i16* %23, align 2
  %148 = zext i16 %147 to i32
  br label %152

149:                                              ; preds = %129
  %150 = load i16, i16* %12, align 2
  %151 = zext i16 %150 to i32
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi i32 [ %148, %146 ], [ %151, %149 ]
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %20, align 2
  %155 = load i16, i16* %23, align 2
  %156 = zext i16 %155 to i32
  %157 = load i16, i16* %24, align 2
  %158 = zext i16 %157 to i32
  %159 = add nsw i32 %156, %158
  %160 = sub nsw i32 %159, 1
  %161 = load i16, i16* %13, align 2
  %162 = zext i16 %161 to i32
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %152
  %165 = load i16, i16* %23, align 2
  %166 = zext i16 %165 to i32
  %167 = load i16, i16* %24, align 2
  %168 = zext i16 %167 to i32
  %169 = add nsw i32 %166, %168
  %170 = sub nsw i32 %169, 1
  br label %174

171:                                              ; preds = %152
  %172 = load i16, i16* %13, align 2
  %173 = zext i16 %172 to i32
  br label %174

174:                                              ; preds = %171, %164
  %175 = phi i32 [ %170, %164 ], [ %173, %171 ]
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %21, align 2
  %177 = load i16, i16* %20, align 2
  %178 = load i16, i16* %21, align 2
  %179 = zext i16 %178 to i32
  %180 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %177, i32 %179)
  %181 = load i16, i16* %13, align 2
  %182 = zext i16 %181 to i32
  %183 = load i16, i16* %23, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %174
  %187 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %188 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %193 = call zeroext i16 @ext4_ext_pblock(%struct.ext4_extent* %192)
  store i16 %193, i16* %27, align 2
  %194 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %195 = load i16, i16* %27, align 2
  %196 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %194, i16 zeroext %195)
  %197 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %198 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* @nofree, align 8
  %200 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %201 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %191, %186
  %203 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %204 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %203, i32 -1
  store %struct.ext4_extent* %204, %struct.ext4_extent** %26, align 8
  %205 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %206 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call zeroext i16 @le32_to_cpu(i32 %207)
  store i16 %208, i16* %23, align 2
  %209 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %210 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %209)
  store i16 %210, i16* %24, align 2
  br label %107

211:                                              ; preds = %174
  %212 = load i16, i16* %21, align 2
  %213 = zext i16 %212 to i32
  %214 = load i16, i16* %23, align 2
  %215 = zext i16 %214 to i32
  %216 = load i16, i16* %24, align 2
  %217 = zext i16 %216 to i32
  %218 = add nsw i32 %215, %217
  %219 = sub nsw i32 %218, 1
  %220 = icmp ne i32 %213, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %211
  %222 = load %struct.inode*, %struct.inode** %9, align 8
  %223 = load i16, i16* %12, align 2
  %224 = load i16, i16* %13, align 2
  %225 = zext i16 %224 to i32
  %226 = load i16, i16* %23, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16, i16* %23, align 2
  %229 = zext i16 %228 to i32
  %230 = load i16, i16* %24, align 2
  %231 = zext i16 %230 to i32
  %232 = add nsw i32 %229, %231
  %233 = sub nsw i32 %232, 1
  %234 = call i32 (%struct.inode*, i8*, i16, ...) @EXT4_ERROR_INODE(%struct.inode* %222, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %223, i32 %225, i32 %227, i32 %233)
  %235 = load i32, i32* @EFSCORRUPTED, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %15, align 4
  br label %490

237:                                              ; preds = %211
  %238 = load i16, i16* %20, align 2
  %239 = zext i16 %238 to i32
  %240 = load i16, i16* %23, align 2
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %239, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load i16, i16* %20, align 2
  %245 = zext i16 %244 to i32
  %246 = load i16, i16* %23, align 2
  %247 = zext i16 %246 to i32
  %248 = sub nsw i32 %245, %247
  store i32 %248, i32* %22, align 4
  br label %250

249:                                              ; preds = %237
  store i32 0, i32* %22, align 4
  br label %250

250:                                              ; preds = %249, %243
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  %253 = load i16, i16* %24, align 2
  %254 = zext i16 %253 to i32
  %255 = load %struct.inode*, %struct.inode** %9, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call zeroext i16 @EXT4_BLOCKS_PER_GROUP(i32 %257)
  %259 = zext i16 %258 to i32
  %260 = sdiv i32 %254, %259
  %261 = mul nsw i32 2, %260
  %262 = add nsw i32 7, %261
  store i32 %262, i32* %18, align 4
  %263 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %264 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %265 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %264)
  %266 = icmp eq %struct.ext4_extent* %263, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %252
  store i32 1, i32* %16, align 4
  %268 = load %struct.inode*, %struct.inode** %9, align 8
  %269 = call i32 @ext_depth(%struct.inode* %268)
  %270 = add nsw i32 %269, 1
  %271 = load i32, i32* %18, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %18, align 4
  br label %273

273:                                              ; preds = %267, %252
  %274 = load %struct.inode*, %struct.inode** %9, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(i32 %276)
  %278 = load i32, i32* %18, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %277
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %18, align 4
  %282 = load i32*, i32** %8, align 8
  %283 = load %struct.inode*, %struct.inode** %9, align 8
  %284 = load i32, i32* %18, align 4
  %285 = call i32 @ext4_ext_truncate_extend_restart(i32* %282, %struct.inode* %283, i32 %284)
  store i32 %285, i32* %15, align 4
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %273
  br label %490

289:                                              ; preds = %273
  %290 = load i32*, i32** %8, align 8
  %291 = load %struct.inode*, %struct.inode** %9, align 8
  %292 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %292, i64 %294
  %296 = call i32 @ext4_ext_get_access(i32* %290, %struct.inode* %291, %struct.ext4_ext_path* %295)
  store i32 %296, i32* %15, align 4
  %297 = load i32, i32* %15, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %289
  br label %490

300:                                              ; preds = %289
  %301 = load i32*, i32** %8, align 8
  %302 = load %struct.inode*, %struct.inode** %9, align 8
  %303 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %304 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %305 = load i16, i16* %20, align 2
  %306 = load i16, i16* %21, align 2
  %307 = call i32 @ext4_remove_blocks(i32* %301, %struct.inode* %302, %struct.ext4_extent* %303, %struct.partial_cluster* %304, i16 zeroext %305, i16 zeroext %306)
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %300
  br label %490

311:                                              ; preds = %300
  %312 = load i32, i32* %22, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %316 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %315, i32 0)
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i32, i32* %22, align 4
  %319 = call i32 @cpu_to_le16(i32 %318)
  %320 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %321 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %25, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %317
  %325 = load i32, i32* %22, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %329 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %328)
  br label %330

330:                                              ; preds = %327, %324, %317
  %331 = load i32, i32* %22, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %360

333:                                              ; preds = %330
  %334 = load i16, i16* %13, align 2
  %335 = zext i16 %334 to i32
  %336 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %337 = sub nsw i32 %336, 1
  %338 = icmp ne i32 %335, %337
  br i1 %338, label %339, label %356

339:                                              ; preds = %333
  %340 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %341 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %342 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %341, i64 1
  %343 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %344 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %343)
  %345 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %346 = ptrtoint %struct.ext4_extent* %344 to i64
  %347 = ptrtoint %struct.ext4_extent* %345 to i64
  %348 = sub i64 %346, %347
  %349 = sdiv exact i64 %348, 8
  %350 = mul i64 %349, 8
  %351 = trunc i64 %350 to i32
  %352 = call i32 @memmove(%struct.ext4_extent* %340, %struct.ext4_extent* %342, i32 %351)
  %353 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %354 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %353)
  %355 = call i32 @memset(%struct.ext4_extent* %354, i32 0, i32 8)
  br label %356

356:                                              ; preds = %339, %333
  %357 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %358 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %357, i32 0, i32 0
  %359 = call i32 @le16_add_cpu(i64* %358, i32 -1)
  br label %360

360:                                              ; preds = %356, %330
  %361 = load i32*, i32** %8, align 8
  %362 = load %struct.inode*, %struct.inode** %9, align 8
  %363 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %364 = load i32, i32* %17, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %363, i64 %365
  %367 = call i32 @ext4_ext_dirty(i32* %361, %struct.inode* %362, %struct.ext4_ext_path* %366)
  store i32 %367, i32* %15, align 4
  %368 = load i32, i32* %15, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %360
  br label %490

371:                                              ; preds = %360
  %372 = load i16, i16* %23, align 2
  %373 = load i32, i32* %22, align 4
  %374 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %375 = call zeroext i16 @ext4_ext_pblock(%struct.ext4_extent* %374)
  %376 = zext i16 %375 to i32
  %377 = call i32 (i8*, i16, i32, ...) @ext_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %372, i32 %373, i32 %376)
  %378 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %379 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %378, i32 -1
  store %struct.ext4_extent* %379, %struct.ext4_extent** %26, align 8
  %380 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %381 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = call zeroext i16 @le32_to_cpu(i32 %382)
  store i16 %383, i16* %23, align 2
  %384 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %385 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %384)
  store i16 %385, i16* %24, align 2
  br label %107

386:                                              ; preds = %121
  %387 = load i32, i32* %16, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %399

389:                                              ; preds = %386
  %390 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %391 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %389
  %395 = load i32*, i32** %8, align 8
  %396 = load %struct.inode*, %struct.inode** %9, align 8
  %397 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %398 = call i32 @ext4_ext_correct_indexes(i32* %395, %struct.inode* %396, %struct.ext4_ext_path* %397)
  store i32 %398, i32* %15, align 4
  br label %399

399:                                              ; preds = %394, %389, %386
  %400 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %401 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @tofree, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %467

405:                                              ; preds = %399
  %406 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %407 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %408 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %407)
  %409 = icmp uge %struct.ext4_extent* %406, %408
  br i1 %409, label %410, label %467

410:                                              ; preds = %405
  %411 = load %struct.ext4_extent*, %struct.ext4_extent** %26, align 8
  %412 = call zeroext i16 @ext4_ext_pblock(%struct.ext4_extent* %411)
  %413 = zext i16 %412 to i32
  %414 = load i16, i16* %24, align 2
  %415 = zext i16 %414 to i32
  %416 = add nsw i32 %413, %415
  %417 = sub nsw i32 %416, 1
  %418 = trunc i32 %417 to i16
  store i16 %418, i16* %27, align 2
  %419 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %420 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %423 = load i16, i16* %27, align 2
  %424 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %422, i16 zeroext %423)
  %425 = icmp ne i64 %421, %424
  br i1 %425, label %426, label %463

426:                                              ; preds = %410
  %427 = load %struct.inode*, %struct.inode** %9, align 8
  %428 = call i32 @get_default_free_blocks_flags(%struct.inode* %427)
  store i32 %428, i32* %28, align 4
  %429 = load %struct.inode*, %struct.inode** %9, align 8
  %430 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %431 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = call i64 @ext4_is_pending(%struct.inode* %429, i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %426
  %436 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %437 = load i32, i32* %28, align 4
  %438 = or i32 %437, %436
  store i32 %438, i32* %28, align 4
  br label %439

439:                                              ; preds = %435, %426
  %440 = load i32*, i32** %8, align 8
  %441 = load %struct.inode*, %struct.inode** %9, align 8
  %442 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %443 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %444 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %442, i64 %445)
  %447 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %448 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* %28, align 4
  %451 = call i32 @ext4_free_blocks(i32* %440, %struct.inode* %441, i32* null, i32 %446, i32 %449, i32 %450)
  %452 = load i32, i32* %28, align 4
  %453 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %462

456:                                              ; preds = %439
  %457 = load %struct.inode*, %struct.inode** %9, align 8
  %458 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %459 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @ext4_rereserve_cluster(%struct.inode* %457, i32 %460)
  br label %462

462:                                              ; preds = %456, %439
  br label %463

463:                                              ; preds = %462, %410
  %464 = load i64, i64* @initial, align 8
  %465 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %466 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %465, i32 0, i32 1
  store i64 %464, i64* %466, align 8
  br label %467

467:                                              ; preds = %463, %405, %399
  %468 = load i32, i32* %15, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %489

470:                                              ; preds = %467
  %471 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %19, align 8
  %472 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %489

475:                                              ; preds = %470
  %476 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %477 = load i32, i32* %17, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %476, i64 %478
  %480 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %479, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = icmp ne i32* %481, null
  br i1 %482, label %483, label %489

483:                                              ; preds = %475
  %484 = load i32*, i32** %8, align 8
  %485 = load %struct.inode*, %struct.inode** %9, align 8
  %486 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %487 = load i32, i32* %17, align 4
  %488 = call i32 @ext4_ext_rm_idx(i32* %484, %struct.inode* %485, %struct.ext4_ext_path* %486, i32 %487)
  store i32 %488, i32* %15, align 4
  br label %489

489:                                              ; preds = %483, %475, %470, %467
  br label %490

490:                                              ; preds = %489, %370, %310, %299, %288, %221
  %491 = load i32, i32* %15, align 4
  store i32 %491, i32* %7, align 4
  br label %492

492:                                              ; preds = %490, %76
  %493 = load i32, i32* %7, align 4
  ret i32 %493
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext_debug(i8*, i16 zeroext, i32, ...) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i16 zeroext, ...) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local zeroext i16 @le32_to_cpu(i32) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @trace_ext4_ext_rm_leaf(%struct.inode*, i16 zeroext, %struct.ext4_extent*, %struct.partial_cluster*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i16 zeroext) #1

declare dso_local zeroext i16 @EXT4_BLOCKS_PER_GROUP(i32) #1

declare dso_local i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(i32) #1

declare dso_local i32 @ext4_ext_truncate_extend_restart(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_remove_blocks(i32*, %struct.inode*, %struct.ext4_extent*, %struct.partial_cluster*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @memmove(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @memset(%struct.ext4_extent*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_correct_indexes(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @get_default_free_blocks_flags(%struct.inode*) #1

declare dso_local i64 @ext4_is_pending(%struct.inode*, i32) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @ext4_rereserve_cluster(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_rm_idx(i32*, %struct.inode*, %struct.ext4_ext_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
