; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_split_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_split_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i8*, i32 }
%struct.gfs2_inode = type { i32, %struct.inode, i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.gfs2_leaf = type { i32, i32 }
%struct.gfs2_dirent = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"i_depth %u lf_depth %u index %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @dir_split_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_split_leaf(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.gfs2_leaf*, align 8
  %11 = alloca %struct.gfs2_leaf*, align 8
  %12 = alloca %struct.gfs2_dirent*, align 8
  %13 = alloca %struct.gfs2_dirent*, align 8
  %14 = alloca %struct.gfs2_dirent*, align 8
  %15 = alloca %struct.gfs2_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.qstr, align 8
  %27 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %28)
  store %struct.gfs2_inode* %29, %struct.gfs2_inode** %6, align 8
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %12, align 8
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %13, align 8
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %14, align 8
  %30 = load %struct.qstr*, %struct.qstr** %5, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 32, %35
  %37 = ashr i32 %32, %36
  store i32 %37, i32* %23, align 4
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %39 = load i32, i32* %23, align 4
  %40 = call i32 @get_leaf_nr(%struct.gfs2_inode* %38, i32 %39, i32* %21)
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* %25, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %25, align 4
  store i32 %44, i32* %3, align 4
  br label %340

45:                                               ; preds = %2
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @get_leaf(%struct.gfs2_inode* %46, i32 %47, %struct.buffer_head** %8)
  store i32 %48, i32* %25, align 4
  %49 = load i32, i32* %25, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %25, align 4
  store i32 %52, i32* %3, align 4
  br label %340

53:                                               ; preds = %45
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %57, %struct.gfs2_leaf** %11, align 8
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %59 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %62 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %68 = call i32 @brelse(%struct.buffer_head* %67)
  store i32 1, i32* %3, align 4
  br label %340

69:                                               ; preds = %53
  %70 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %71 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %74 = call i32 @gfs2_trans_add_meta(i32 %72, %struct.buffer_head* %73)
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %77 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = add nsw i32 %79, 1
  %81 = call %struct.gfs2_leaf* @new_leaf(%struct.inode* %75, %struct.buffer_head** %7, i32 %80)
  store %struct.gfs2_leaf* %81, %struct.gfs2_leaf** %10, align 8
  %82 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %83 = icmp ne %struct.gfs2_leaf* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %69
  %85 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %340

89:                                               ; preds = %69
  %90 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %20, align 4
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %97 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be16_to_cpu(i32 %98)
  %100 = sub nsw i32 %95, %99
  %101 = call i32 @BIT(i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %89
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = call i32 @GFS2_SB(%struct.inode* %107)
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %113 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be16_to_cpu(i32 %114)
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @fs_warn(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %115, i32 %116)
  %118 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %119 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %25, align 4
  br label %334

122:                                              ; preds = %89
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %17, align 4
  %125 = sub nsw i32 %124, 1
  %126 = xor i32 %125, -1
  %127 = and i32 %123, %126
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @GFP_NOFS, align 4
  %130 = call i32* @kmalloc_array(i32 %128, i32 4, i32 %129)
  store i32* %130, i32** %22, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %25, align 4
  br label %334

136:                                              ; preds = %122
  store i32 0, i32* %24, align 4
  br label %137

137:                                              ; preds = %148, %136
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @cpu_to_be64(i32 %142)
  %144 = load i32*, i32** %22, align 8
  %145 = load i32, i32* %24, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %24, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %24, align 4
  br label %137

151:                                              ; preds = %137
  %152 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %153 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %152)
  %154 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %155 = load i32*, i32** %22, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %154, i8* %156, i32 %160, i32 %164)
  store i32 %165, i32* %25, align 4
  %166 = load i32, i32* %25, align 4
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 4
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %151
  %173 = load i32, i32* %25, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %25, align 4
  br label %178

178:                                              ; preds = %175, %172
  br label %331

179:                                              ; preds = %151
  %180 = load i32*, i32** %22, align 8
  %181 = call i32 @kfree(i32* %180)
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %182, %183
  %185 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %186 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 32, %187
  %189 = shl i32 %184, %188
  store i32 %189, i32* %19, align 4
  %190 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %191 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 8
  %194 = bitcast i8* %193 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %194, %struct.gfs2_dirent** %12, align 8
  br label %195

195:                                              ; preds = %289, %179
  %196 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  store %struct.gfs2_dirent* %196, %struct.gfs2_dirent** %14, align 8
  %197 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %198 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %199 = call i64 @dirent_next(%struct.gfs2_inode* %197, %struct.buffer_head* %198, %struct.gfs2_dirent** %14)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %14, align 8
  br label %202

