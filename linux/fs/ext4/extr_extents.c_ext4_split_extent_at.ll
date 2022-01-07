; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_split_extent_at.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_split_extent_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent* }
%struct.ext4_extent = type { i8*, i32 }

@EXT4_EXT_DATA_VALID1 = common dso_local global i32 0, align 4
@EXT4_EXT_DATA_VALID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ext4_split_extents_at: inode %lu, logicalblock %llu\0A\00", align 1
@EXT4_EXT_MAY_ZEROOUT = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT1 = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT2 = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i32, i32)* @ext4_split_extent_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_split_extent_at(i32* %0, %struct.inode* %1, %struct.ext4_ext_path** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_ext_path*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca %struct.ext4_extent, align 8
  %19 = alloca %struct.ext4_extent, align 8
  %20 = alloca %struct.ext4_extent, align 8
  %21 = alloca %struct.ext4_extent*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %10, align 8
  %26 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %25, align 8
  store %struct.ext4_ext_path* %26, %struct.ext4_ext_path** %14, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %21, align 8
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %29 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %33 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @ext_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %45 = call i32 @ext4_ext_show_leaf(%struct.inode* %43, %struct.ext4_ext_path* %44)
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @ext_depth(%struct.inode* %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %49 = load i32, i32* %23, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %48, i64 %50
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i32 0, i32 1
  %53 = load %struct.ext4_extent*, %struct.ext4_extent** %52, align 8
  store %struct.ext4_extent* %53, %struct.ext4_extent** %17, align 8
  %54 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %55 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @le32_to_cpu(i32 %56)
  store i64 %57, i64* %16, align 8
  %58 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %59 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %58)
  store i32 %59, i32* %22, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %16, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %64 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %63)
  %65 = add nsw i64 %62, %64
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %16, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %6
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i32, i32* %22, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = icmp sge i64 %70, %74
  br label %76

76:                                               ; preds = %69, %6
  %77 = phi i1 [ true, %6 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %81 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %86 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %83, %76
  %93 = phi i1 [ false, %76 ], [ %91, %83 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %99 = load i32, i32* %23, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %98, i64 %100
  %102 = call i32 @ext4_ext_get_access(i32* %96, %struct.inode* %97, %struct.ext4_ext_path* %101)
  store i32 %102, i32* %24, align 4
  %103 = load i32, i32* %24, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %299

106:                                              ; preds = %92
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %16, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %106
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %117 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %116)
  br label %121

118:                                              ; preds = %110
  %119 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %120 = call i32 @ext4_ext_mark_initialized(%struct.ext4_extent* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %130 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %131 = call i32 @ext4_ext_try_to_merge(i32* %127, %struct.inode* %128, %struct.ext4_ext_path* %129, %struct.ext4_extent* %130)
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32*, i32** %8, align 8
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %136 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %137 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %135, i64 %139
  %141 = call i32 @ext4_ext_dirty(i32* %133, %struct.inode* %134, %struct.ext4_ext_path* %140)
  store i32 %141, i32* %24, align 4
  br label %299

142:                                              ; preds = %106
  %143 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %144 = call i32 @memcpy(%struct.ext4_extent* %19, %struct.ext4_extent* %143, i32 16)
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %16, align 8
  %147 = sub nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = call i8* @cpu_to_le16(i32 %148)
  %150 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %151 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %158 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %157)
  br label %159

159:                                              ; preds = %156, %142
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.inode*, %struct.inode** %9, align 8
  %162 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %163 = load i32, i32* %23, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %162, i64 %164
  %166 = call i32 @ext4_ext_dirty(i32* %160, %struct.inode* %161, %struct.ext4_ext_path* %165)
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* %24, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %304

170:                                              ; preds = %159
  store %struct.ext4_extent* %18, %struct.ext4_extent** %21, align 8
  %171 = load i64, i64* %11, align 8
  %172 = call i32 @cpu_to_le32(i64 %171)
  %173 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %174 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %22, align 4
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* %16, align 8
  %179 = sub nsw i64 %177, %178
  %180 = sub nsw i64 %176, %179
  %181 = trunc i64 %180 to i32
  %182 = call i8* @cpu_to_le16(i32 %181)
  %183 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %184 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %186 = load i64, i64* %15, align 8
  %187 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %185, i64 %186)
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %170
  %193 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %194 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %193)
  br label %195

195:                                              ; preds = %192, %170
  %196 = load i32*, i32** %8, align 8
  %197 = load %struct.inode*, %struct.inode** %9, align 8
  %198 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %10, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @ext4_ext_insert_extent(i32* %196, %struct.inode* %197, %struct.ext4_ext_path** %198, %struct.ext4_extent* %18, i32 %199)
  store i32 %200, i32* %24, align 4
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* @ENOSPC, align 4
  %203 = sub nsw i32 0, %202
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %293

