; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_sanity_check_ckpt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_sanity_check_ckpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32 }
%struct.f2fs_super_block = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.f2fs_checkpoint = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32 }

@F2FS_MIN_SEGMENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Wrong layout: check mkfs.f2fs version\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Wrong user_block_count: %u\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Wrong valid_user_blocks: %u, user_block_count: %u\00", align 1
@F2FS_RESERVED_NODE_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Wrong valid_node_count: %u, avail_node_count: %u\00", align 1
@NR_CURSEG_NODE_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Node segment (%u, %u) has the same segno: %u\00", align 1
@NR_CURSEG_DATA_TYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Data segment (%u, %u) has the same segno: %u\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Node segment (%u) and Data segment (%u) has the same segno: %u\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Wrong bitmap size: sit: %u, nat:%u\00", align 1
@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Wrong cp_pack_start_sum: %u\00", align 1
@CP_LARGE_NAT_BITMAP_FLAG = common dso_local global i32 0, align 4
@CP_MIN_CHKSUM_OFFSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [193 x i8] c"using deprecated layout of large_nat_bitmap, please run fsck v1.13.0 or higher to repair, chksum_offset: %u, fixed with patch: \22f2fs-tools: relocate chksum_offset for large_nat_bitmap feature\22\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"A bug case: need to run fsck\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_sanity_check_ckpt(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_super_block*, align 8
  %7 = alloca %struct.f2fs_checkpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %27 = call %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info* %26)
  store %struct.f2fs_super_block* %27, %struct.f2fs_super_block** %6, align 8
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %29 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %28)
  store %struct.f2fs_checkpoint* %29, %struct.f2fs_checkpoint** %7, align 8
  %30 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %31 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %35 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %39 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %46 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %53 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %59 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp uge i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %434

71:                                               ; preds = %1
  %72 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %73 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %77 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @F2FS_MIN_SEGMENTS, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %86, %83, %71
  %90 = phi i1 [ true, %83 ], [ true, %71 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %96 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %434

97:                                               ; preds = %89
  %98 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %99 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le64_to_cpu(i32 %100)
  store i32 %101, i32* %20, align 4
  %102 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %103 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %107 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %16, align 4
  %116 = shl i32 %114, %115
  %117 = icmp uge i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112, %97
  %119 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %120 = load i32, i32* %20, align 4
  %121 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  store i32 1, i32* %2, align 4
  br label %434

122:                                              ; preds = %112
  %123 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %124 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le64_to_cpu(i32 %125)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp ugt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %20, align 4
  %134 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %131, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133)
  store i32 1, i32* %2, align 4
  br label %434

135:                                              ; preds = %122
  %136 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %137 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le32_to_cpu(i32 %138)
  store i32 %139, i32* %23, align 4
  %140 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %141 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @F2FS_RESERVED_NODE_NUM, align 4
  %144 = sub i32 %142, %143
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp ugt i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %135
  %149 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* %22, align 4
  %152 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %151)
  store i32 1, i32* %2, align 4
  br label %434

153:                                              ; preds = %135
  %154 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %155 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  store i32 %157, i32* %10, align 4
  %158 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %159 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %11, align 4
  store i32 0, i32* %24, align 4
  br label %161

161:                                              ; preds = %231, %153
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* @NR_CURSEG_NODE_TYPE, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %234

165:                                              ; preds = %161
  %166 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %167 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %24, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le32_to_cpu(i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = icmp uge i32 %173, %174
  br i1 %175, label %187, label %176

176:                                              ; preds = %165
  %177 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %178 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %24, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le16_to_cpu(i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = icmp uge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %176, %165
  store i32 1, i32* %2, align 4
  br label %434

188:                                              ; preds = %176
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %25, align 4
  br label %191

191:                                              ; preds = %227, %188
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* @NR_CURSEG_NODE_TYPE, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %230

195:                                              ; preds = %191
  %196 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %197 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %24, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le32_to_cpu(i32 %202)
  %204 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %205 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %25, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le32_to_cpu(i32 %210)
  %212 = icmp eq i32 %203, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %195
  %214 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* %25, align 4
  %217 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %218 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @le32_to_cpu(i32 %223)
  %225 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %214, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %215, i32 %216, i32 %224)
  store i32 1, i32* %2, align 4
  br label %434

226:                                              ; preds = %195
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %25, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %25, align 4
  br label %191

230:                                              ; preds = %191
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  br label %161

234:                                              ; preds = %161
  store i32 0, i32* %24, align 4
  br label %235

235:                                              ; preds = %305, %234
  %236 = load i32, i32* %24, align 4
  %237 = load i32, i32* @NR_CURSEG_DATA_TYPE, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %308

239:                                              ; preds = %235
  %240 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %241 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %24, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @le32_to_cpu(i32 %246)
  %248 = load i32, i32* %10, align 4
  %249 = icmp uge i32 %247, %248
  br i1 %249, label %261, label %250

250:                                              ; preds = %239
  %251 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %252 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %24, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @le16_to_cpu(i32 %257)
  %259 = load i32, i32* %11, align 4
  %260 = icmp uge i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %250, %239
  store i32 1, i32* %2, align 4
  br label %434

262:                                              ; preds = %250
  %263 = load i32, i32* %24, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %25, align 4
  br label %265

265:                                              ; preds = %301, %262
  %266 = load i32, i32* %25, align 4
  %267 = load i32, i32* @NR_CURSEG_DATA_TYPE, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %304

269:                                              ; preds = %265
  %270 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %271 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %24, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le32_to_cpu(i32 %276)
  %278 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %279 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %278, i32 0, i32 4
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %25, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @le32_to_cpu(i32 %284)
  %286 = icmp eq i32 %277, %285
  br i1 %286, label %287, label %300

287:                                              ; preds = %269
  %288 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %289 = load i32, i32* %24, align 4
  %290 = load i32, i32* %25, align 4
  %291 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %292 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %291, i32 0, i32 4
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %24, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @le32_to_cpu(i32 %297)
  %299 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %288, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %289, i32 %290, i32 %298)
  store i32 1, i32* %2, align 4
  br label %434

