; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_search_super_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_search_super_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i32, i32, i8*, i8*, i8*, i8*, i64, i8*, i8*, i64, i32, i32 }
%struct.nilfs_recovery_info = type { i8*, i32, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i64 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_summary = type { i32, i32, i32, i32 }

@segments = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CONSISTENCY = common dso_local global i32 0, align 4
@NILFS_SS_SR = common dso_local global i32 0, align 4
@NILFS_SS_LOGBGN = common dso_local global i32 0, align 4
@NILFS_SS_LOGEND = common dso_local global i32 0, align 4
@NILFS_RECOVERY_SR_UPDATED = common dso_local global i32 0, align 4
@NILFS_VALID_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_search_super_root(%struct.the_nilfs* %0, %struct.nilfs_recovery_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.nilfs_recovery_info*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_segment_summary*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %4, align 8
  store %struct.nilfs_recovery_info* %1, %struct.nilfs_recovery_info** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.nilfs_segment_summary* null, %struct.nilfs_segment_summary** %7, align 8
  store i64 0, i64* %10, align 8
  store i8* null, i8** %19, align 8
  %24 = load i32, i32* @segments, align 4
  %25 = call i32 @LIST_HEAD(i32 %24)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %17, align 8
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %33 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %20, align 8
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @nilfs_get_segnum_of_block(%struct.the_nilfs* %35, i64 %36)
  store i8* %37, i8** %18, align 8
  %38 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %38, i8* %39, i64* %11, i64* %12)
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %46, %2
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %48 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %13, align 8
  %52 = trunc i64 %50 to i32
  %53 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %54 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @__breadahead(i32 %49, i32 %52, i32 %55)
  br label %42

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %268, %249, %57
  %59 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %60 = call i32 @brelse(%struct.buffer_head* %59)
  %61 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %61, i32* %23, align 4
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call %struct.buffer_head* @nilfs_read_log_header(%struct.the_nilfs* %62, i64 %63, %struct.nilfs_segment_summary** %7)
  store %struct.buffer_head* %64, %struct.buffer_head** %6, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %66 = icmp ne %struct.buffer_head* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %295

68:                                               ; preds = %58
  %69 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %7, align 8
  %73 = call i32 @nilfs_validate_log(%struct.the_nilfs* %69, i8* %70, %struct.buffer_head* %71, %struct.nilfs_segment_summary* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %295

81:                                               ; preds = %76
  br label %251

82:                                               ; preds = %68
  %83 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %7, align 8
  %84 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le32_to_cpu(i32 %85)
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %87, %88
  %90 = sub i64 %89, 1
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp sgt i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @NILFS_SEG_FAIL_CONSISTENCY, align 4
  store i32 %98, i32* %23, align 4
  br label %251

99:                                               ; preds = %82
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %102 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %101, i32 0, i32 10
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %105 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %108 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %110 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %7, align 8
  %111 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le64_to_cpu(i32 %112)
  %114 = call i8* @nilfs_get_segnum_of_block(%struct.the_nilfs* %109, i64 %113)
  store i8* %114, i8** %19, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %117 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  store i32 0, i32* %21, align 4
  %118 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %7, align 8
  %119 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @NILFS_SS_SR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %99
  %127 = load i32, i32* %22, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @NILFS_SEG_FAIL_CONSISTENCY, align 4
  store i32 %130, i32* %23, align 4
  br label %295

131:                                              ; preds = %126, %99
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %11, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %137 = load i8*, i8** %19, align 8
  %138 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %136, i8* %137, i64* %13, i64* %14)
  br label %139

139:                                              ; preds = %143, %135
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp sle i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %145 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %13, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %13, align 8
  %149 = trunc i64 %147 to i32
  %150 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %151 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @__breadahead(i32 %146, i32 %149, i32 %152)
  br label %139

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %131
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* @NILFS_SS_SR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %187, label %160

160:                                              ; preds = %155
  %161 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %162 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @NILFS_SS_LOGBGN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %173 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  %174 = load i8*, i8** %17, align 8
  %175 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %176 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %175, i32 0, i32 6
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %170, %165, %160
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @NILFS_SS_LOGEND, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i64, i64* %8, align 8
  %184 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %185 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %177
  br label %242

187:                                              ; preds = %155
  %188 = load i8*, i8** %20, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %20, align 8
  %190 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %191 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %190, i32 0, i32 0
  store i8* %188, i8** %191, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %194 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %193, i32 0, i32 5
  store i64 %192, i64* %194, align 8
  %195 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %196 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  %197 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %198 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  %199 = call i32 @nilfs_dispose_segment_list(i32* @segments)
  %200 = load i64, i64* %8, align 8
  store i64 %200, i64* %10, align 8
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* %15, align 8
  %203 = add i64 %201, %202
  %204 = load i64, i64* %11, align 8
  %205 = sub i64 %203, %204
  %206 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %207 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %206, i32 0, i32 10
  store i64 %205, i64* %207, align 8
  %208 = load i8*, i8** %17, align 8
  %209 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %210 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %209, i32 0, i32 4
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** %18, align 8
  %212 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %213 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %212, i32 0, i32 9
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %216 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %215, i32 0, i32 8
  store i8* %214, i8** %216, align 8
  %217 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %7, align 8
  %218 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @le64_to_cpu(i32 %219)
  %221 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %222 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %221, i32 0, i32 7
  store i64 %220, i64* %222, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %225 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %224, i32 0, i32 6
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* %22, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %187
  %229 = load i32, i32* @NILFS_RECOVERY_SR_UPDATED, align 4
  %230 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %231 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  br label %241

232:                                              ; preds = %187
  %233 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %234 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @NILFS_VALID_FS, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %276

240:                                              ; preds = %232
  store i32 1, i32* %22, align 4
  br label %241

241:                                              ; preds = %240, %228
  br label %242

242:                                              ; preds = %241, %186
  %243 = load i64, i64* %15, align 8
  %244 = load i64, i64* %8, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %8, align 8
  %246 = load i64, i64* %8, align 8
  %247 = load i64, i64* %12, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %58

250:                                              ; preds = %242
  br label %256

251:                                              ; preds = %97, %81
  %252 = load i32, i32* %22, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  br label %295

255:                                              ; preds = %251
  br label %256

256:                                              ; preds = %255, %250
  %257 = load i32, i32* %21, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %21, align 4
  %259 = icmp ne i32 %257, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %276

261:                                              ; preds = %256
  %262 = load i8*, i8** %18, align 8
  %263 = call i32 @nilfs_segment_list_add(i32* @segments, i8* %262)
  store i32 %263, i32* %23, align 4
  %264 = load i32, i32* %23, align 4
  %265 = call i64 @unlikely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %295

268:                                              ; preds = %261
  %269 = load i8*, i8** %17, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %17, align 8
  %271 = load i8*, i8** %19, align 8
  store i8* %271, i8** %18, align 8
  %272 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %273 = load i8*, i8** %18, align 8
  %274 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %272, i8* %273, i64* %11, i64* %12)
  %275 = load i64, i64* %11, align 8
  store i64 %275, i64* %8, align 8
  br label %58

