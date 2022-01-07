; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_map_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_map_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_map_blocks = type { i32, i32, i32, i64, i32*, i32*, i64, i32 }
%struct.dnode_of_data = type { i32, i64, i32, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.extent_info = type { i64, i64, i64, i32, i32, i32 }

@ALLOC_NODE = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_DIO = common dso_local global i32 0, align 4
@F2FS_MAP_MAPPED = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_BMAP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@FI_APPEND_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_AIO = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@F2FS_GET_BLOCK_PRE_DIO = common dso_local global i32 0, align 4
@F2FS_MAP_NEW = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRECACHE = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_FIEMAP = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@F2FS_MAP_UNWRITTEN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_map_blocks(%struct.inode* %0, %struct.f2fs_map_blocks* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.f2fs_map_blocks*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dnode_of_data, align 8
  %12 = alloca %struct.f2fs_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.extent_info, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.f2fs_map_blocks* %1, %struct.f2fs_map_blocks** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %27 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %28 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %30)
  store %struct.f2fs_sb_info* %31, %struct.f2fs_sb_info** %12, align 8
  %32 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %33 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @ALLOC_NODE, align 4
  br label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @LOOKUP_NODE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %42 = bitcast %struct.extent_info* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 40, i1 false)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %620

46:                                               ; preds = %40
  %47 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %48 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %50 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %52 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %54, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %132, label %59

59:                                               ; preds = %46
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @f2fs_lookup_extent_cache(%struct.inode* %60, i32 %61, %struct.extent_info* %22)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %132

64:                                               ; preds = %59
  %65 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %66 = load i32, i32* @LFS, align 4
  %67 = call i64 @test_opt(%struct.f2fs_sb_info* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @F2FS_GET_BLOCK_DIO, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %75 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %133

79:                                               ; preds = %73, %69, %64
  %80 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %22, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %22, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %84, %86
  %88 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %89 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %22, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %22, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  %96 = load i32, i32* %14, align 4
  %97 = zext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = call i32 @min(i32 %90, i64 %98)
  %100 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %101 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @F2FS_MAP_MAPPED, align 4
  %103 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %104 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %106 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %79
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %112 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add i32 %110, %113
  %115 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %116 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %109, %79
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @F2FS_GET_BLOCK_DIO, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %125 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %128 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @f2fs_wait_on_block_writeback_range(%struct.inode* %123, i64 %126, i32 %129)
  br label %131

131:                                              ; preds = %122, %118
  br label %614

132:                                              ; preds = %59, %46
  br label %133

133:                                              ; preds = %535, %132, %78
  %134 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %135 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %139, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %138, %133
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = call i32 @set_new_dnode(%struct.dnode_of_data* %11, %struct.inode* %143, i32* null, i32* null, i32 0)
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %11, i32 %145, i32 %146)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %188

