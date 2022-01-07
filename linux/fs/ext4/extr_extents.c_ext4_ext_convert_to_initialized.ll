; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_convert_to_initialized.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_convert_to_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ext4_map_blocks = type { i32, i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i8*, i8* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_sb_info = type { i32 }

@EXT4_EXT_DATA_VALID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"ext4_ext_convert_to_initialized: inode %lu, logicalblock %llu, max_blocks %u\0A\00", align 1
@EXT_INIT_MAX_LEN = common dso_local global i32 0, align 4
@EXT4_EXT_MAY_ZEROOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**, i32)* @ext4_ext_convert_to_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_convert_to_initialized(i32* %0, %struct.inode* %1, %struct.ext4_map_blocks* %2, %struct.ext4_ext_path** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_map_blocks*, align 8
  %9 = alloca %struct.ext4_ext_path**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_ext_path*, align 8
  %12 = alloca %struct.ext4_sb_info*, align 8
  %13 = alloca %struct.ext4_extent_header*, align 8
  %14 = alloca %struct.ext4_map_blocks, align 4
  %15 = alloca %struct.ext4_extent, align 8
  %16 = alloca %struct.ext4_extent, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca %struct.ext4_extent*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_map_blocks* %2, %struct.ext4_map_blocks** %8, align 8
  store %struct.ext4_ext_path** %3, %struct.ext4_ext_path*** %9, align 8
  store i32 %4, i32* %10, align 4
  %36 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %9, align 8
  %37 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %36, align 8
  store %struct.ext4_ext_path* %37, %struct.ext4_ext_path** %11, align 8
  %38 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %39 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %41 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  store i32 %41, i32* %27, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %46 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = load i32, i32* %23, align 4
  %50 = call i32 @ext_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %48, i32 %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_2__* %53)
  store %struct.ext4_sb_info* %54, %struct.ext4_sb_info** %12, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %57, %62
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %64, %69
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %73 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %23, align 4
  %76 = add i32 %74, %75
  %77 = icmp ult i32 %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %5
  %79 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %80 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %23, align 4
  %83 = add i32 %81, %82
  store i32 %83, i32* %20, align 4
  br label %84

84:                                               ; preds = %78, %5
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i32 @ext_depth(%struct.inode* %85)
  store i32 %86, i32* %22, align 4
  %87 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %88 = load i32, i32* %22, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %87, i64 %89
  %91 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %90, i32 0, i32 1
  %92 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %91, align 8
  store %struct.ext4_extent_header* %92, %struct.ext4_extent_header** %13, align 8
  %93 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %94 = load i32, i32* %22, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %93, i64 %95
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i32 0, i32 0
  %98 = load %struct.ext4_extent*, %struct.ext4_extent** %97, align 8
  store %struct.ext4_extent* %98, %struct.ext4_extent** %17, align 8
  %99 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %100 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @le32_to_cpu(i8* %101)
  store i32 %102, i32* %19, align 4
  %103 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %104 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %103)
  store i32 %104, i32* %21, align 4
  %105 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  store i8* null, i8** %105, align 8
  %106 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* null, i8** %106, align 8
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %109 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %110 = call i32 @trace_ext4_ext_convert_to_initialized_enter(%struct.inode* %107, %struct.ext4_map_blocks* %108, %struct.ext4_extent* %109)
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %112 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @BUG_ON(i32 %115)
  %117 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %118 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @in_range(i32 %119, i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  %127 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %128 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %221

132:                                              ; preds = %84
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %221

136:                                              ; preds = %132
  %137 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %138 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %139 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %138)
  %140 = icmp ugt %struct.ext4_extent* %137, %139
  br i1 %140, label %141, label %221

141:                                              ; preds = %136
  %142 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %143 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %142, i64 -1
  store %struct.ext4_extent* %143, %struct.ext4_extent** %18, align 8
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %145 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @le32_to_cpu(i8* %146)
  store i32 %147, i32* %28, align 4
  %148 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %149 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %148)
  store i32 %149, i32* %31, align 4
  %150 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %151 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %150)
  store i64 %151, i64* %29, align 8
  %152 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %153 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %152)
  store i64 %153, i64* %30, align 8
  %154 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %155 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %220, label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %31, align 4
  %160 = add i32 %158, %159
  %161 = load i32, i32* %19, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %220

163:                                              ; preds = %157
  %164 = load i64, i64* %29, align 8
  %165 = load i32, i32* %31, align 4
  %166 = zext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load i64, i64* %30, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %220

