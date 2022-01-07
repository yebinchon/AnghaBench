; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_fill_fiemap_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_fill_fiemap_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }
%struct.fiemap_extent_info = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, i32* }
%struct.ext4_extent = type { i32 }
%struct.extent_status = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DELALLOC = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"es.es_len == 0\00", align 1
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"next extent == %u, next delalloc extent = %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.fiemap_extent_info*)* @ext4_fill_fiemap_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_fill_fiemap_extents(%struct.inode* %0, i64 %1, i64 %2, %struct.fiemap_extent_info* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fiemap_extent_info*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca %struct.extent_status, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.fiemap_extent_info* %3, %struct.fiemap_extent_info** %8, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %9, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %21, align 1
  br label %30

30:                                               ; preds = %312, %4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %318

40:                                               ; preds = %38
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @down_read(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %48, i64 %49, %struct.ext4_ext_path** %9, i32 0)
  store %struct.ext4_ext_path* %50, %struct.ext4_ext_path** %9, align 8
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %52 = call i64 @IS_ERR(%struct.ext4_ext_path* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @up_read(i32* %57)
  %59 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %60 = call i32 @PTR_ERR(%struct.ext4_ext_path* %59)
  store i32 %60, i32* %19, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %9, align 8
  br label %318

61:                                               ; preds = %40
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @ext_depth(%struct.inode* %62)
  store i32 %63, i32* %18, align 4
  %64 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i64 %66
  %68 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @up_read(i32* %77)
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load i32, i32* %18, align 4
  %81 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EFSCORRUPTED, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %19, align 4
  br label %318

84:                                               ; preds = %61
  %85 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i64 %87
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i32 0, i32 0
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %89, align 8
  store %struct.ext4_extent* %90, %struct.ext4_extent** %10, align 8
  %91 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %92 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %91)
  store i64 %92, i64* %12, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  %93 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %94 = icmp ne %struct.ext4_extent* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %84
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %97, %98
  store i64 %99, i64* %15, align 8
  br label %175

100:                                              ; preds = %84
  %101 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %102 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  %105 = load i64, i64* %6, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %100
  %108 = load i64, i64* %6, align 8
  store i64 %108, i64* %14, align 8
  %109 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %110 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le32_to_cpu(i32 %111)
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* %15, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %107
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = add nsw i64 %119, %120
  store i64 %121, i64* %15, align 8
  br label %122

122:                                              ; preds = %118, %107
  br label %174

123:                                              ; preds = %100
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %126 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le32_to_cpu(i32 %127)
  %129 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %130 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %129)
  %131 = add nsw i64 %128, %130
  %132 = icmp sge i64 %124, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %123
  %134 = load i64, i64* %6, align 8
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = add nsw i64 %135, %136
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %12, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i64, i64* %12, align 8
  store i64 %142, i64* %15, align 8
  br label %143

143:                                              ; preds = %141, %133
  br label %173

144:                                              ; preds = %123
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %147 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @le32_to_cpu(i32 %148)
  %150 = icmp sge i64 %145, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %14, align 8
  %153 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %154 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @le32_to_cpu(i32 %155)
  %157 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %158 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %157)
  %159 = add nsw i64 %156, %158
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i64, i64* %15, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* %7, align 8
  %168 = add nsw i64 %166, %167
  store i64 %168, i64* %15, align 8
  br label %169

169:                                              ; preds = %165, %151
  store i32 1, i32* %17, align 4
  br label %172

170:                                              ; preds = %144
  %171 = call i32 (...) @BUG()
  br label %172

172:                                              ; preds = %170, %169
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173, %122
  br label %175

175:                                              ; preds = %174, %95
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %14, align 8
  %178 = icmp sle i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @BUG_ON(i32 %179)
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %175
  %184 = load i64, i64* %14, align 8
  %185 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 0
  store i64 %184, i64* %185, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %14, align 8
  %188 = sub nsw i64 %186, %187
  %189 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 1
  store i64 %188, i64* %189, align 8
  %190 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 2
  store i64 0, i64* %190, align 8
  br label %211