150:                                              ; preds = %142
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @F2FS_GET_BLOCK_BMAP, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %156 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @ENOENT, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %157
  store i32 0, i32* %17, align 4
  %163 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %164 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load i32, i32* %14, align 4
  %169 = call i8* @f2fs_get_next_page_offset(%struct.dnode_of_data* %11, i32 %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %172 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %167, %162
  %175 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %176 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load i32, i32* %14, align 4
  %181 = call i8* @f2fs_get_next_page_offset(%struct.dnode_of_data* %11, i32 %180)
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %184 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  store i32 %182, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %174
  br label %187

187:                                              ; preds = %186, %157
  br label %600

188:                                              ; preds = %142
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %24, align 4
  store i64 0, i64* %21, align 8
  %190 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %19, align 4
  store i32 %191, i32* %20, align 4
  %192 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.inode*, %struct.inode** %6, align 8
  %195 = call i32 @ADDRS_PER_PAGE(i32 %193, %struct.inode* %194)
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %488, %188
  %197 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @datablock_addr(i32 %198, i32 %200, i32 %202)
  store i64 %203, i64* %23, align 8
  %204 = load i64, i64* %23, align 8
  %205 = call i64 @__is_valid_data_blkaddr(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %196
  %208 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %209 = load i64, i64* %23, align 8
  %210 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %211 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %208, i64 %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* @EFSCORRUPTED, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %17, align 4
  br label %536

216:                                              ; preds = %207, %196
  %217 = load i64, i64* %23, align 8
  %218 = call i64 @__is_valid_data_blkaddr(i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %249

220:                                              ; preds = %216
  %221 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %222 = load i32, i32* @LFS, align 4
  %223 = call i64 @test_opt(%struct.f2fs_sb_info* %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %248

225:                                              ; preds = %220
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @F2FS_GET_BLOCK_DIO, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %248

229:                                              ; preds = %225
  %230 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %231 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %229
  %235 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %236 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @__allocate_data_block(%struct.dnode_of_data* %11, i32 %237)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %536

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %23, align 8
  %245 = load %struct.inode*, %struct.inode** %6, align 8
  %246 = load i32, i32* @FI_APPEND_WRITE, align 4
  %247 = call i32 @set_inode_flag(%struct.inode* %245, i32 %246)
  br label %248

248:                                              ; preds = %242, %229, %225, %220
  br label %359

249:                                              ; preds = %216
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %309

252:                                              ; preds = %249
  %253 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %254 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %253)
  %255 = call i64 @unlikely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32, i32* @EIO, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %17, align 4
  br label %536

260:                                              ; preds = %252
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %274

264:                                              ; preds = %260
  %265 = load i64, i64* %23, align 8
  %266 = load i64, i64* @NULL_ADDR, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %264
  %269 = load i64, i64* %21, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* %21, align 8
  %271 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %20, align 4
  br label %273

273:                                              ; preds = %268, %264
  br label %297

274:                                              ; preds = %260
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @F2FS_GET_BLOCK_PRE_DIO, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @F2FS_GET_BLOCK_DIO, align 4
  %281 = icmp ne i32 %279, %280
  br label %282

282:                                              ; preds = %278, %274
  %283 = phi i1 [ false, %274 ], [ %281, %278 ]
  %284 = zext i1 %283 to i32
  %285 = call i32 @WARN_ON(i32 %284)
  %286 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %287 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @__allocate_data_block(%struct.dnode_of_data* %11, i32 %288)
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %282
  %293 = load %struct.inode*, %struct.inode** %6, align 8
  %294 = load i32, i32* @FI_APPEND_WRITE, align 4
  %295 = call i32 @set_inode_flag(%struct.inode* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %282
  br label %297

297:                                              ; preds = %296, %273
  %298 = load i32, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  br label %536

301:                                              ; preds = %297
  %302 = load i32, i32* @F2FS_MAP_NEW, align 4
  %303 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %304 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %23, align 8
  br label %358

309:                                              ; preds = %249
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* @F2FS_GET_BLOCK_BMAP, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %315 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %314, i32 0, i32 3
  store i64 0, i64* %315, align 8
  br label %536

316:                                              ; preds = %309
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* @F2FS_GET_BLOCK_PRECACHE, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  br label %536

321:                                              ; preds = %316
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* @F2FS_GET_BLOCK_FIEMAP, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %341

325:                                              ; preds = %321
  %326 = load i64, i64* %23, align 8
  %327 = load i64, i64* @NULL_ADDR, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %341

329:                                              ; preds = %325
  %330 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %331 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %330, i32 0, i32 5
  %332 = load i32*, i32** %331, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %340

334:                                              ; preds = %329
  %335 = load i32, i32* %14, align 4
  %336 = add i32 %335, 1
  %337 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %338 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %337, i32 0, i32 5
  %339 = load i32*, i32** %338, align 8
  store i32 %336, i32* %339, align 4
  br label %340

340:                                              ; preds = %334, %329
  br label %536

341:                                              ; preds = %325, %321
  %342 = load i32, i32* %9, align 4
  %343 = load i32, i32* @F2FS_GET_BLOCK_FIEMAP, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %357

345:                                              ; preds = %341
  %346 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %347 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %346, i32 0, i32 5
  %348 = load i32*, i32** %347, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load i32, i32* %14, align 4
  %352 = add i32 %351, 1
  %353 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %354 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %353, i32 0, i32 5
  %355 = load i32*, i32** %354, align 8
  store i32 %352, i32* %355, align 4
  br label %356

356:                                              ; preds = %350, %345
  br label %536

357:                                              ; preds = %341
  br label %358

358:                                              ; preds = %357, %301
  br label %359

359:                                              ; preds = %358, %248
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  br label %429

364:                                              ; preds = %359
  %365 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %366 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %390

369:                                              ; preds = %364
  %370 = load i64, i64* %23, align 8
  %371 = load i64, i64* @NEW_ADDR, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %379

373:                                              ; preds = %369
  %374 = load i32, i32* @F2FS_MAP_UNWRITTEN, align 4
  %375 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %376 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %373, %369
  %380 = load i32, i32* @F2FS_MAP_MAPPED, align 4
  %381 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %382 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load i64, i64* %23, align 8
  %386 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %387 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %386, i32 0, i32 3
  store i64 %385, i64* %387, align 8
  %388 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %389 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %388, i32 0, i32 0
  store i32 1, i32* %389, align 8
  br label %428

390:                                              ; preds = %364
  %391 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %392 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @NEW_ADDR, align 8
  %395 = icmp ne i64 %393, %394
  br i1 %395, label %396, label %405

396:                                              ; preds = %390
  %397 = load i64, i64* %23, align 8
  %398 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %399 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = load i32, i32* %18, align 4
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %400, %402
  %404 = icmp eq i64 %397, %403
  br i1 %404, label %419, label %405

405:                                              ; preds = %396, %390
  %406 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %407 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @NEW_ADDR, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %405
  %412 = load i64, i64* %23, align 8
  %413 = load i64, i64* @NEW_ADDR, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %419, label %415

415:                                              ; preds = %411, %405
  %416 = load i32, i32* %9, align 4
  %417 = load i32, i32* @F2FS_GET_BLOCK_PRE_DIO, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %426

419:                                              ; preds = %415, %411, %396
  %420 = load i32, i32* %18, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %18, align 4
  %422 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %423 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = add i32 %424, 1
  store i32 %425, i32* %423, align 8
  br label %427

426:                                              ; preds = %415
  br label %536

427:                                              ; preds = %419
  br label %428

428:                                              ; preds = %427, %379
  br label %429

429:                                              ; preds = %428, %363
  %430 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = add i32 %431, 1
  store i32 %432, i32* %430, align 8
  %433 = load i32, i32* %14, align 4
  %434 = add i32 %433, 1
  store i32 %434, i32* %14, align 4
  %435 = load i32, i32* %9, align 4
  %436 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %478

438:                                              ; preds = %429
  %439 = load i32, i32* %14, align 4
  %440 = load i32, i32* %16, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %447, label %442

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* %15, align 4
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %447, label %478

447:                                              ; preds = %442, %438
  %448 = load i32, i32* %19, align 4
  %449 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  store i32 %448, i32* %449, align 8
  %450 = load i64, i64* %21, align 8
  %451 = call i32 @f2fs_reserve_new_blocks(%struct.dnode_of_data* %11, i64 %450)
  store i32 %451, i32* %17, align 4
  %452 = load i32, i32* %17, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %447
  br label %536

455:                                              ; preds = %447
  %456 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* %19, align 4
  %459 = sub i32 %457, %458
  %460 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %461 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = add i32 %462, %459
  store i32 %463, i32* %461, align 8
  %464 = load i64, i64* %21, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %475

466:                                              ; preds = %455
  %467 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* %20, align 4
  %470 = add i32 %469, 1
  %471 = icmp ne i32 %468, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %466
  %473 = load i32, i32* @ENOSPC, align 4
  %474 = sub nsw i32 0, %473
  store i32 %474, i32* %17, align 4
  br label %536

475:                                              ; preds = %466, %455
  %476 = load i32, i32* %15, align 4
  %477 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  store i32 %476, i32* %477, align 8
  br label %478

478:                                              ; preds = %475, %442, %429
  %479 = load i32, i32* %14, align 4
  %480 = load i32, i32* %16, align 4
  %481 = icmp uge i32 %479, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  br label %536

483:                                              ; preds = %478
  %484 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* %15, align 4
  %487 = icmp ult i32 %485, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  br label %196

489:                                              ; preds = %483
  br label %490

490:                                              ; preds = %489
  %491 = load i32, i32* %9, align 4
  %492 = load i32, i32* @F2FS_GET_BLOCK_PRECACHE, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %521

494:                                              ; preds = %490
  %495 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %496 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @F2FS_MAP_MAPPED, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %520

501:                                              ; preds = %494
  %502 = load i32, i32* %24, align 4
  %503 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %504 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = sub i32 %502, %505
  store i32 %506, i32* %25, align 4
  %507 = load i32, i32* %24, align 4
  %508 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %509 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %508, i32 0, i32 3
  %510 = load i64, i64* %509, align 8
  %511 = load i32, i32* %25, align 4
  %512 = zext i32 %511 to i64
  %513 = add nsw i64 %510, %512
  %514 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %515 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* %25, align 4
  %518 = sub i32 %516, %517
  %519 = call i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data* %11, i32 %507, i64 %513, i32 %518)
  br label %520

520:                                              ; preds = %501, %494
  br label %521

521:                                              ; preds = %520, %490
  %522 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %11)
  %523 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %524 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %523, i32 0, i32 6
  %525 = load i64, i64* %524, align 8
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %535

527:                                              ; preds = %521
  %528 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %529 = load i32, i32* %9, align 4
  %530 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %528, i32 %529, i32 0)
  %531 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %532 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %531, i32 %533)
  br label %535

