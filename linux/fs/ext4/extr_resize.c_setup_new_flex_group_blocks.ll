; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_setup_new_flex_group_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_setup_new_flex_group_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_flex_group_data = type { i32*, i32, %struct.ext4_new_group_data* }
%struct.ext4_new_group_data = type { i64, i64, i64, i64, i64 }
%struct.ext4_sb_info = type { i32, i64, %struct.TYPE_2__**, %struct.ext4_super_block* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_super_block = type { i32 }
%struct.buffer_head = type { i32, i32 }

@EXT4_HT_RESIZE = common dso_local global i32 0, align 4
@EXT4_MAX_TRANS_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"update backup group %#04llx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"clear inode table blocks %#04llx -> %#04lx\0A\00", align 1
@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"mark backup superblock %#04llx (+0)\0A\00", align 1
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@GROUP_TABLE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_new_flex_group_data*)* @setup_new_flex_group_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_new_flex_group_blocks(%struct.super_block* %0, %struct.ext4_new_flex_group_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext4_new_flex_group_data*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ext4_sb_info*, align 8
  %10 = alloca %struct.ext4_super_block*, align 8
  %11 = alloca %struct.ext4_new_group_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext4_new_flex_group_data* %1, %struct.ext4_new_flex_group_data** %5, align 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %29, align 4
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %34)
  store %struct.ext4_sb_info* %35, %struct.ext4_sb_info** %9, align 8
  %36 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %37 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %36, i32 0, i32 3
  %38 = load %struct.ext4_super_block*, %struct.ext4_super_block** %37, align 8
  store %struct.ext4_super_block* %38, %struct.ext4_super_block** %10, align 8
  %39 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %40 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %39, i32 0, i32 2
  %41 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %40, align 8
  store %struct.ext4_new_group_data* %41, %struct.ext4_new_group_data** %11, align 8
  %42 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %43 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store i32 0, i32* %20, align 4
  %45 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %46 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %2
  %50 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %51 = icmp ne %struct.ext4_new_group_data* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %54 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %53, i64 0
  %55 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %58 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br label %61

61:                                               ; preds = %52, %49, %2
  %62 = phi i1 [ true, %49 ], [ true, %2 ], [ %60, %52 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load %struct.ext4_super_block*, %struct.ext4_super_block** %10, align 8
  %66 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load %struct.super_block*, %struct.super_block** %4, align 8
  %70 = call i32 @ext4_has_feature_meta_bg(%struct.super_block* %69)
  store i32 %70, i32* %22, align 4
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = load i32, i32* @EXT4_HT_RESIZE, align 4
  %73 = load i32, i32* @EXT4_MAX_TRANS_DATA, align 4
  %74 = call %struct.buffer_head* @ext4_journal_start_sb(%struct.super_block* %71, i32 %72, i32 %73)
  store %struct.buffer_head* %74, %struct.buffer_head** %13, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %76 = call i64 @IS_ERR(%struct.buffer_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %80 = call i32 @PTR_ERR(%struct.buffer_head* %79)
  store i32 %80, i32* %3, align 4
  br label %519

81:                                               ; preds = %61
  %82 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %83 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %82, i64 0
  %84 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %388, %81
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %89 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %393

92:                                               ; preds = %86
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i64 @ext4_bg_num_gdb(%struct.super_block* %93, i64 %94)
  store i64 %95, i64* %23, align 8
  %96 = load %struct.super_block*, %struct.super_block** %4, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i64 @ext4_group_first_block_no(%struct.super_block* %96, i64 %97)
  store i64 %98, i64* %7, align 8
  %99 = load i32, i32* %22, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i64 @ext4_bg_has_super(%struct.super_block* %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %227

107:                                              ; preds = %101, %92
  %108 = load i32, i32* %22, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.super_block*, %struct.super_block** %4, align 8
  %112 = load i64, i64* %14, align 8
  %113 = call i64 @ext4_meta_bg_first_group(%struct.super_block* %111, i64 %112)
  store i64 %113, i64* %25, align 8
  %114 = load i64, i64* %25, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add nsw i64 %115, 1
  %117 = icmp ne i64 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %110
  %119 = load i64, i64* %25, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.super_block*, %struct.super_block** %4, align 8
  %122 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %121)
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = sub nsw i64 %124, 1
  %126 = icmp ne i64 %119, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %227

128:                                              ; preds = %118, %110
  br label %129

129:                                              ; preds = %128, %107
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.super_block*, %struct.super_block** %4, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i64 @ext4_bg_has_super(%struct.super_block* %131, i64 %132)
  %134 = add nsw i64 %130, %133
  store i64 %134, i64* %8, align 8
  store i32 0, i32* %19, align 4
  br label %135

135:                                              ; preds = %203, %129
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %23, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %208

140:                                              ; preds = %135
  %141 = load i64, i64* %8, align 8
  %142 = call i32 (i8*, i64, ...) @ext4_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %144 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %143, i32 1)
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %507

148:                                              ; preds = %140
  %149 = load %struct.super_block*, %struct.super_block** %4, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %149, i64 %150)
  store %struct.buffer_head* %151, %struct.buffer_head** %26, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %153 = icmp ne %struct.buffer_head* %152, null
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %20, align 4
  br label %507