170:                                              ; preds = %163
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  %173 = load i32, i32* %23, align 4
  %174 = sub i32 %172, %173
  %175 = icmp ult i32 %171, %174
  br i1 %175, label %176, label %220

176:                                              ; preds = %170
  %177 = load i32*, i32** %6, align 8
  %178 = load %struct.inode*, %struct.inode** %7, align 8
  %179 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %180 = load i32, i32* %22, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %179, i64 %181
  %183 = call i32 @ext4_ext_get_access(i32* %177, %struct.inode* %178, %struct.ext4_ext_path* %182)
  store i32 %183, i32* %26, align 4
  %184 = load i32, i32* %26, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %504

187:                                              ; preds = %176
  %188 = load %struct.inode*, %struct.inode** %7, align 8
  %189 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %190 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %191 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %192 = call i32 @trace_ext4_ext_convert_to_initialized_fastpath(%struct.inode* %188, %struct.ext4_map_blocks* %189, %struct.ext4_extent* %190, %struct.ext4_extent* %191)
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %23, align 4
  %195 = add i32 %193, %194
  %196 = call i8* @cpu_to_le32(i32 %195)
  %197 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %198 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %200 = load i64, i64* %30, align 8
  %201 = load i32, i32* %23, align 4
  %202 = zext i32 %201 to i64
  %203 = add nsw i64 %200, %202
  %204 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %199, i64 %203)
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %23, align 4
  %207 = sub i32 %205, %206
  %208 = call i8* @cpu_to_le16(i32 %207)
  %209 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %210 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %212 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %211)
  %213 = load i32, i32* %31, align 4
  %214 = load i32, i32* %23, align 4
  %215 = add i32 %213, %214
  %216 = call i8* @cpu_to_le16(i32 %215)
  %217 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %218 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  %219 = load i32, i32* %23, align 4
  store i32 %219, i32* %24, align 4
  br label %220

220:                                              ; preds = %187, %170, %163, %157, %141
  br label %323

221:                                              ; preds = %136, %132, %84
  %222 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %223 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %23, align 4
  %226 = add i32 %224, %225
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %21, align 4
  %229 = add i32 %227, %228
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %322

231:                                              ; preds = %221
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp ult i32 %232, %233
  br i1 %234, label %235, label %322

235:                                              ; preds = %231
  %236 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %237 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %238 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %237)
  %239 = icmp ult %struct.ext4_extent* %236, %238
  br i1 %239, label %240, label %322

240:                                              ; preds = %235
  %241 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %242 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %241, i64 1
  store %struct.ext4_extent* %242, %struct.ext4_extent** %18, align 8
  %243 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %244 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @le32_to_cpu(i8* %245)
  store i32 %246, i32* %32, align 4
  %247 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %248 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %247)
  store i32 %248, i32* %35, align 4
  %249 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %250 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %249)
  store i64 %250, i64* %33, align 8
  %251 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %252 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %251)
  store i64 %252, i64* %34, align 8
  %253 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %254 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %321, label %256

256:                                              ; preds = %240
  %257 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %258 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %23, align 4
  %261 = add i32 %259, %260
  %262 = load i32, i32* %32, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %321

264:                                              ; preds = %256
  %265 = load i64, i64* %34, align 8
  %266 = load i32, i32* %21, align 4
  %267 = zext i32 %266 to i64
  %268 = add nsw i64 %265, %267
  %269 = load i64, i64* %33, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %321

271:                                              ; preds = %264
  %272 = load i32, i32* %35, align 4
  %273 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  %274 = load i32, i32* %23, align 4
  %275 = sub i32 %273, %274
  %276 = icmp ult i32 %272, %275
  br i1 %276, label %277, label %321

277:                                              ; preds = %271
  %278 = load i32*, i32** %6, align 8
  %279 = load %struct.inode*, %struct.inode** %7, align 8
  %280 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %281 = load i32, i32* %22, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %280, i64 %282
  %284 = call i32 @ext4_ext_get_access(i32* %278, %struct.inode* %279, %struct.ext4_ext_path* %283)
  store i32 %284, i32* %26, align 4
  %285 = load i32, i32* %26, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  br label %504