535:                                              ; preds = %527, %521
  br label %133

536:                                              ; preds = %482, %472, %454, %426, %356, %340, %320, %313, %300, %257, %241, %213
  %537 = load i32, i32* %9, align 4
  %538 = load i32, i32* @F2FS_GET_BLOCK_DIO, align 4
  %539 = icmp eq i32 %537, %538
  br i1 %539, label %540, label %556

540:                                              ; preds = %536
  %541 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %542 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* @F2FS_MAP_MAPPED, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %556

547:                                              ; preds = %540
  %548 = load %struct.inode*, %struct.inode** %6, align 8
  %549 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %550 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %549, i32 0, i32 3
  %551 = load i64, i64* %550, align 8
  %552 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %553 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @f2fs_wait_on_block_writeback_range(%struct.inode* %548, i64 %551, i32 %554)
  br label %556

556:                                              ; preds = %547, %540, %536
  %557 = load i32, i32* %9, align 4
  %558 = load i32, i32* @F2FS_GET_BLOCK_PRECACHE, align 4
  %559 = icmp eq i32 %557, %558
  br i1 %559, label %560, label %598

560:                                              ; preds = %556
  %561 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %562 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @F2FS_MAP_MAPPED, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %586

567:                                              ; preds = %560
  %568 = load i32, i32* %24, align 4
  %569 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %570 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = sub i32 %568, %571
  store i32 %572, i32* %26, align 4
  %573 = load i32, i32* %24, align 4
  %574 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %575 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %574, i32 0, i32 3
  %576 = load i64, i64* %575, align 8
  %577 = load i32, i32* %26, align 4
  %578 = zext i32 %577 to i64
  %579 = add nsw i64 %576, %578
  %580 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %581 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = load i32, i32* %26, align 4
  %584 = sub i32 %582, %583
  %585 = call i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data* %11, i32 %573, i64 %579, i32 %584)
  br label %586