161:                                              ; preds = %148
  %162 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %163 = call i32 @BUFFER_TRACE(%struct.buffer_head* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %164 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %166 = call i32 @ext4_journal_get_write_access(%struct.buffer_head* %164, %struct.buffer_head* %165)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %171 = call i32 @brelse(%struct.buffer_head* %170)
  br label %507

172:                                              ; preds = %161
  %173 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %174 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %177 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %177, align 8
  %179 = load i32, i32* %19, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %178, i64 %180
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %186 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @memcpy(i32 %175, i32 %184, i32 %187)
  %189 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %190 = call i32 @set_buffer_uptodate(%struct.buffer_head* %189)
  %191 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %192 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %193 = call i32 @ext4_handle_dirty_metadata(%struct.buffer_head* %191, i32* null, %struct.buffer_head* %192)
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %20, align 4
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %172
  %198 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %199 = call i32 @brelse(%struct.buffer_head* %198)
  br label %507

200:                                              ; preds = %172
  %201 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %202 = call i32 @brelse(%struct.buffer_head* %201)
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %19, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %19, align 4
  %206 = load i64, i64* %8, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %8, align 8
  br label %135

208:                                              ; preds = %135
  %209 = load %struct.super_block*, %struct.super_block** %4, align 8
  %210 = load i64, i64* %14, align 8
  %211 = call i64 @ext4_bg_has_super(%struct.super_block* %209, i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %208
  %214 = load %struct.super_block*, %struct.super_block** %4, align 8
  %215 = load i64, i64* %23, align 8
  %216 = load i64, i64* %7, align 8
  %217 = add i64 %215, %216
  %218 = add i64 %217, 1
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @GFP_NOFS, align 4
  %221 = call i32 @sb_issue_zeroout(%struct.super_block* %214, i64 %218, i32 %219, i32 %220)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  br label %507

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %225, %208
  br label %227

227:                                              ; preds = %226, %127, %106
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %227
  br label %260

237:                                              ; preds = %227
  %238 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %238, i64 %240
  %242 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %246 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i8*, i64, ...) @ext4_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %244, i32 %247)
  %249 = load %struct.super_block*, %struct.super_block** %4, align 8
  %250 = load i64, i64* %8, align 8
  %251 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %252 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @GFP_NOFS, align 4
  %255 = call i32 @sb_issue_zeroout(%struct.super_block* %249, i64 %250, i32 %253, i32 %254)
  store i32 %255, i32* %20, align 4
  %256 = load i32, i32* %20, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %237
  br label %507

259:                                              ; preds = %237
  br label %260

260:                                              ; preds = %259, %236
  %261 = load i32*, i32** %12, align 8
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %260
  br label %335

270:                                              ; preds = %260
  %271 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %271, i64 %273
  %275 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %8, align 8
  %277 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %278 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %277, i32 1)
  store i32 %278, i32* %20, align 4
  %279 = load i32, i32* %20, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %270
  br label %507

282:                                              ; preds = %270
  %283 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %284 = load %struct.super_block*, %struct.super_block** %4, align 8
  %285 = load i64, i64* %8, align 8
  %286 = call %struct.buffer_head* @bclean(%struct.buffer_head* %283, %struct.super_block* %284, i64 %285)
  store %struct.buffer_head* %286, %struct.buffer_head** %16, align 8
  %287 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %288 = call i64 @IS_ERR(%struct.buffer_head* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %282
  %291 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %292 = call i32 @PTR_ERR(%struct.buffer_head* %291)
  store i32 %292, i32* %20, align 4
  br label %507

293:                                              ; preds = %282
  %294 = load %struct.super_block*, %struct.super_block** %4, align 8
  %295 = load i64, i64* %14, align 8
  %296 = call i64 @ext4_group_overhead_blocks(%struct.super_block* %294, i64 %295)
  store i64 %296, i64* %24, align 8
  %297 = load i64, i64* %24, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %293
  %300 = load i64, i64* %7, align 8
  %301 = call i32 (i8*, i64, ...) @ext4_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %300)
  %302 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %303 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %306 = load i64, i64* %24, align 8
  %307 = call i32 @EXT4_NUM_B2C(%struct.ext4_sb_info* %305, i64 %306)
  %308 = call i32 @ext4_set_bits(i32 %304, i32 0, i32 %307)
  br label %309

