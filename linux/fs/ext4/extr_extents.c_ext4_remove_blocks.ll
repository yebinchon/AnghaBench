; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_remove_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_remove_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i32 }
%struct.partial_cluster = type { i64, i64, i16 }
%struct.ext4_sb_info = type { i16, i16, i16, i64, i16, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"strange request: removal(2) %u-%u from %u:%u\00", align 1
@initial = common dso_local global i64 0, align 8
@tofree = common dso_local global i64 0, align 8
@EXT4_FREE_BLOCKS_RERESERVE_CLUSTER = common dso_local global i32 0, align 4
@nofree = common dso_local global i64 0, align 8
@EXT4_FREE_BLOCKS_NOFREE_LAST_CLUSTER = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_NOFREE_FIRST_CLUSTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_extent*, %struct.partial_cluster*, i16, i16)* @ext4_remove_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_remove_blocks(i32* %0, %struct.inode* %1, %struct.ext4_extent* %2, %struct.partial_cluster* %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca %struct.partial_cluster*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca %struct.ext4_sb_info*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %10, align 8
  store %struct.partial_cluster* %3, %struct.partial_cluster** %11, align 8
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ext4_sb_info* @EXT4_SB(i32 %22)
  store %struct.ext4_sb_info* %23, %struct.ext4_sb_info** %14, align 8
  %24 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %25 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %24)
  store i16 %25, i16* %15, align 2
  %26 = load i16, i16* %12, align 2
  %27 = zext i16 %26 to i32
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %29 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call zeroext i16 @le32_to_cpu(i32 %30)
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %6
  %35 = load i16, i16* %13, align 2
  %36 = zext i16 %35 to i32
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %38 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call zeroext i16 @le32_to_cpu(i32 %39)
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %15, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = sub nsw i32 %44, 1
  %46 = icmp ne i32 %36, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %34, %6
  %48 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %49 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load i16, i16* %12, align 2
  %52 = load i16, i16* %13, align 2
  %53 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %54 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call zeroext i16 @le32_to_cpu(i32 %55)
  %57 = load i16, i16* %15, align 2
  %58 = call i32 @ext4_error(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i16 zeroext %51, i16 zeroext %52, i16 zeroext %56, i16 zeroext %57)
  store i32 0, i32* %7, align 4
  br label %277

59:                                               ; preds = %34
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %62 = load i16, i16* %12, align 2
  %63 = load i16, i16* %13, align 2
  %64 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %65 = call i32 @trace_ext4_remove_blocks(%struct.inode* %60, %struct.ext4_extent* %61, i16 zeroext %62, i16 zeroext %63, %struct.partial_cluster* %64)
  %66 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %67 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %66)
  %68 = load i16, i16* %15, align 2
  %69 = zext i16 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = sub nsw i64 %70, 1
  store i64 %71, i64* %16, align 8
  %72 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %73 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @initial, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %59
  %78 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %79 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %81, i64 %82)
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %77
  %86 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %87 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @tofree, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %85
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = call i32 @get_default_free_blocks_flags(%struct.inode* %92)
  store i32 %93, i32* %19, align 4
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %96 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %95, i32 0, i32 2
  %97 = load i16, i16* %96, align 8
  %98 = call i64 @ext4_is_pending(%struct.inode* %94, i16 zeroext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %102 = load i32, i32* %19, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %108 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %109 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %107, i64 %110)
  %112 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %113 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %112, i32 0, i32 4
  %114 = load i16, i16* %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @ext4_free_blocks(i32* %105, %struct.inode* %106, i32* null, i64 %111, i16 zeroext %114, i32 %115)
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %104
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %124 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %123, i32 0, i32 2
  %125 = load i16, i16* %124, align 8
  %126 = call i32 @ext4_rereserve_cluster(%struct.inode* %122, i16 zeroext %125)
  br label %127

127:                                              ; preds = %121, %104
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i64, i64* @initial, align 8
  %130 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %131 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %77, %59
  %133 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %134 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call zeroext i16 @le32_to_cpu(i32 %135)
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* %15, align 2
  %139 = zext i16 %138 to i32
  %140 = add nsw i32 %137, %139
  %141 = load i16, i16* %12, align 2
  %142 = zext i16 %141 to i32
  %143 = sub nsw i32 %140, %142
  %144 = trunc i32 %143 to i16
  store i16 %144, i16* %18, align 2
  %145 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %146 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %145)
  %147 = load i16, i16* %15, align 2
  %148 = zext i16 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i16, i16* %18, align 2
  %151 = zext i16 %150 to i64
  %152 = sub nsw i64 %149, %151
  store i64 %152, i64* %17, align 8
  %153 = load %struct.inode*, %struct.inode** %9, align 8
  %154 = call i32 @get_default_free_blocks_flags(%struct.inode* %153)
  store i32 %154, i32* %19, align 4
  %155 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %156 = load i16, i16* %13, align 2
  %157 = call i32 @EXT4_LBLK_COFF(%struct.ext4_sb_info* %155, i16 zeroext %156)
  %158 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %159 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %158, i32 0, i32 4
  %160 = load i16, i16* %159, align 8
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %161, 1
  %163 = icmp ne i32 %157, %162
  br i1 %163, label %164, label %212

