; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_gc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64*, i64, i32, i32, %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.cp_control = type { i32 }
%struct.gc_inode_list = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }

@FG_GC = common dso_local global i64 0, align 8
@BG_GC = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@F2FS_DIRTY_DENTS = common dso_local global i32 0, align 4
@F2FS_DIRTY_IMETA = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i8* null, align 8
@MAX_SKIP_GC_COUNT = common dso_local global i32 0, align 4
@ALLOC_NEXT = common dso_local global i64 0, align 8
@FLUSH_DEVICE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_gc(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cp_control, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gc_inode_list, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @FG_GC, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @BG_GC, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %15, align 4
  %31 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %16, i32 0, i32 0
  %32 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %16, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i32 @RADIX_TREE_INIT(i32 %33, i32 %34)
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %16, i32 0, i32 1
  %37 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %16, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LIST_HEAD_INIT(i32 %38)
  store i32 %39, i32* %36, align 4
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @FG_GC, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %52 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %53 = call i32 @get_pages(%struct.f2fs_sb_info* %51, i32 %52)
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %55 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %56 = call i32 @get_pages(%struct.f2fs_sb_info* %54, i32 %55)
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %58 = load i32, i32* @F2FS_DIRTY_IMETA, align 4
  %59 = call i32 @get_pages(%struct.f2fs_sb_info* %57, i32 %58)
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %61 = call i32 @free_sections(%struct.f2fs_sb_info* %60)
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %63 = call i32 @free_segments(%struct.f2fs_sb_info* %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %65 = call i32 @reserved_segments(%struct.f2fs_sb_info* %64)
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %67 = call i64 @prefree_segments(%struct.f2fs_sb_info* %66)
  %68 = call i32 @trace_f2fs_gc_begin(%struct.TYPE_4__* %48, i32 %49, i32 %50, i32 %53, i32 %56, i32 %59, i32 %61, i32 %63, i32 %65, i64 %67)
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %70 = call i32 @__get_cp_reason(%struct.f2fs_sb_info* %69)
  %71 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %14, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %73 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %17, align 8
  store i64 %74, i64* %18, align 8
  br label %75

75:                                               ; preds = %248, %233, %27
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %76, i32 0, i32 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SB_ACTIVE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %268

91:                                               ; preds = %75
  %92 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %93 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %92)
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  br label %268

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @BG_GC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %99
  %105 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %106 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %105, i32 0, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %104
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %110 = call i64 @prefree_segments(%struct.f2fs_sb_info* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %114 = load i32, i32* @SBI_CP_DISABLED, align 4
  %115 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %119 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %118, %struct.cp_control* %14)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %268

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %112, %108
  %125 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %126 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %125, i32 0, i32 0)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i64, i64* @FG_GC, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %124
  br label %132

132:                                              ; preds = %131, %104, %99
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @BG_GC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %268

143:                                              ; preds = %137, %132
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @__get_victim(%struct.f2fs_sb_info* %144, i32* %8, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @ENODATA, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %13, align 4
  br label %268

151:                                              ; preds = %143
  %152 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @do_garbage_collect(%struct.f2fs_sb_info* %152, i32 %153, %struct.gc_inode_list* %16, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* @FG_GC, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %151
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %163 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166, %160, %151
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @FG_GC, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %169
  %178 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %179 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @FG_GC, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %17, align 8
  %185 = icmp ugt i64 %183, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %177
  %187 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %188 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186, %177
  %192 = load i32, i32* %19, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %19, align 4
  br label %194

194:                                              ; preds = %191, %186
  %195 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %196 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = load i64, i64* @FG_GC, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %17, align 8
  %201 = load i32, i32* %20, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %194, %169
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* @FG_GC, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i8*, i8** @NULL_SEGNO, align 8
  %213 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %214 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %208, %203
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br label %268

219:                                              ; preds = %215
  %220 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %220, i32 %221, i32 0)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %267

224:                                              ; preds = %219
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* @MAX_SKIP_GC_COUNT, align 4
  %227 = icmp ule i32 %225, %226
  br i1 %227, label %233, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %19, align 4
  %230 = mul i32 %229, 2
  %231 = load i32, i32* %20, align 4
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %228, %224
  %234 = load i8*, i8** @NULL_SEGNO, align 8
  %235 = ptrtoint i8* %234 to i32
  store i32 %235, i32* %8, align 4
  br label %75

236:                                              ; preds = %228
  %237 = load i64, i64* %18, align 8
  %238 = load i64, i64* %17, align 8
  %239 = icmp ult i64 %237, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = load i64, i64* %17, align 8
  %242 = load i64, i64* %18, align 8
  %243 = sub i64 %241, %242
  %244 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %245 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ugt i64 %243, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %250 = call i32 @f2fs_drop_inmem_pages_all(%struct.f2fs_sb_info* %249, i32 1)
  %251 = load i8*, i8** @NULL_SEGNO, align 8
  %252 = ptrtoint i8* %251 to i32
  store i32 %252, i32* %8, align 4
  br label %75

253:                                              ; preds = %240, %236
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* @FG_GC, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %253
  %259 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %260 = load i32, i32* @SBI_CP_DISABLED, align 4
  %261 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %258
  %264 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %265 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %264, %struct.cp_control* %14)
  store i32 %265, i32* %13, align 4
  br label %266

