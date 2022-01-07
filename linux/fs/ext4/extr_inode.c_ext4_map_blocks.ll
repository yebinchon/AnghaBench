; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_map_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_map_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ext4_map_blocks = type { i32, i32, i64, i32 }
%struct.extent_status = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"ext4_map_blocks(): inode %lu, flag %d, max_blocks %u,logical block %lu\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_MAP_MAPPED = common dso_local global i32 0, align 4
@EXT4_MAP_UNWRITTEN = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_KEEP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"ES len assertion failed for inode %lu: retval %d != map->m_len %d\00", align 1
@EXTENT_STATUS_UNWRITTEN = common dso_local global i32 0, align 4
@EXTENT_STATUS_WRITTEN = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DELALLOC_RESERVE = common dso_local global i32 0, align 4
@EXTENT_STATUS_DELAYED = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CONVERT_UNWRITTEN = common dso_local global i32 0, align 4
@EXT4_MAP_FLAGS = common dso_local global i32 0, align 4
@EXT4_MAP_NEW = common dso_local global i32 0, align 4
@EXT4_STATE_EXT_MIGRATE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_ZERO = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_IO_SUBMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_map_blocks(i32* %0, %struct.inode* %1, %struct.ext4_map_blocks* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_map_blocks*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_status, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_map_blocks* %2, %struct.ext4_map_blocks** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %18 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %24 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %27 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ext_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25, i64 %28)
  %30 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %31 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INT_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load i32, i32* @INT_MAX, align 4
  %40 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %41 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %4
  %43 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %44 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %47 = icmp sge i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EFSCORRUPTED, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %604

54:                                               ; preds = %42
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %57 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @ext4_es_lookup_extent(%struct.inode* %55, i64 %58, i32* null, %struct.extent_status* %10)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %156