586:                                              ; preds = %567, %560
  %587 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %588 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %587, i32 0, i32 4
  %589 = load i32*, i32** %588, align 8
  %590 = icmp ne i32* %589, null
  br i1 %590, label %591, label %597

591:                                              ; preds = %586
  %592 = load i32, i32* %14, align 4
  %593 = add i32 %592, 1
  %594 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %595 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %594, i32 0, i32 4
  %596 = load i32*, i32** %595, align 8
  store i32 %593, i32* %596, align 4
  br label %597

597:                                              ; preds = %591, %586
  br label %598

598:                                              ; preds = %597, %556
  %599 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %11)
  br label %600

600:                                              ; preds = %598, %187
  %601 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %602 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %601, i32 0, i32 6
  %603 = load i64, i64* %602, align 8
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %613

605:                                              ; preds = %600
  %606 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %607 = load i32, i32* %9, align 4
  %608 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %606, i32 %607, i32 0)
  %609 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %610 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %609, i32 %611)
  br label %613

613:                                              ; preds = %605, %600
  br label %614

614:                                              ; preds = %613, %131
  %615 = load %struct.inode*, %struct.inode** %6, align 8
  %616 = load %struct.f2fs_map_blocks*, %struct.f2fs_map_blocks** %7, align 8
  %617 = load i32, i32* %17, align 4
  %618 = call i32 @trace_f2fs_map_blocks(%struct.inode* %615, %struct.f2fs_map_blocks* %616, i32 %617)
  %619 = load i32, i32* %17, align 4
  store i32 %619, i32* %5, align 4
  br label %620

620:                                              ; preds = %614, %45
  %621 = load i32, i32* %5, align 4
  ret i32 %621
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @f2fs_lookup_extent_cache(%struct.inode*, i32, %struct.extent_info*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @f2fs_wait_on_block_writeback_range(%struct.inode*, i64, i32) #1

declare dso_local i32 @__do_map_lock(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i32, i32) #1

declare dso_local i8* @f2fs_get_next_page_offset(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @ADDRS_PER_PAGE(i32, %struct.inode*) #1

declare dso_local i64 @datablock_addr(i32, i32, i32) #1

declare dso_local i64 @__is_valid_data_blkaddr(i64) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @__allocate_data_block(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @f2fs_reserve_new_blocks(%struct.dnode_of_data*, i64) #1

declare dso_local i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data*, i32, i64, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_map_blocks(%struct.inode*, %struct.f2fs_map_blocks*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