276:                                              ; preds = %260, %239
  %277 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %278 = call i32 @brelse(%struct.buffer_head* %277)
  %279 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %280 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %279, i32 0, i32 1
  %281 = call i32 @list_splice_tail(i32* @segments, i32* %280)
  %282 = load i64, i64* %10, align 8
  %283 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %284 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  %285 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %286 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %285, i32 0, i32 4
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %289 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %288, i32 0, i32 5
  store i8* %287, i8** %289, align 8
  %290 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %5, align 8
  %291 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %294 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  store i32 0, i32* %3, align 4
  br label %311

295:                                              ; preds = %267, %254, %129, %80, %67
  %296 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %297 = call i32 @brelse(%struct.buffer_head* %296)
  %298 = call i32 @nilfs_dispose_segment_list(i32* @segments)
  %299 = load i32, i32* %23, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i32, i32* %23, align 4
  br label %309

303:                                              ; preds = %295
  %304 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %305 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %23, align 4
  %308 = call i32 @nilfs_warn_segment_error(i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %303, %301
  %310 = phi i32 [ %302, %301 ], [ %308, %303 ]
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %276
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i8* @nilfs_get_segnum_of_block(%struct.the_nilfs*, i64) #1

declare dso_local i32 @nilfs_get_segment_range(%struct.the_nilfs*, i8*, i64*, i64*) #1

declare dso_local i32 @__breadahead(i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @nilfs_read_log_header(%struct.the_nilfs*, i64, %struct.nilfs_segment_summary**) #1

declare dso_local i32 @nilfs_validate_log(%struct.the_nilfs*, i8*, %struct.buffer_head*, %struct.nilfs_segment_summary*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @nilfs_dispose_segment_list(i32*) #1

declare dso_local i32 @nilfs_segment_list_add(i32*, i8*) #1

declare dso_local i32 @list_splice_tail(i32*, i32*) #1

declare dso_local i32 @nilfs_warn_segment_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