288:                                              ; preds = %277
  %289 = load %struct.inode*, %struct.inode** %7, align 8
  %290 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %291 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %292 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %293 = call i32 @trace_ext4_ext_convert_to_initialized_fastpath(%struct.inode* %289, %struct.ext4_map_blocks* %290, %struct.ext4_extent* %291, %struct.ext4_extent* %292)
  %294 = load i32, i32* %32, align 4
  %295 = load i32, i32* %23, align 4
  %296 = sub i32 %294, %295
  %297 = call i8* @cpu_to_le32(i32 %296)
  %298 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %299 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %298, i32 0, i32 1
  store i8* %297, i8** %299, align 8
  %300 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %301 = load i64, i64* %33, align 8
  %302 = load i32, i32* %23, align 4
  %303 = zext i32 %302 to i64
  %304 = sub nsw i64 %301, %303
  %305 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %300, i64 %304)
  %306 = load i32, i32* %21, align 4
  %307 = load i32, i32* %23, align 4
  %308 = sub i32 %306, %307
  %309 = call i8* @cpu_to_le16(i32 %308)
  %310 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %311 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  %312 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %313 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %312)
  %314 = load i32, i32* %35, align 4
  %315 = load i32, i32* %23, align 4
  %316 = add i32 %314, %315
  %317 = call i8* @cpu_to_le16(i32 %316)
  %318 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %319 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %318, i32 0, i32 0
  store i8* %317, i8** %319, align 8
  %320 = load i32, i32* %23, align 4
  store i32 %320, i32* %24, align 4
  br label %321

321:                                              ; preds = %288, %271, %264, %256, %240
  br label %322

322:                                              ; preds = %321, %235, %231, %221
  br label %323

323:                                              ; preds = %322, %220
  %324 = load i32, i32* %24, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %323
  %327 = load i32*, i32** %6, align 8
  %328 = load %struct.inode*, %struct.inode** %7, align 8
  %329 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %330 = load i32, i32* %22, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %329, i64 %331
  %333 = call i32 @ext4_ext_dirty(i32* %327, %struct.inode* %328, %struct.ext4_ext_path* %332)
  %334 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %335 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %336 = load i32, i32* %22, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %335, i64 %337
  %339 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %338, i32 0, i32 0
  store %struct.ext4_extent* %334, %struct.ext4_extent** %339, align 8
  br label %504

340:                                              ; preds = %323
  %341 = load i32, i32* %21, align 4
  %342 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %343 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %19, align 4
  %346 = sub i32 %344, %345
  %347 = sub i32 %341, %346
  store i32 %347, i32* %24, align 4
  br label %348

348:                                              ; preds = %340
  %349 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %350 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %19, align 4
  %353 = icmp ult i32 %351, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 @WARN_ON(i32 %354)
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %21, align 4
  %358 = add i32 %356, %357
  %359 = load i32, i32* %20, align 4
  %360 = icmp ule i32 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %348
  %362 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  br label %364

363:                                              ; preds = %348
  br label %364

364:                                              ; preds = %363, %361
  %365 = phi i32 [ %362, %361 ], [ 0, %363 ]
  %366 = load i32, i32* %27, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %27, align 4
  %368 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %369 = load i32, i32* %27, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %383

372:                                              ; preds = %364
  %373 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %374 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.inode*, %struct.inode** %7, align 8
  %377 = getelementptr inbounds %struct.inode, %struct.inode* %376, i32 0, i32 1
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = sub nsw i32 %380, 10
  %382 = ashr i32 %375, %381
  store i32 %382, i32* %25, align 4
  br label %383

383:                                              ; preds = %372, %364
  %384 = load %struct.inode*, %struct.inode** %7, align 8
  %385 = call i64 @IS_ENCRYPTED(%struct.inode* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %383
  store i32 0, i32* %25, align 4
  br label %388

388:                                              ; preds = %387, %383
  %389 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %390 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  store i32 %391, i32* %392, align 4
  %393 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %394 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  store i32 %395, i32* %396, align 4
  %397 = load i32, i32* %25, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %493

399:                                              ; preds = %388
  %400 = load i32, i32* %24, align 4
  %401 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp ugt i32 %400, %402
  br i1 %403, label %404, label %493

404:                                              ; preds = %399
  %405 = load i32, i32* %24, align 4
  %406 = load i32, i32* %25, align 4
  %407 = icmp sle i32 %405, %406
  br i1 %407, label %408, label %444

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = add i32 %410, %412
  %414 = call i8* @cpu_to_le32(i32 %413)
  %415 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 1
  store i8* %414, i8** %415, align 8
  %416 = load i32, i32* %24, align 4
  %417 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = sub i32 %416, %418
  %420 = call i8* @cpu_to_le16(i32 %419)
  %421 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  store i8* %420, i8** %421, align 8
  %422 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %423 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %422)
  %424 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  %427 = add nsw i64 %423, %426
  %428 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  %431 = add nsw i64 %427, %430
  %432 = load i32, i32* %19, align 4
  %433 = zext i32 %432 to i64
  %434 = sub nsw i64 %431, %433
  %435 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %15, i64 %434)
  %436 = load %struct.inode*, %struct.inode** %7, align 8
  %437 = call i32 @ext4_ext_zeroout(%struct.inode* %436, %struct.ext4_extent* %15)
  store i32 %437, i32* %26, align 4
  %438 = load i32, i32* %26, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %408
  br label %504