309:                                              ; preds = %299, %293
  %310 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %311 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %312 = load i32, i32* %18, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %311, i64 %313
  %315 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %314, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %310, i64 %316)
  %318 = load %struct.super_block*, %struct.super_block** %4, align 8
  %319 = getelementptr inbounds %struct.super_block, %struct.super_block* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = mul nsw i32 %320, 8
  %322 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %323 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @ext4_mark_bitmap_end(i32 %317, i32 %321, i32 %324)
  %326 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %327 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %328 = call i32 @ext4_handle_dirty_metadata(%struct.buffer_head* %326, i32* null, %struct.buffer_head* %327)
  store i32 %328, i32* %20, align 4
  %329 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %330 = call i32 @brelse(%struct.buffer_head* %329)
  %331 = load i32, i32* %20, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %309
  br label %507

334:                                              ; preds = %309
  br label %335

335:                                              ; preds = %334, %269
  %336 = load i32*, i32** %12, align 8
  %337 = load i32, i32* %18, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %335
  br label %388

345:                                              ; preds = %335
  %346 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %347 = load i32, i32* %18, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %346, i64 %348
  %350 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %8, align 8
  %352 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %353 = call i32 @extend_or_restart_transaction(%struct.buffer_head* %352, i32 1)
  store i32 %353, i32* %20, align 4
  %354 = load i32, i32* %20, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %345
  br label %507

357:                                              ; preds = %345
  %358 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %359 = load %struct.super_block*, %struct.super_block** %4, align 8
  %360 = load i64, i64* %8, align 8
  %361 = call %struct.buffer_head* @bclean(%struct.buffer_head* %358, %struct.super_block* %359, i64 %360)
  store %struct.buffer_head* %361, %struct.buffer_head** %16, align 8
  %362 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %363 = call i64 @IS_ERR(%struct.buffer_head* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %357
  %366 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %367 = call i32 @PTR_ERR(%struct.buffer_head* %366)
  store i32 %367, i32* %20, align 4
  br label %507

368:                                              ; preds = %357
  %369 = load %struct.super_block*, %struct.super_block** %4, align 8
  %370 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %369)
  %371 = load %struct.super_block*, %struct.super_block** %4, align 8
  %372 = getelementptr inbounds %struct.super_block, %struct.super_block* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = mul nsw i32 %373, 8
  %375 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %376 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @ext4_mark_bitmap_end(i32 %370, i32 %374, i32 %377)
  %379 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %380 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %381 = call i32 @ext4_handle_dirty_metadata(%struct.buffer_head* %379, i32* null, %struct.buffer_head* %380)
  store i32 %381, i32* %20, align 4
  %382 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %383 = call i32 @brelse(%struct.buffer_head* %382)
  %384 = load i32, i32* %20, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %368
  br label %507

387:                                              ; preds = %368
  br label %388

388:                                              ; preds = %387, %344
  %389 = load i32, i32* %18, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %18, align 4
  %391 = load i64, i64* %14, align 8
  %392 = add nsw i64 %391, 1
  store i64 %392, i64* %14, align 8
  br label %86

393:                                              ; preds = %86
  store i32 0, i32* %19, align 4
  br label %394

394:                                              ; preds = %503, %393
  %395 = load i32, i32* %19, align 4
  %396 = load i32, i32* @GROUP_TABLE_COUNT, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %506

398:                                              ; preds = %394
  %399 = load i32, i32* %19, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %15, align 8
  %404 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %405 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %404, i64 0
  %406 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %405, i32 0, i32 2
  %407 = load i32, i32* %19, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %406, i64 %408
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %7, align 8
  %411 = load i64, i64* %7, align 8
  store i64 %411, i64* %8, align 8
  store i32 1, i32* %18, align 4
  br label %412

412:                                              ; preds = %478, %398
  %413 = load i32, i32* %18, align 4
  %414 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %415 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = icmp slt i32 %413, %416
  br i1 %417, label %418, label %481