202:                                              ; preds = %201, %195
  %203 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %204 = call i32 @gfs2_dirent_sentinel(%struct.gfs2_dirent* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %285, label %206

206:                                              ; preds = %202
  %207 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %208 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @be32_to_cpu(i32 %209)
  %211 = load i32, i32* %19, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %285

213:                                              ; preds = %206
  %214 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %215 = bitcast %struct.gfs2_dirent* %214 to i8*
  %216 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %217 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = ptrtoint i8* %215 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %223 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 %221
  store i8* %225, i8** %27, align 8
  %226 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %227 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %226, i64 1
  %228 = bitcast %struct.gfs2_dirent* %227 to i8*
  %229 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 1
  store i8* %228, i8** %229, align 8
  %230 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %231 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @be16_to_cpu(i32 %232)
  %234 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 2
  store i32 %233, i32* %234, align 8
  %235 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %236 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @be32_to_cpu(i32 %237)
  %239 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 0
  store i32 %238, i32* %239, align 8
  %240 = load %struct.inode*, %struct.inode** %4, align 8
  %241 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %242 = load i8*, i8** %27, align 8
  %243 = call %struct.gfs2_dirent* @gfs2_dirent_split_alloc(%struct.inode* %240, %struct.buffer_head* %241, %struct.qstr* %26, i8* %242)
  store %struct.gfs2_dirent* %243, %struct.gfs2_dirent** %15, align 8
  %244 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %245 = call i64 @IS_ERR(%struct.gfs2_dirent* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %213
  %248 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %249 = call i32 @PTR_ERR(%struct.gfs2_dirent* %248)
  store i32 %249, i32* %25, align 4
  br label %292

250:                                              ; preds = %213
  %251 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %252 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %255 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %257 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %260 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 4
  %261 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %262 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %261, i32 0, i32 1
  %263 = call i32 @be16_add_cpu(i32* %262, i32 1)
  %264 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %265 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %266 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %13, align 8
  %267 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %268 = call i32 @dirent_del(%struct.gfs2_inode* %264, %struct.buffer_head* %265, %struct.gfs2_dirent* %266, %struct.gfs2_dirent* %267)
  %269 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %270 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %250
  %274 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %275 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %274)
  br label %276

276:                                              ; preds = %273, %250
  %277 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %278 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %277, i32 0, i32 1
  %279 = call i32 @be16_add_cpu(i32* %278, i32 -1)
  %280 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %13, align 8
  %281 = icmp ne %struct.gfs2_dirent* %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %276
  %283 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  store %struct.gfs2_dirent* %283, %struct.gfs2_dirent** %13, align 8
  br label %284

284:                                              ; preds = %282, %276
  br label %287

285:                                              ; preds = %206, %202
  %286 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  store %struct.gfs2_dirent* %286, %struct.gfs2_dirent** %13, align 8
  br label %287

287:                                              ; preds = %285, %284
  %288 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  store %struct.gfs2_dirent* %288, %struct.gfs2_dirent** %12, align 8
  br label %289

289:                                              ; preds = %287
  %290 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %291 = icmp ne %struct.gfs2_dirent* %290, null
  br i1 %291, label %195, label %292

292:                                              ; preds = %289, %247
  %293 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %294 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %297 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  %298 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %299 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %298, %struct.buffer_head** %9)
  store i32 %299, i32* %25, align 4
  %300 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %301 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %300, i32 0, i32 1
  %302 = call i32 @GFS2_SB(%struct.inode* %301)
  %303 = load i32, i32* %25, align 4
  %304 = icmp ne i32 %303, 0
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = call i32 @gfs2_assert_withdraw(i32 %302, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %325, label %309

309:                                              ; preds = %292
  %310 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %311 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %314 = call i32 @gfs2_trans_add_meta(i32 %312, %struct.buffer_head* %313)
  %315 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %316 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %315, i32 0, i32 1
  %317 = call i32 @gfs2_add_inode_blocks(%struct.inode* %316, i32 1)
  %318 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %319 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %320 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %318, i8* %321)
  %323 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %324 = call i32 @brelse(%struct.buffer_head* %323)
  br label %325

325:                                              ; preds = %309, %292
  %326 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %327 = call i32 @brelse(%struct.buffer_head* %326)
  %328 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %329 = call i32 @brelse(%struct.buffer_head* %328)
  %330 = load i32, i32* %25, align 4
  store i32 %330, i32* %3, align 4
  br label %340

331:                                              ; preds = %178
  %332 = load i32*, i32** %22, align 8
  %333 = call i32 @kfree(i32* %332)
  br label %334

334:                                              ; preds = %331, %133, %106
  %335 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %336 = call i32 @brelse(%struct.buffer_head* %335)
  %337 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %338 = call i32 @brelse(%struct.buffer_head* %337)
  %339 = load i32, i32* %25, align 4
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %334, %325, %84, %66, %51, %43
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @get_leaf_nr(%struct.gfs2_inode*, i32, i32*) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local %struct.gfs2_leaf* @new_leaf(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fs_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_write_data(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @dirent_next(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent**) #1

declare dso_local i32 @gfs2_dirent_sentinel(%struct.gfs2_dirent*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_split_alloc(%struct.inode*, %struct.buffer_head*, %struct.qstr*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @dirent_del(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent*, %struct.gfs2_dirent*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_assert_withdraw(i32, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
