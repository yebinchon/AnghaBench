; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_read_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_read_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.ext4_dir_entry_2 = type { i8*, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_read_inline_dir(%struct.file* %0, %struct.dir_context* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_iloc, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dir_context* %1, %struct.dir_context** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call %struct.inode* @file_inode(%struct.file* %22)
  store %struct.inode* %23, %struct.inode** %13, align 8
  store i32 0, i32* %15, align 4
  store i8* null, i8** %17, align 8
  %24 = load %struct.inode*, %struct.inode** %13, align 8
  %25 = call i32 @ext4_get_inode_loc(%struct.inode* %24, %struct.ext4_iloc* %16)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %4, align 4
  br label %271

30:                                               ; preds = %3
  %31 = load %struct.inode*, %struct.inode** %13, align 8
  %32 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @down_read(i32* %33)
  %35 = load %struct.inode*, %struct.inode** %13, align 8
  %36 = call i32 @ext4_has_inline_data(%struct.inode* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @up_read(i32* %41)
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  br label %264

44:                                               ; preds = %30
  %45 = load %struct.inode*, %struct.inode** %13, align 8
  %46 = call i32 @ext4_get_inline_size(%struct.inode* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = call i8* @kmalloc(i32 %47, i32 %48)
  store i8* %49, i8** %17, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  %55 = load %struct.inode*, %struct.inode** %13, align 8
  %56 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @up_read(i32* %57)
  br label %264

59:                                               ; preds = %44
  %60 = load %struct.inode*, %struct.inode** %13, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @ext4_read_inline_data(%struct.inode* %60, i8* %61, i32 %62, %struct.ext4_iloc* %16)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.inode*, %struct.inode** %13, align 8
  %65 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @up_read(i32* %66)
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %264

71:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load %struct.super_block*, %struct.super_block** %73, align 8
  store %struct.super_block* %74, %struct.super_block** %12, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = bitcast i8* %75 to %struct.ext4_dir_entry_2*
  %77 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %81 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @EXT4_DIR_REC_LEN(i32 2)
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %21, align 4
  %93 = load %struct.inode*, %struct.inode** %13, align 8
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @inode_eq_iversion(%struct.inode* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %157, label %99

99:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %140, %119, %113, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ult i32 %105, %106
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i1 [ false, %100 ], [ %107, %104 ]
  br i1 %109, label %110, label %148

110:                                              ; preds = %108
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %10, align 4
  br label %100

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %19, align 4
  store i32 %120, i32* %10, align 4
  br label %100

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121
  %123 = load i8*, i8** %17, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr i8, i8* %123, i64 %125
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 0, %128
  %130 = getelementptr i8, i8* %126, i64 %129
  %131 = bitcast i8* %130 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %131, %struct.ext4_dir_entry_2** %11, align 8
  %132 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %133 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @ext4_rec_len_from_disk(i32 %134, i32 %135)
  %137 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %122
  br label %148

140:                                              ; preds = %122
  %141 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %142 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %21, align 4
  %145 = call i32 @ext4_rec_len_from_disk(i32 %143, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %100

148:                                              ; preds = %139, %108
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %152 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.inode*, %struct.inode** %13, align 8
  %154 = call i32 @inode_query_iversion(%struct.inode* %153)
  %155 = load %struct.file*, %struct.file** %5, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %71
  br label %158

158:                                              ; preds = %253, %195, %178, %157
  %159 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %160 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %21, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %263

164:                                              ; preds = %158
  %165 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %166 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %171 = load %struct.inode*, %struct.inode** %13, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @DT_DIR, align 4
  %175 = call i32 @dir_emit(%struct.dir_context* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %169
  br label %264

178:                                              ; preds = %169
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %181 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  br label %158

182:                                              ; preds = %164
  %183 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %184 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %182
  %189 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @DT_DIR, align 4
  %192 = call i32 @dir_emit(%struct.dir_context* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  br label %264

195:                                              ; preds = %188
  %196 = load i32, i32* %19, align 4
  %197 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %198 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  br label %158

199:                                              ; preds = %182
  %200 = load i8*, i8** %17, align 8
  %201 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %202 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr i8, i8* %200, i64 %204
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = sub i64 0, %207
  %209 = getelementptr i8, i8* %205, i64 %208
  %210 = bitcast i8* %209 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %210, %struct.ext4_dir_entry_2** %11, align 8
  %211 = load %struct.inode*, %struct.inode** %13, align 8
  %212 = load %struct.file*, %struct.file** %5, align 8
  %213 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %214 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %16, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i8*, i8** %17, align 8
  %217 = load i32, i32* %21, align 4
  %218 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %219 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = call i64 @ext4_check_dir_entry(%struct.inode* %211, %struct.file* %212, %struct.ext4_dir_entry_2* %213, i32 %215, i8* %216, i32 %217, i8* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %199
  br label %264

226:                                              ; preds = %199
  %227 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %228 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @le32_to_cpu(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %226
  %233 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %234 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %235 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %238 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %241 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le32_to_cpu(i32 %242)
  %244 = load %struct.super_block*, %struct.super_block** %12, align 8
  %245 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %246 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @get_dtype(%struct.super_block* %244, i32 %247)
  %249 = call i32 @dir_emit(%struct.dir_context* %233, i8* %236, i32 %239, i32 %243, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %232
  br label %264

252:                                              ; preds = %232
  br label %253

253:                                              ; preds = %252, %226
  %254 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %255 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %21, align 4
  %258 = call i32 @ext4_rec_len_from_disk(i32 %256, i32 %257)
  %259 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %260 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = add i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %158

263:                                              ; preds = %158
  br label %264

264:                                              ; preds = %263, %251, %225, %194, %177, %70, %52, %38
  %265 = load i8*, i8** %17, align 8
  %266 = call i32 @kfree(i8* %265)
  %267 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %16, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @brelse(i32 %268)
  %270 = load i32, i32* %14, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %264, %28
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ext4_read_inline_data(%struct.inode*, i8*, i32, %struct.ext4_iloc*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @inode_eq_iversion(%struct.inode*, i32) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i32 @inode_query_iversion(%struct.inode*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, %struct.file*, %struct.ext4_dir_entry_2*, i32, i8*, i32, i8*) #1

declare dso_local i32 @get_dtype(%struct.super_block*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