418:                                              ; preds = %412
  %419 = load i32, i32* %19, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = load i64, i64* %8, align 8
  %425 = add nsw i64 %424, %423
  store i64 %425, i64* %8, align 8
  %426 = load i64, i64* %8, align 8
  %427 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %428 = load i32, i32* %18, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %427, i64 %429
  %431 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %430, i32 0, i32 2
  %432 = load i32, i32* %19, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = icmp eq i64 %426, %435
  br i1 %436, label %437, label %445

437:                                              ; preds = %418
  %438 = load i32, i32* %19, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  %443 = load i64, i64* %15, align 8
  %444 = add nsw i64 %443, %442
  store i64 %444, i64* %15, align 8
  br label %478

445:                                              ; preds = %418
  %446 = load %struct.super_block*, %struct.super_block** %4, align 8
  %447 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %448 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %449 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %450 = load i64, i64* %7, align 8
  %451 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %449, i64 %450)
  %452 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %453 = load i64, i64* %7, align 8
  %454 = load i64, i64* %15, align 8
  %455 = add nsw i64 %453, %454
  %456 = sub nsw i64 %455, 1
  %457 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %452, i64 %456)
  %458 = call i32 @set_flexbg_block_bitmap(%struct.super_block* %446, %struct.buffer_head* %447, %struct.ext4_new_flex_group_data* %448, i32 %451, i32 %457)
  store i32 %458, i32* %20, align 4
  %459 = load i32, i32* %20, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %445
  br label %507

462:                                              ; preds = %445
  %463 = load i32, i32* %19, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %15, align 8
  %468 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %11, align 8
  %469 = load i32, i32* %18, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %468, i64 %470
  %472 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %471, i32 0, i32 2
  %473 = load i32, i32* %19, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i64, i64* %472, i64 %474
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %7, align 8
  %477 = load i64, i64* %7, align 8
  store i64 %477, i64* %8, align 8
  br label %478

478:                                              ; preds = %462, %437
  %479 = load i32, i32* %18, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %18, align 4
  br label %412

481:                                              ; preds = %412
  %482 = load i64, i64* %15, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %502

484:                                              ; preds = %481
  %485 = load %struct.super_block*, %struct.super_block** %4, align 8
  %486 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %487 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %5, align 8
  %488 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %489 = load i64, i64* %7, align 8
  %490 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %488, i64 %489)
  %491 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %492 = load i64, i64* %7, align 8
  %493 = load i64, i64* %15, align 8
  %494 = add nsw i64 %492, %493
  %495 = sub nsw i64 %494, 1
  %496 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %491, i64 %495)
  %497 = call i32 @set_flexbg_block_bitmap(%struct.super_block* %485, %struct.buffer_head* %486, %struct.ext4_new_flex_group_data* %487, i32 %490, i32 %496)
  store i32 %497, i32* %20, align 4
  %498 = load i32, i32* %20, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %484
  br label %507

501:                                              ; preds = %484
  br label %502

502:                                              ; preds = %501, %481
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %19, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %19, align 4
  br label %394

506:                                              ; preds = %394
  br label %507

507:                                              ; preds = %506, %500, %461, %386, %365, %356, %333, %290, %281, %258, %224, %197, %169, %158, %147
  %508 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %509 = call i32 @ext4_journal_stop(%struct.buffer_head* %508)
  store i32 %509, i32* %21, align 4
  %510 = load i32, i32* %21, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %507
  %513 = load i32, i32* %20, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %512
  %516 = load i32, i32* %21, align 4
  store i32 %516, i32* %20, align 4
  br label %517

517:                                              ; preds = %515, %512, %507
  %518 = load i32, i32* %20, align 4
  store i32 %518, i32* %3, align 4
  br label %519

519:                                              ; preds = %517, %78
  %520 = load i32, i32* %3, align 4
  ret i32 %520
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_has_feature_meta_bg(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @ext4_journal_start_sb(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i64 @ext4_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_meta_bg_first_group(%struct.super_block*, i64) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @ext4_debug(i8*, i64, ...) #1

declare dso_local i32 @extend_or_restart_transaction(%struct.buffer_head*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(%struct.buffer_head*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @sb_issue_zeroout(%struct.super_block*, i64, i32, i32) #1

declare dso_local %struct.buffer_head* @bclean(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i64 @ext4_group_overhead_blocks(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_set_bits(i32, i32, i32) #1

declare dso_local i32 @EXT4_NUM_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @ext4_mark_bitmap_end(i32, i32, i32) #1

declare dso_local i32 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @set_flexbg_block_bitmap(%struct.super_block*, %struct.buffer_head*, %struct.ext4_new_flex_group_data*, i32, i32) #1

declare dso_local i32 @ext4_journal_stop(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