61:                                               ; preds = %54
  %62 = call i64 @ext4_es_is_written(%struct.extent_status* %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call i64 @ext4_es_is_unwritten(%struct.extent_status* %10)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %118

67:                                               ; preds = %64, %61
  %68 = call i32 @ext4_es_pblock(%struct.extent_status* %10)
  %69 = sext i32 %68 to i64
  %70 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %71 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %73, %76
  %78 = trunc i64 %77 to i32
  %79 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %80 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = call i64 @ext4_es_is_written(%struct.extent_status* %10)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  br label %87

85:                                               ; preds = %67
  %86 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %90 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %97 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %98, %101
  %103 = sub nsw i64 %95, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %107 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %87
  %111 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %112 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %87
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %117 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %155

118:                                              ; preds = %64
  %119 = call i64 @ext4_es_is_delayed(%struct.extent_status* %10)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = call i64 @ext4_es_is_hole(%struct.extent_status* %10)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %121, %118
  %125 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %126 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %125, i32 0, i32 3
  store i32 0, i32* %126, align 8
  %127 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %10, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %131 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %10, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %132, %135
  %137 = sub nsw i64 %129, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %141 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %124
  %145 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %146 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %144, %124
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %151 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  store i32 0, i32* %11, align 4
  br label %154

152:                                              ; preds = %121
  %153 = call i32 (...) @BUG()
  br label %154

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %114
  br label %274

156:                                              ; preds = %54
  %157 = load %struct.inode*, %struct.inode** %7, align 8
  %158 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = call i32 @down_read(i32* %159)
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %163 = call i64 @ext4_test_inode_flag(%struct.inode* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %156
  %166 = load i32*, i32** %6, align 8
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @EXT4_GET_BLOCKS_KEEP_SIZE, align 4
  %171 = and i32 %169, %170
  %172 = call i32 @ext4_ext_map_blocks(i32* %166, %struct.inode* %167, %struct.ext4_map_blocks* %168, i32 %171)
  store i32 %172, i32* %11, align 4
  br label %181

173:                                              ; preds = %156
  %174 = load i32*, i32** %6, align 8
  %175 = load %struct.inode*, %struct.inode** %7, align 8
  %176 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @EXT4_GET_BLOCKS_KEEP_SIZE, align 4
  %179 = and i32 %177, %178
  %180 = call i32 @ext4_ind_map_blocks(i32* %174, %struct.inode* %175, %struct.ext4_map_blocks* %176, i32 %179)
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %173, %165
  %182 = load i32, i32* %11, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %269

184:                                              ; preds = %181
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %187 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %185, %188
  %190 = zext i1 %189 to i32
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %184
  %194 = load %struct.inode*, %struct.inode** %7, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.inode*, %struct.inode** %7, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %202 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ext4_warning(i32 %196, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %199, i32 %200, i32 %203)
  %205 = call i32 @WARN_ON(i32 1)
  br label %206

206:                                              ; preds = %193, %184
  %207 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %208 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @EXTENT_STATUS_UNWRITTEN, align 4
  br label %217

215:                                              ; preds = %206
  %216 = load i32, i32* @EXTENT_STATUS_WRITTEN, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %250, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* @EXTENT_STATUS_WRITTEN, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %250, label %228

228:                                              ; preds = %223
  %229 = load %struct.inode*, %struct.inode** %7, align 8
  %230 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %231 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %235 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %238 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %236, %240
  %242 = sub nsw i64 %241, 1
  %243 = trunc i64 %242 to i32
  %244 = call i64 @ext4_es_scan_range(%struct.inode* %229, i64 (%struct.extent_status*)* @ext4_es_is_delayed, i32 %233, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %228
  %247 = load i32, i32* @EXTENT_STATUS_DELAYED, align 4
  %248 = load i32, i32* %13, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %13, align 4
  br label %250

250:                                              ; preds = %246, %228, %223, %217
  %251 = load %struct.inode*, %struct.inode** %7, align 8
  %252 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %253 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %257 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %260 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = call i32 @ext4_es_insert_extent(%struct.inode* %251, i32 %255, i32 %258, i32 %261, i32 %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %250
  %267 = load i32, i32* %12, align 4
  store i32 %267, i32* %11, align 4
  br label %268

268:                                              ; preds = %266, %250
  br label %269

269:                                              ; preds = %268, %181
  %270 = load %struct.inode*, %struct.inode** %7, align 8
  %271 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %270)
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = call i32 @up_read(i32* %272)
  br label %274

274:                                              ; preds = %269, %155
  %275 = load i32, i32* %11, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %274
  %278 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %279 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %277
  %285 = load %struct.inode*, %struct.inode** %7, align 8
  %286 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %287 = call i32 @check_block_validity(%struct.inode* %285, %struct.ext4_map_blocks* %286)
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load i32, i32* %12, align 4
  store i32 %291, i32* %5, align 4
  br label %604

292:                                              ; preds = %284
  br label %293

293:                                              ; preds = %292, %277, %274
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %296 = and i32 %294, %295
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = load i32, i32* %11, align 4
  store i32 %299, i32* %5, align 4
  br label %604

300:                                              ; preds = %293
  %301 = load i32, i32* %11, align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %318

303:                                              ; preds = %300
  %304 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %305 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %303
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* @EXT4_GET_BLOCKS_CONVERT_UNWRITTEN, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %310
  %316 = load i32, i32* %11, align 4
  store i32 %316, i32* %5, align 4
  br label %604

317:                                              ; preds = %310
  br label %318

318:                                              ; preds = %317, %303, %300
  %319 = load i32, i32* @EXT4_MAP_FLAGS, align 4
  %320 = xor i32 %319, -1
  %321 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %322 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load %struct.inode*, %struct.inode** %7, align 8
  %326 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %325)
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = call i32 @down_write(i32* %327)
  %329 = load %struct.inode*, %struct.inode** %7, align 8
  %330 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %331 = call i64 @ext4_test_inode_flag(%struct.inode* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %318
  %334 = load i32*, i32** %6, align 8
  %335 = load %struct.inode*, %struct.inode** %7, align 8
  %336 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @ext4_ext_map_blocks(i32* %334, %struct.inode* %335, %struct.ext4_map_blocks* %336, i32 %337)
  store i32 %338, i32* %11, align 4
  br label %371

339:                                              ; preds = %318
  %340 = load i32*, i32** %6, align 8
  %341 = load %struct.inode*, %struct.inode** %7, align 8
  %342 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @ext4_ind_map_blocks(i32* %340, %struct.inode* %341, %struct.ext4_map_blocks* %342, i32 %343)
  store i32 %344, i32* %11, align 4
  %345 = load i32, i32* %11, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %339
  %348 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %349 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @EXT4_MAP_NEW, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %347
  %355 = load %struct.inode*, %struct.inode** %7, align 8
  %356 = load i32, i32* @EXT4_STATE_EXT_MIGRATE, align 4
  %357 = call i32 @ext4_clear_inode_state(%struct.inode* %355, i32 %356)
  br label %358

358:                                              ; preds = %354, %347, %339
  %359 = load i32, i32* %11, align 4
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load i32, i32* %9, align 4
  %363 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %361
  %367 = load %struct.inode*, %struct.inode** %7, align 8
  %368 = load i32, i32* %11, align 4
  %369 = call i32 @ext4_da_update_reserve_space(%struct.inode* %367, i32 %368, i32 1)
  br label %370

370:                                              ; preds = %366, %361, %358
  br label %371

371:                                              ; preds = %370, %333
  %372 = load i32, i32* %11, align 4
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %513

374:                                              ; preds = %371
  %375 = load i32, i32* %11, align 4
  %376 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %377 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %375, %378
  %380 = zext i1 %379 to i32
  %381 = call i64 @unlikely(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %374
  %384 = load %struct.inode*, %struct.inode** %7, align 8
  %385 = getelementptr inbounds %struct.inode, %struct.inode* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.inode*, %struct.inode** %7, align 8
  %388 = getelementptr inbounds %struct.inode, %struct.inode* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %11, align 4
  %391 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %392 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @ext4_warning(i32 %386, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %389, i32 %390, i32 %393)
  %395 = call i32 @WARN_ON(i32 1)
  br label %396

396:                                              ; preds = %383, %374
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @EXT4_GET_BLOCKS_ZERO, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %433

401:                                              ; preds = %396
  %402 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %403 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %433

408:                                              ; preds = %401
  %409 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %410 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @EXT4_MAP_NEW, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %433

415:                                              ; preds = %408
  %416 = load %struct.inode*, %struct.inode** %7, align 8
  %417 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %418 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = trunc i64 %419 to i32
  %421 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %422 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %425 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @ext4_issue_zeroout(%struct.inode* %416, i32 %420, i32 %423, i32 %426)
  store i32 %427, i32* %12, align 4
  %428 = load i32, i32* %12, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %415
  %431 = load i32, i32* %12, align 4
  store i32 %431, i32* %11, align 4
  br label %514

432:                                              ; preds = %415
  br label %433

433:                                              ; preds = %432, %408, %401, %396
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %450

438:                                              ; preds = %433
  %439 = load %struct.inode*, %struct.inode** %7, align 8
  %440 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %441 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %440, i32 0, i32 2
  %442 = load i64, i64* %441, align 8
  %443 = call i64 @ext4_es_lookup_extent(%struct.inode* %439, i64 %442, i32* null, %struct.extent_status* %10)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %438
  %446 = call i64 @ext4_es_is_written(%struct.extent_status* %10)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  br label %514

449:                                              ; preds = %445
  br label %450

450:                                              ; preds = %449, %438, %433
  %451 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %452 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %450
  %458 = load i32, i32* @EXTENT_STATUS_UNWRITTEN, align 4
  br label %461

459:                                              ; preds = %450
  %460 = load i32, i32* @EXTENT_STATUS_WRITTEN, align 4
  br label %461

461:                                              ; preds = %459, %457
  %462 = phi i32 [ %458, %457 ], [ %460, %459 ]
  store i32 %462, i32* %14, align 4
  %463 = load i32, i32* %9, align 4
  %464 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %494, label %467

467:                                              ; preds = %461
  %468 = load i32, i32* %14, align 4
  %469 = load i32, i32* @EXTENT_STATUS_WRITTEN, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %494, label %472

472:                                              ; preds = %467
  %473 = load %struct.inode*, %struct.inode** %7, align 8
  %474 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %475 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = trunc i64 %476 to i32
  %478 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %479 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %482 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = add nsw i64 %480, %484
  %486 = sub nsw i64 %485, 1
  %487 = trunc i64 %486 to i32
  %488 = call i64 @ext4_es_scan_range(%struct.inode* %473, i64 (%struct.extent_status*)* @ext4_es_is_delayed, i32 %477, i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %472
  %491 = load i32, i32* @EXTENT_STATUS_DELAYED, align 4
  %492 = load i32, i32* %14, align 4
  %493 = or i32 %492, %491
  store i32 %493, i32* %14, align 4
  br label %494

494:                                              ; preds = %490, %472, %467, %461
  %495 = load %struct.inode*, %struct.inode** %7, align 8
  %496 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %497 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %496, i32 0, i32 2
  %498 = load i64, i64* %497, align 8
  %499 = trunc i64 %498 to i32
  %500 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %501 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %504 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* %14, align 4
  %507 = call i32 @ext4_es_insert_extent(%struct.inode* %495, i32 %499, i32 %502, i32 %505, i32 %506)
  store i32 %507, i32* %12, align 4
  %508 = load i32, i32* %12, align 4
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %494
  %511 = load i32, i32* %12, align 4
  store i32 %511, i32* %11, align 4
  br label %514

512:                                              ; preds = %494
  br label %513

513:                                              ; preds = %512, %371
  br label %514

514:                                              ; preds = %513, %510, %448, %430
  %515 = load %struct.inode*, %struct.inode** %7, align 8
  %516 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %515)
  %517 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i32 0, i32 0
  %518 = call i32 @up_write(i32* %517)
  %519 = load i32, i32* %11, align 4
  %520 = icmp sgt i32 %519, 0
  br i1 %520, label %521, label %602

521:                                              ; preds = %514
  %522 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %523 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %602

528:                                              ; preds = %521
  %529 = load %struct.inode*, %struct.inode** %7, align 8
  %530 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %531 = call i32 @check_block_validity(%struct.inode* %529, %struct.ext4_map_blocks* %530)
  store i32 %531, i32* %12, align 4
  %532 = load i32, i32* %12, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %528
  %535 = load i32, i32* %12, align 4
  store i32 %535, i32* %5, align 4
  br label %604

536:                                              ; preds = %528
  %537 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %538 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @EXT4_MAP_NEW, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %601

543:                                              ; preds = %536
  %544 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %545 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @EXT4_MAP_UNWRITTEN, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %601, label %550

550:                                              ; preds = %543
  %551 = load i32, i32* %9, align 4
  %552 = load i32, i32* @EXT4_GET_BLOCKS_ZERO, align 4
  %553 = and i32 %551, %552
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %601, label %555

555:                                              ; preds = %550
  %556 = load %struct.inode*, %struct.inode** %7, align 8
  %557 = call i32 @ext4_is_quota_file(%struct.inode* %556)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %601, label %559

559:                                              ; preds = %555
  %560 = load %struct.inode*, %struct.inode** %7, align 8
  %561 = call i64 @ext4_should_order_data(%struct.inode* %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %601

563:                                              ; preds = %559
  %564 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %565 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %564, i32 0, i32 2
  %566 = load i64, i64* %565, align 8
  %567 = trunc i64 %566 to i32
  %568 = load %struct.inode*, %struct.inode** %7, align 8
  %569 = getelementptr inbounds %struct.inode, %struct.inode* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = shl i32 %567, %570
  store i32 %571, i32* %15, align 4
  %572 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %573 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.inode*, %struct.inode** %7, align 8
  %576 = getelementptr inbounds %struct.inode, %struct.inode* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = shl i32 %574, %577
  store i32 %578, i32* %16, align 4
  %579 = load i32, i32* %9, align 4
  %580 = load i32, i32* @EXT4_GET_BLOCKS_IO_SUBMIT, align 4
  %581 = and i32 %579, %580
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %589

583:                                              ; preds = %563
  %584 = load i32*, i32** %6, align 8
  %585 = load %struct.inode*, %struct.inode** %7, align 8
  %586 = load i32, i32* %15, align 4
  %587 = load i32, i32* %16, align 4
  %588 = call i32 @ext4_jbd2_inode_add_wait(i32* %584, %struct.inode* %585, i32 %586, i32 %587)
  store i32 %588, i32* %12, align 4
  br label %595

589:                                              ; preds = %563
  %590 = load i32*, i32** %6, align 8
  %591 = load %struct.inode*, %struct.inode** %7, align 8
  %592 = load i32, i32* %15, align 4
  %593 = load i32, i32* %16, align 4
  %594 = call i32 @ext4_jbd2_inode_add_write(i32* %590, %struct.inode* %591, i32 %592, i32 %593)
  store i32 %594, i32* %12, align 4
  br label %595

595:                                              ; preds = %589, %583
  %596 = load i32, i32* %12, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %595
  %599 = load i32, i32* %12, align 4
  store i32 %599, i32* %5, align 4
  br label %604

600:                                              ; preds = %595
  br label %601

601:                                              ; preds = %600, %559, %555, %550, %543, %536
  br label %602

602:                                              ; preds = %601, %521, %514
  %603 = load i32, i32* %11, align 4
  store i32 %603, i32* %5, align 4
  br label %604

604:                                              ; preds = %602, %598, %534, %315, %298, %290, %51
  %605 = load i32, i32* %5, align 4
  ret i32 %605
}

declare dso_local i32 @ext_debug(i8*, i32, i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ext4_es_lookup_extent(%struct.inode*, i64, i32*, %struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_written(%struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_unwritten(%struct.extent_status*) #1

declare dso_local i32 @ext4_es_pblock(%struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_delayed(%struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_hole(%struct.extent_status*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ext4_ind_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ext4_es_scan_range(%struct.inode*, i64 (%struct.extent_status*)*, i32, i32) #1

declare dso_local i32 @ext4_es_insert_extent(%struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @check_block_validity(%struct.inode*, %struct.ext4_map_blocks*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_da_update_reserve_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_issue_zeroout(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_is_quota_file(%struct.inode*) #1

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_jbd2_inode_add_wait(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_jbd2_inode_add_write(i32*, %struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
