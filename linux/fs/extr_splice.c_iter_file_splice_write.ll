; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_iter_file_splice_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_iter_file_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, i64, %struct.pipe_buffer* }
%struct.pipe_buffer = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.splice_desc = type { i64, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.file* }
%struct.bio_vec = type { i64, i32, i32 }
%struct.iov_iter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.splice_desc, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio_vec*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.iov_iter, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pipe_buffer*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 0
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 1
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %34, %struct.file** %33, align 8
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.bio_vec* @kcalloc(i32 %38, i32 16, i32 %39)
  store %struct.bio_vec* %40, %struct.bio_vec** %14, align 8
  %41 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %42 = icmp ne %struct.bio_vec* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = call i64 @unlikely(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %5
  %49 = load i64, i64* @ENOMEM, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %6, align 8
  br label %283

51:                                               ; preds = %5
  %52 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %53 = call i32 @pipe_lock(%struct.pipe_inode_info* %52)
  %54 = call i32 @splice_from_pipe_begin(%struct.splice_desc* %12)
  br label %55

55:                                               ; preds = %266, %51
  %56 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %267

59:                                               ; preds = %55
  %60 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %61 = call i64 @splice_from_pipe_next(%struct.pipe_inode_info* %60, %struct.splice_desc* %12)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %267

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %68 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = call i64 @unlikely(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %65
  %76 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %77 = call i32 @kfree(%struct.bio_vec* %76)
  %78 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %79 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.bio_vec* @kcalloc(i32 %81, i32 16, i32 %82)
  store %struct.bio_vec* %83, %struct.bio_vec** %14, align 8
  %84 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %85 = icmp ne %struct.bio_vec* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %75
  %87 = load i64, i64* @ENOMEM, align 8
  %88 = sub nsw i64 0, %87
  store i64 %88, i64* %15, align 8
  br label %267

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %65
  %91 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %93 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %94 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %19, align 4
  br label %96

96:                                               ; preds = %170, %90
  %97 = load i64, i64* %17, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %102 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br label %105

105:                                              ; preds = %99, %96
  %106 = phi i1 [ false, %96 ], [ %104, %99 ]
  br i1 %106, label %107, label %175

107:                                              ; preds = %105
  %108 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %109 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %108, i32 0, i32 4
  %110 = load %struct.pipe_buffer*, %struct.pipe_buffer** %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %110, i64 %112
  store %struct.pipe_buffer* %113, %struct.pipe_buffer** %20, align 8
  %114 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %115 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %21, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %17, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i64, i64* %17, align 8
  store i64 %121, i64* %21, align 8
  br label %122

122:                                              ; preds = %120, %107
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %125 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %123, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 -1, i32* %19, align 4
  br label %130

130:                                              ; preds = %129, %122
  %131 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %132 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %133 = call i64 @pipe_buf_confirm(%struct.pipe_inode_info* %131, %struct.pipe_buffer* %132)
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i64 @unlikely(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* @ENODATA, align 8
  %140 = sub nsw i64 0, %139
  %141 = icmp eq i64 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i64 0, i64* %15, align 8
  br label %143

143:                                              ; preds = %142, %137
  br label %268

144:                                              ; preds = %130
  %145 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %146 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %148, i64 %150
  %152 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %151, i32 0, i32 2
  store i32 %147, i32* %152, align 4
  %153 = load i64, i64* %21, align 8
  %154 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %154, i64 %156
  %158 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %157, i32 0, i32 0
  store i64 %153, i64* %158, align 8
  %159 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %160 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %162, i64 %164
  %166 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 8
  %167 = load i64, i64* %21, align 8
  %168 = load i64, i64* %17, align 8
  %169 = sub i64 %168, %167
  store i64 %169, i64* %17, align 8
  br label %170

170:                                              ; preds = %144
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %19, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %19, align 4
  br label %96

175:                                              ; preds = %105
  %176 = load i32, i32* @WRITE, align 4
  %177 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %178 = load i32, i32* %18, align 4
  %179 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %17, align 8
  %182 = sub i64 %180, %181
  %183 = call i32 @iov_iter_bvec(%struct.iov_iter* %16, i32 %176, %struct.bio_vec* %177, i32 %178, i64 %182)
  %184 = load %struct.file*, %struct.file** %8, align 8
  %185 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 4
  %186 = call i64 @vfs_iter_write(%struct.file* %184, %struct.iov_iter* %16, i32* %185, i32 0)
  store i64 %186, i64* %15, align 8
  %187 = load i64, i64* %15, align 8
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %175
  br label %267

190:                                              ; preds = %175
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %191
  store i64 %194, i64* %192, align 8
  %195 = load i64, i64* %15, align 8
  %196 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub i64 %197, %195
  store i64 %198, i64* %196, align 8
  %199 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %9, align 8
  store i32 %200, i32* %201, align 4
  br label %202

202:                                              ; preds = %265, %190
  %203 = load i64, i64* %15, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %266

205:                                              ; preds = %202
  %206 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %207 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %206, i32 0, i32 4
  %208 = load %struct.pipe_buffer*, %struct.pipe_buffer** %207, align 8
  %209 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %210 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %208, i64 %212
  store %struct.pipe_buffer* %213, %struct.pipe_buffer** %22, align 8
  %214 = load i64, i64* %15, align 8
  %215 = load %struct.pipe_buffer*, %struct.pipe_buffer** %22, align 8
  %216 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp uge i64 %214, %217
  br i1 %218, label %219, label %252

219:                                              ; preds = %205
  %220 = load %struct.pipe_buffer*, %struct.pipe_buffer** %22, align 8
  %221 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %15, align 8
  %224 = sub i64 %223, %222
  store i64 %224, i64* %15, align 8
  %225 = load %struct.pipe_buffer*, %struct.pipe_buffer** %22, align 8
  %226 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %228 = load %struct.pipe_buffer*, %struct.pipe_buffer** %22, align 8
  %229 = call i32 @pipe_buf_release(%struct.pipe_inode_info* %227, %struct.pipe_buffer* %228)
  %230 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %231 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  %234 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %235 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, 1
  %238 = and i32 %233, %237
  %239 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %240 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %242 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %242, align 8
  %245 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %246 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %219
  %250 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 3
  store i32 1, i32* %250, align 8
  br label %251

251:                                              ; preds = %249, %219
  br label %265

252:                                              ; preds = %205
  %253 = load i64, i64* %15, align 8
  %254 = load %struct.pipe_buffer*, %struct.pipe_buffer** %22, align 8
  %255 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 8
  %260 = load i64, i64* %15, align 8
  %261 = load %struct.pipe_buffer*, %struct.pipe_buffer** %22, align 8
  %262 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = sub i64 %263, %260
  store i64 %264, i64* %262, align 8
  store i64 0, i64* %15, align 8
  br label %265

265:                                              ; preds = %252, %251
  br label %202

266:                                              ; preds = %202
  br label %55

267:                                              ; preds = %189, %86, %64, %55
  br label %268

268:                                              ; preds = %267, %143
  %269 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %270 = call i32 @kfree(%struct.bio_vec* %269)
  %271 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %272 = call i32 @splice_from_pipe_end(%struct.pipe_inode_info* %271, %struct.splice_desc* %12)
  %273 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %274 = call i32 @pipe_unlock(%struct.pipe_inode_info* %273)
  %275 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %268
  %279 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %12, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %15, align 8
  br label %281

281:                                              ; preds = %278, %268
  %282 = load i64, i64* %15, align 8
  store i64 %282, i64* %6, align 8
  br label %283

283:                                              ; preds = %281, %48
  %284 = load i64, i64* %6, align 8
  ret i64 %284
}

declare dso_local %struct.bio_vec* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @splice_from_pipe_begin(%struct.splice_desc*) #1

declare dso_local i64 @splice_from_pipe_next(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @kfree(%struct.bio_vec*) #1

declare dso_local i64 @pipe_buf_confirm(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i64) #1

declare dso_local i64 @vfs_iter_write(%struct.file*, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @pipe_buf_release(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i32 @splice_from_pipe_end(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