300:                                              ; preds = %269
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %25, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %25, align 4
  br label %265

304:                                              ; preds = %265
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %24, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %24, align 4
  br label %235

308:                                              ; preds = %235
  store i32 0, i32* %24, align 4
  br label %309

309:                                              ; preds = %354, %308
  %310 = load i32, i32* %24, align 4
  %311 = load i32, i32* @NR_CURSEG_NODE_TYPE, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %357

313:                                              ; preds = %309
  store i32 0, i32* %25, align 4
  br label %314

314:                                              ; preds = %350, %313
  %315 = load i32, i32* %25, align 4
  %316 = load i32, i32* @NR_CURSEG_DATA_TYPE, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %353

318:                                              ; preds = %314
  %319 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %320 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %24, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @le32_to_cpu(i32 %325)
  %327 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %328 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %327, i32 0, i32 4
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %25, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @le32_to_cpu(i32 %333)
  %335 = icmp eq i32 %326, %334
  br i1 %335, label %336, label %349

336:                                              ; preds = %318
  %337 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %338 = load i32, i32* %24, align 4
  %339 = load i32, i32* %25, align 4
  %340 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %341 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %24, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @le32_to_cpu(i32 %346)
  %348 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %337, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %338, i32 %339, i32 %347)
  store i32 1, i32* %2, align 4
  br label %434

349:                                              ; preds = %318
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %25, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %25, align 4
  br label %314

353:                                              ; preds = %314
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %24, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %24, align 4
  br label %309

357:                                              ; preds = %309
  %358 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %359 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @le32_to_cpu(i32 %360)
  store i32 %361, i32* %14, align 4
  %362 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %363 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @le32_to_cpu(i32 %364)
  store i32 %365, i32* %15, align 4
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %12, align 4
  %368 = udiv i32 %367, 2
  %369 = load i32, i32* %16, align 4
  %370 = shl i32 %368, %369
  %371 = udiv i32 %370, 8
  %372 = icmp ne i32 %366, %371
  br i1 %372, label %381, label %373

373:                                              ; preds = %357
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %13, align 4
  %376 = udiv i32 %375, 2
  %377 = load i32, i32* %16, align 4
  %378 = shl i32 %376, %377
  %379 = udiv i32 %378, 8
  %380 = icmp ne i32 %374, %379
  br i1 %380, label %381, label %386

381:                                              ; preds = %373, %357
  %382 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %383 = load i32, i32* %14, align 4
  %384 = load i32, i32* %15, align 4
  %385 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %382, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %383, i32 %384)
  store i32 1, i32* %2, align 4
  br label %434

386:                                              ; preds = %373
  %387 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %388 = call i32 @__start_sum_addr(%struct.f2fs_sb_info* %387)
  store i32 %388, i32* %18, align 4
  %389 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %390 = call i32 @__cp_payload(%struct.f2fs_sb_info* %389)
  store i32 %390, i32* %19, align 4
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* %19, align 4
  %393 = add i32 %392, 1
  %394 = icmp ult i32 %391, %393
  br i1 %394, label %402, label %395

395:                                              ; preds = %386
  %396 = load i32, i32* %18, align 4
  %397 = load i32, i32* %11, align 4
  %398 = sub i32 %397, 1
  %399 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %400 = sub i32 %398, %399
  %401 = icmp ugt i32 %396, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %395, %386
  %403 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %404 = load i32, i32* %18, align 4
  %405 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %403, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %404)
  store i32 1, i32* %2, align 4
  br label %434

406:                                              ; preds = %395
  %407 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %408 = load i32, i32* @CP_LARGE_NAT_BITMAP_FLAG, align 4
  %409 = call i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint* %407, i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %425

411:                                              ; preds = %406
  %412 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %413 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @le32_to_cpu(i32 %414)
  %416 = load i32, i32* @CP_MIN_CHKSUM_OFFSET, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %418, label %425

418:                                              ; preds = %411
  %419 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %420 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %7, align 8
  %421 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @le32_to_cpu(i32 %422)
  %424 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %419, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.9, i64 0, i64 0), i32 %423)
  store i32 1, i32* %2, align 4
  br label %434

425:                                              ; preds = %411, %406
  %426 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %427 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %426)
  %428 = call i64 @unlikely(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %425
  %431 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %432 = call i32 (%struct.f2fs_sb_info*, i8*, ...) @f2fs_err(%struct.f2fs_sb_info* %431, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %434

433:                                              ; preds = %425
  store i32 0, i32* %2, align 4
  br label %434

434:                                              ; preds = %433, %430, %418, %402, %381, %336, %287, %261, %213, %187, %148, %130, %118, %94, %70
  %435 = load i32, i32* %2, align 4
  ret i32 %435
}

declare dso_local %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, ...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__start_sum_addr(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__cp_payload(%struct.f2fs_sb_info*) #1

declare dso_local i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint*, i32) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