164:                                              ; preds = %132
  %165 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %166 = load i16, i16* %13, align 2
  %167 = call zeroext i16 @EXT4_LBLK_CMASK(%struct.ext4_sb_info* %165, i16 zeroext %166)
  %168 = zext i16 %167 to i32
  %169 = load i16, i16* %12, align 2
  %170 = zext i16 %169 to i32
  %171 = icmp sge i32 %168, %170
  br i1 %171, label %172, label %212

172:                                              ; preds = %164
  %173 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %174 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @nofree, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %172
  %179 = load %struct.inode*, %struct.inode** %9, align 8
  %180 = load i16, i16* %13, align 2
  %181 = call i64 @ext4_is_pending(%struct.inode* %179, i16 zeroext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %185 = load i32, i32* %19, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %19, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32*, i32** %8, align 8
  %189 = load %struct.inode*, %struct.inode** %9, align 8
  %190 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %191 = load i64, i64* %16, align 8
  %192 = call i64 @EXT4_PBLK_CMASK(%struct.ext4_sb_info* %190, i64 %191)
  %193 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %194 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %193, i32 0, i32 4
  %195 = load i16, i16* %194, align 8
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @ext4_free_blocks(i32* %188, %struct.inode* %189, i32* null, i64 %192, i16 zeroext %195, i32 %196)
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* @EXT4_FREE_BLOCKS_RERESERVE_CLUSTER, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %187
  %203 = load %struct.inode*, %struct.inode** %9, align 8
  %204 = load i16, i16* %13, align 2
  %205 = call i32 @ext4_rereserve_cluster(%struct.inode* %203, i16 zeroext %204)
  br label %206

206:                                              ; preds = %202, %187
  %207 = load i64, i64* @initial, align 8
  %208 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %209 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.inode*, %struct.inode** %9, align 8
  %211 = call i32 @get_default_free_blocks_flags(%struct.inode* %210)
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %206, %172, %164, %132
  %213 = load i32, i32* @EXT4_FREE_BLOCKS_NOFREE_LAST_CLUSTER, align 4
  %214 = load i32, i32* %19, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %19, align 4
  %216 = load i32, i32* @EXT4_FREE_BLOCKS_NOFREE_FIRST_CLUSTER, align 4
  %217 = load i32, i32* %19, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %19, align 4
  %219 = load i32*, i32** %8, align 8
  %220 = load %struct.inode*, %struct.inode** %9, align 8
  %221 = load i64, i64* %17, align 8
  %222 = load i16, i16* %18, align 2
  %223 = load i32, i32* %19, align 4
  %224 = call i32 @ext4_free_blocks(i32* %219, %struct.inode* %220, i32* null, i64 %221, i16 zeroext %222, i32 %223)
  %225 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %226 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @initial, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %212
  %231 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %232 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %235 = load i64, i64* %17, align 8
  %236 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %234, i64 %235)
  %237 = icmp ne i64 %233, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %230
  %239 = load i64, i64* @initial, align 8
  %240 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %241 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %238, %230, %212
  %243 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %244 = load i16, i16* %12, align 2
  %245 = call i32 @EXT4_LBLK_COFF(%struct.ext4_sb_info* %243, i16 zeroext %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %272

247:                                              ; preds = %242
  %248 = load i16, i16* %18, align 2
  %249 = zext i16 %248 to i32
  %250 = load i16, i16* %15, align 2
  %251 = zext i16 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %272

253:                                              ; preds = %247
  %254 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %255 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @initial, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %271

259:                                              ; preds = %253
  %260 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %261 = load i64, i64* %17, align 8
  %262 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %260, i64 %261)
  %263 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %264 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  %265 = load i16, i16* %12, align 2
  %266 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %267 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %266, i32 0, i32 2
  store i16 %265, i16* %267, align 8
  %268 = load i64, i64* @tofree, align 8
  %269 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %270 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %259, %253
  br label %276

272:                                              ; preds = %247, %242
  %273 = load i64, i64* @initial, align 8
  %274 = load %struct.partial_cluster*, %struct.partial_cluster** %11, align 8
  %275 = getelementptr inbounds %struct.partial_cluster, %struct.partial_cluster* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %272, %271
  store i32 0, i32* %7, align 4
  br label %277

277:                                              ; preds = %276, %47
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_error(i32, i8*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @trace_ext4_remove_blocks(%struct.inode*, %struct.ext4_extent*, i16 zeroext, i16 zeroext, %struct.partial_cluster*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @get_default_free_blocks_flags(%struct.inode*) #1

declare dso_local i64 @ext4_is_pending(%struct.inode*, i16 zeroext) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i64, i16 zeroext, i32) #1

declare dso_local i64 @EXT4_C2B(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @ext4_rereserve_cluster(%struct.inode*, i16 zeroext) #1

declare dso_local i32 @EXT4_LBLK_COFF(%struct.ext4_sb_info*, i16 zeroext) #1

declare dso_local zeroext i16 @EXT4_LBLK_CMASK(%struct.ext4_sb_info*, i16 zeroext) #1

declare dso_local i64 @EXT4_PBLK_CMASK(%struct.ext4_sb_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