441:                                              ; preds = %408
  %442 = load i32, i32* %24, align 4
  %443 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  store i32 %442, i32* %443, align 4
  br label %444

444:                                              ; preds = %441, %404
  %445 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %19, align 4
  %448 = sub i32 %446, %447
  %449 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = add i32 %448, %450
  %452 = load i32, i32* %25, align 4
  %453 = icmp ult i32 %451, %452
  br i1 %453, label %454, label %492

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %19, align 4
  %458 = icmp ne i32 %456, %457
  br i1 %458, label %459, label %479

459:                                              ; preds = %454
  %460 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %461 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %460, i32 0, i32 1
  %462 = load i8*, i8** %461, align 8
  %463 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i8* %462, i8** %463, align 8
  %464 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %19, align 4
  %467 = sub i32 %465, %466
  %468 = call i8* @cpu_to_le16(i32 %467)
  %469 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %468, i8** %469, align 8
  %470 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %471 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %470)
  %472 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %16, i64 %471)
  %473 = load %struct.inode*, %struct.inode** %7, align 8
  %474 = call i32 @ext4_ext_zeroout(%struct.inode* %473, %struct.ext4_extent* %16)
  store i32 %474, i32* %26, align 4
  %475 = load i32, i32* %26, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %459
  br label %504

478:                                              ; preds = %459
  br label %479

479:                                              ; preds = %478, %454
  %480 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %19, align 4
  %483 = sub i32 %481, %482
  %484 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = add i32 %485, %483
  store i32 %486, i32* %484, align 4
  %487 = load i32, i32* %19, align 4
  %488 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %14, i32 0, i32 1
  store i32 %487, i32* %488, align 4
  %489 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %490 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* %24, align 4
  br label %492

492:                                              ; preds = %479, %444
  br label %493

493:                                              ; preds = %492, %399, %388
  %494 = load i32*, i32** %6, align 8
  %495 = load %struct.inode*, %struct.inode** %7, align 8
  %496 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %9, align 8
  %497 = load i32, i32* %27, align 4
  %498 = load i32, i32* %10, align 4
  %499 = call i32 @ext4_split_extent(i32* %494, %struct.inode* %495, %struct.ext4_ext_path** %496, %struct.ext4_map_blocks* %14, i32 %497, i32 %498)
  store i32 %499, i32* %26, align 4
  %500 = load i32, i32* %26, align 4
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %502, label %503

502:                                              ; preds = %493
  store i32 0, i32* %26, align 4
  br label %503

503:                                              ; preds = %502, %493
  br label %504

504:                                              ; preds = %503, %477, %440, %326, %287, %186
  %505 = load i32, i32* %26, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %516, label %507

507:                                              ; preds = %504
  %508 = load %struct.inode*, %struct.inode** %7, align 8
  %509 = call i32 @ext4_zeroout_es(%struct.inode* %508, %struct.ext4_extent* %15)
  store i32 %509, i32* %26, align 4
  %510 = load i32, i32* %26, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %507
  %513 = load %struct.inode*, %struct.inode** %7, align 8
  %514 = call i32 @ext4_zeroout_es(%struct.inode* %513, %struct.ext4_extent* %16)
  store i32 %514, i32* %26, align 4
  br label %515

515:                                              ; preds = %512, %507
  br label %516

516:                                              ; preds = %515, %504
  %517 = load i32, i32* %26, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %521

519:                                              ; preds = %516
  %520 = load i32, i32* %26, align 4
  br label %523

521:                                              ; preds = %516
  %522 = load i32, i32* %24, align 4
  br label %523

523:                                              ; preds = %521, %519
  %524 = phi i32 [ %520, %519 ], [ %522, %521 ]
  ret i32 %524
}

declare dso_local i32 @ext_debug(i8*, i32, i64, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @trace_ext4_ext_convert_to_initialized_enter(%struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_extent*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @in_range(i32, i32, i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @trace_ext4_ext_convert_to_initialized_fastpath(%struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @ext4_ext_zeroout(%struct.inode*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_split_extent(i32*, %struct.inode*, %struct.ext4_ext_path**, %struct.ext4_map_blocks*, i32, i32) #1

declare dso_local i32 @ext4_zeroout_es(%struct.inode*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