266:                                              ; preds = %263, %258, %253
  br label %267

267:                                              ; preds = %266, %219
  br label %268

268:                                              ; preds = %267, %218, %148, %140, %122, %96, %88
  %269 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %270 = call %struct.TYPE_5__* @SIT_I(%struct.f2fs_sb_info* %269)
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i64, i64* @ALLOC_NEXT, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32 0, i32* %274, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %277 = call %struct.TYPE_5__* @SIT_I(%struct.f2fs_sb_info* %276)
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* @FLUSH_DEVICE, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32 %275, i32* %281, align 4
  %282 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %283 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %282, i32 0, i32 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %289 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %290 = call i32 @get_pages(%struct.f2fs_sb_info* %288, i32 %289)
  %291 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %292 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %293 = call i32 @get_pages(%struct.f2fs_sb_info* %291, i32 %292)
  %294 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %295 = load i32, i32* @F2FS_DIRTY_IMETA, align 4
  %296 = call i32 @get_pages(%struct.f2fs_sb_info* %294, i32 %295)
  %297 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %298 = call i32 @free_sections(%struct.f2fs_sb_info* %297)
  %299 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %300 = call i32 @free_segments(%struct.f2fs_sb_info* %299)
  %301 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %302 = call i32 @reserved_segments(%struct.f2fs_sb_info* %301)
  %303 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %304 = call i64 @prefree_segments(%struct.f2fs_sb_info* %303)
  %305 = call i32 @trace_f2fs_gc_end(%struct.TYPE_4__* %284, i32 %285, i32 %286, i32 %287, i32 %290, i32 %293, i32 %296, i32 %298, i32 %300, i32 %302, i64 %304)
  %306 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %307 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %306, i32 0, i32 3
  %308 = call i32 @mutex_unlock(i32* %307)
  %309 = call i32 @put_gc_inode(%struct.gc_inode_list* %16)
  %310 = load i32, i32* %6, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %324

312:                                              ; preds = %268
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %312
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  br label %322

319:                                              ; preds = %315
  %320 = load i32, i32* @EAGAIN, align 4
  %321 = sub nsw i32 0, %320
  br label %322

322:                                              ; preds = %319, %318
  %323 = phi i32 [ 0, %318 ], [ %321, %319 ]
  store i32 %323, i32* %13, align 4
  br label %324

324:                                              ; preds = %322, %312, %268
  %325 = load i32, i32* %13, align 4
  ret i32 %325
}

declare dso_local i32 @RADIX_TREE_INIT(i32, i32) #1

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @trace_f2fs_gc_begin(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @free_sections(%struct.f2fs_sb_info*) #1

declare dso_local i32 @free_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @reserved_segments(%struct.f2fs_sb_info*) #1

declare dso_local i64 @prefree_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__get_cp_reason(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i64 @has_not_enough_free_secs(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @__get_victim(%struct.f2fs_sb_info*, i32*, i32) #1

declare dso_local i32 @do_garbage_collect(%struct.f2fs_sb_info*, i32, %struct.gc_inode_list*, i32) #1

declare dso_local i32 @f2fs_drop_inmem_pages_all(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_5__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @trace_f2fs_gc_end(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_gc_inode(%struct.gc_inode_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