205:                                              ; preds = %195
  %206 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %207 = load i32, i32* %12, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %293

210:                                              ; preds = %205
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %213 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %211, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %253

217:                                              ; preds = %210
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %217
  %223 = load %struct.inode*, %struct.inode** %9, align 8
  %224 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %225 = call i32 @ext4_ext_zeroout(%struct.inode* %223, %struct.ext4_extent* %224)
  store i32 %225, i32* %24, align 4
  %226 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %227 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %20, i32 0, i32 1
  store i32 %228, i32* %229, align 8
  %230 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %231 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %230)
  %232 = call i8* @cpu_to_le16(i32 %231)
  %233 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %20, i32 0, i32 0
  store i8* %232, i8** %233, align 8
  %234 = load %struct.ext4_extent*, %struct.ext4_extent** %21, align 8
  %235 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %234)
  %236 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %20, i64 %235)
  br label %252

237:                                              ; preds = %217
  %238 = load %struct.inode*, %struct.inode** %9, align 8
  %239 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %240 = call i32 @ext4_ext_zeroout(%struct.inode* %238, %struct.ext4_extent* %239)
  store i32 %240, i32* %24, align 4
  %241 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %242 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %20, i32 0, i32 1
  store i32 %243, i32* %244, align 8
  %245 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %246 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %245)
  %247 = call i8* @cpu_to_le16(i32 %246)
  %248 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %20, i32 0, i32 0
  store i8* %247, i8** %248, align 8
  %249 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %250 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %249)
  %251 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %20, i64 %250)
  br label %252

252:                                              ; preds = %237, %222
  br label %264

253:                                              ; preds = %210
  %254 = load %struct.inode*, %struct.inode** %9, align 8
  %255 = call i32 @ext4_ext_zeroout(%struct.inode* %254, %struct.ext4_extent* %19)
  store i32 %255, i32* %24, align 4
  %256 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %19, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %20, i32 0, i32 1
  store i32 %257, i32* %258, align 8
  %259 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %19)
  %260 = call i8* @cpu_to_le16(i32 %259)
  %261 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %20, i32 0, i32 0
  store i8* %260, i8** %261, align 8
  %262 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %19)
  %263 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %20, i64 %262)
  br label %264

264:                                              ; preds = %253, %252
  %265 = load i32, i32* %24, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %304

268:                                              ; preds = %264
  %269 = load i32, i32* %22, align 4
  %270 = call i8* @cpu_to_le16(i32 %269)
  %271 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %272 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  %273 = load i32*, i32** %8, align 8
  %274 = load %struct.inode*, %struct.inode** %9, align 8
  %275 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %276 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %277 = call i32 @ext4_ext_try_to_merge(i32* %273, %struct.inode* %274, %struct.ext4_ext_path* %275, %struct.ext4_extent* %276)
  %278 = load i32*, i32** %8, align 8
  %279 = load %struct.inode*, %struct.inode** %9, align 8
  %280 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %281 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %282 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %280, i64 %284
  %286 = call i32 @ext4_ext_dirty(i32* %278, %struct.inode* %279, %struct.ext4_ext_path* %285)
  store i32 %286, i32* %24, align 4
  %287 = load i32, i32* %24, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %268
  br label %304

290:                                              ; preds = %268
  %291 = load %struct.inode*, %struct.inode** %9, align 8
  %292 = call i32 @ext4_zeroout_es(%struct.inode* %291, %struct.ext4_extent* %20)
  store i32 %292, i32* %24, align 4
  br label %299

293:                                              ; preds = %205, %195
  %294 = load i32, i32* %24, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  br label %304

297:                                              ; preds = %293
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298, %290, %132, %105
  %300 = load %struct.inode*, %struct.inode** %9, align 8
  %301 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %302 = call i32 @ext4_ext_show_leaf(%struct.inode* %300, %struct.ext4_ext_path* %301)
  %303 = load i32, i32* %24, align 4
  store i32 %303, i32* %7, align 4
  br label %319

304:                                              ; preds = %296, %289, %267, %169
  %305 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %19, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %308 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %307, i32 0, i32 0
  store i8* %306, i8** %308, align 8
  %309 = load i32*, i32** %8, align 8
  %310 = load %struct.inode*, %struct.inode** %9, align 8
  %311 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %312 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %313 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %311, i64 %315
  %317 = call i32 @ext4_ext_dirty(i32* %309, %struct.inode* %310, %struct.ext4_ext_path* %316)
  %318 = load i32, i32* %24, align 4
  store i32 %318, i32* %7, align 4
  br label %319

319:                                              ; preds = %304, %299
  %320 = load i32, i32* %7, align 4
  ret i32 %320
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext_debug(i8*, i32, i64) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_mark_initialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @memcpy(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path**, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_zeroout(%struct.inode*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_zeroout_es(%struct.inode*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