191:                                              ; preds = %175
  %192 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %193 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le32_to_cpu(i32 %194)
  %196 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 0
  store i64 %195, i64* %196, align 8
  %197 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %198 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %197)
  %199 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 1
  store i64 %198, i64* %199, align 8
  %200 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %201 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %200)
  %202 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 2
  store i64 %201, i64* %202, align 8
  %203 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %204 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %191
  %207 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  %208 = load i32, i32* %20, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %20, align 4
  br label %210

210:                                              ; preds = %206, %191
  br label %211

211:                                              ; preds = %210, %183
  %212 = load %struct.inode*, %struct.inode** %5, align 8
  %213 = call i64 @ext4_find_delayed_extent(%struct.inode* %212, %struct.extent_status* %11)
  store i64 %213, i64* %13, align 8
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %211
  %217 = load i64, i64* %13, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  store i32 1, i32* %17, align 4
  %220 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %221 = load i32, i32* @FIEMAP_EXTENT_UNKNOWN, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* %20, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %20, align 4
  br label %225

225:                                              ; preds = %219, %216, %211
  %226 = load %struct.inode*, %struct.inode** %5, align 8
  %227 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %226)
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = call i32 @up_read(i32* %228)
  %230 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i64 @unlikely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %225
  %237 = load %struct.inode*, %struct.inode** %5, align 8
  %238 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %239 = load i32, i32* @EFSCORRUPTED, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %19, align 4
  br label %318

241:                                              ; preds = %225
  %242 = load i64, i64* %12, align 8
  %243 = load i64, i64* %13, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %273

245:                                              ; preds = %241
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %273

249:                                              ; preds = %245
  %250 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %251 = load i32, i32* %20, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %20, align 4
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %249
  %257 = load i64, i64* %12, align 8
  %258 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %259 = icmp ne i64 %257, %258
  br label %260

260:                                              ; preds = %256, %249
  %261 = phi i1 [ true, %249 ], [ %259, %256 ]
  %262 = zext i1 %261 to i32
  %263 = call i64 @unlikely(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = load %struct.inode*, %struct.inode** %5, align 8
  %267 = load i64, i64* %12, align 8
  %268 = load i64, i64* %13, align 8
  %269 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %266, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %267, i64 %268)
  %270 = load i32, i32* @EFSCORRUPTED, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %19, align 4
  br label %318

272:                                              ; preds = %260
  br label %273

273:                                              ; preds = %272, %245, %241
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %312

276:                                              ; preds = %273
  %277 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %278 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i8
  %281 = zext i8 %280 to i32
  %282 = load i8, i8* %21, align 1
  %283 = zext i8 %282 to i32
  %284 = shl i32 %281, %283
  %285 = trunc i32 %284 to i8
  %286 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i8
  %289 = zext i8 %288 to i32
  %290 = load i8, i8* %21, align 1
  %291 = zext i8 %290 to i32
  %292 = shl i32 %289, %291
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i8
  %297 = zext i8 %296 to i32
  %298 = load i8, i8* %21, align 1
  %299 = zext i8 %298 to i32
  %300 = shl i32 %297, %299
  %301 = trunc i32 %300 to i8
  %302 = load i32, i32* %20, align 4
  %303 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %277, i8 zeroext %285, i8 zeroext %293, i8 zeroext %301, i32 %302)
  store i32 %303, i32* %19, align 4
  %304 = load i32, i32* %19, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %276
  br label %318

307:                                              ; preds = %276
  %308 = load i32, i32* %19, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 0, i32* %19, align 4
  br label %318

311:                                              ; preds = %307
  br label %312

312:                                              ; preds = %311, %273
  %313 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %11, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %314, %316
  store i64 %317, i64* %6, align 8
  br label %30

318:                                              ; preds = %310, %306, %265, %236, %74, %54, %38
  %319 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %320 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %319)
  %321 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %322 = call i32 @kfree(%struct.ext4_ext_path* %321)
  %323 = load i32, i32* %19, align 4
  ret i32 %323
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, ...) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_find_delayed_extent(%struct.inode*, %struct.extent_status*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i8 zeroext, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
