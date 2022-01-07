; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32, i32, %struct.file* }
%struct.file = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iov_iter = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@OCFS2_MOUNT_COHERENCY_BUFFERED = common dso_local global i32 0, align 4
@IOCB_DIRECT = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ocfs2_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %19 = call i64 @iov_iter_count(%struct.iov_iter* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 3
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %10, align 8
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_super* @OCFS2_SB(i32 %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %12, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCFS2_MOUNT_COHERENCY_BUFFERED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %37 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = call i64 @i_size_read(%struct.inode* %42)
  %44 = icmp uge i64 %41, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %15, align 4
  %47 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %48 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IOCB_DIRECT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %16, align 4
  %55 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %56 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IOCB_NOWAIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %17, align 4
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = load %struct.file*, %struct.file** %10, align 8
  %65 = load %struct.file*, %struct.file** %10, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load %struct.inode*, %struct.inode** %11, align 8
  %70 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.file*, %struct.file** %10, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.file*, %struct.file** %10, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %88 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @trace_ocfs2_file_write_iter(%struct.inode* %63, %struct.file* %64, %struct.TYPE_9__* %68, i64 %72, i32 %79, i32 %86, i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %2
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %366

100:                                              ; preds = %94, %2
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %366

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %11, align 8
  %109 = call i32 @inode_trylock(%struct.inode* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %366

114:                                              ; preds = %107
  br label %118

115:                                              ; preds = %104
  %116 = load %struct.inode*, %struct.inode** %11, align 8
  %117 = call i32 @inode_lock(%struct.inode* %116)
  br label %118

118:                                              ; preds = %115, %114
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %124, %121, %118
  %128 = phi i1 [ true, %121 ], [ true, %118 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @ocfs2_try_rw_lock(%struct.inode* %133, i32 %134)
  store i32 %135, i32* %8, align 4
  br label %140

136:                                              ; preds = %127
  %137 = load %struct.inode*, %struct.inode** %11, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @ocfs2_rw_lock(%struct.inode* %137, i32 %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp ne i32 %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @mlog_errno(i32 %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %357

152:                                              ; preds = %140
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %155
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.inode*, %struct.inode** %11, align 8
  %163 = call i32 @ocfs2_try_inode_lock(%struct.inode* %162, i32* null, i32 1)
  store i32 %163, i32* %8, align 4
  br label %167

164:                                              ; preds = %158
  %165 = load %struct.inode*, %struct.inode** %11, align 8
  %166 = call i32 @ocfs2_inode_lock(%struct.inode* %165, i32* null, i32 1)
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp ne i32 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @mlog_errno(i32 %176)
  br label %178

178:                                              ; preds = %175, %170
  br label %341

179:                                              ; preds = %167
  %180 = load %struct.inode*, %struct.inode** %11, align 8
  %181 = call i32 @ocfs2_inode_unlock(%struct.inode* %180, i32 1)
  br label %182

182:                                              ; preds = %179, %155, %152
  %183 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %184 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %185 = call i32 @generic_write_checks(%struct.kiocb* %183, %struct.iov_iter* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @mlog_errno(i32 %192)
  br label %194

194:                                              ; preds = %191, %188
  br label %341

195:                                              ; preds = %182
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %9, align 8
  %198 = load %struct.file*, %struct.file** %10, align 8
  %199 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %200 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = load i32, i32* %17, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @ocfs2_prepare_inode_for_write(%struct.file* %198, i64 %201, i64 %202, i32 %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %195
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @EAGAIN, align 4
  %213 = sub nsw i32 0, %212
  %214 = icmp ne i32 %211, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @mlog_errno(i32 %216)
  br label %218

218:                                              ; preds = %215, %210
  br label %341

219:                                              ; preds = %195
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %219
  %223 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %224 = call i32 @is_sync_kiocb(%struct.kiocb* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = load %struct.inode*, %struct.inode** %11, align 8
  %228 = load i64, i64* %9, align 8
  %229 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %230 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @ocfs2_is_io_unaligned(%struct.inode* %227, i64 %228, i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %236 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %235, i32 0, i32 2
  %237 = call i8* @xchg(i32* %236, i8* null)
  store i8* %237, i8** %14, align 8
  br label %238

238:                                              ; preds = %234, %226, %222, %219
  %239 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb* %239, i32 %240)
  %242 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %243 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %244 = call i32 @__generic_file_write_iter(%struct.kiocb* %242, %struct.iov_iter* %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @EIOCBQUEUED, align 4
  %247 = sub nsw i32 0, %246
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %238
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  br label %253

253:                                              ; preds = %249, %238
  %254 = phi i1 [ false, %238 ], [ %252, %249 ]
  %255 = zext i1 %254 to i32
  %256 = call i32 @BUG_ON(i32 %255)
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @EIOCBQUEUED, align 4
  %259 = sub nsw i32 0, %258
  %260 = icmp eq i32 %257, %259
  br i1 %260, label %265, label %261

261:                                              ; preds = %253
  %262 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %263 = call i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %261, %253
  store i32 -1, i32* %6, align 4
  br label %266

266:                                              ; preds = %265, %261
  %267 = load i32, i32* %7, align 4
  %268 = icmp sle i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call i64 @unlikely(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  br label %341

273:                                              ; preds = %266
  %274 = load %struct.file*, %struct.file** %10, align 8
  %275 = getelementptr inbounds %struct.file, %struct.file* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @O_DSYNC, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load i32, i32* %16, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280, %273
  %284 = load %struct.inode*, %struct.inode** %11, align 8
  %285 = call i64 @IS_SYNC(%struct.inode* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %340

287:                                              ; preds = %283, %280
  %288 = load %struct.file*, %struct.file** %10, align 8
  %289 = getelementptr inbounds %struct.file, %struct.file* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %292 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = sub nsw i64 %293, %295
  %297 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %298 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %299, 1
  %301 = call i32 @filemap_fdatawrite_range(i32 %290, i64 %296, i64 %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %287
  %305 = load i32, i32* %8, align 4
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %304, %287
  %307 = load i32, i32* %8, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %321, label %309

309:                                              ; preds = %306
  %310 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %311 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %310, i32 0, i32 1
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @jbd2_journal_force_commit(i32 %314)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %309
  %319 = load i32, i32* %8, align 4
  store i32 %319, i32* %7, align 4
  br label %320

320:                                              ; preds = %318, %309
  br label %321

321:                                              ; preds = %320, %306
  %322 = load i32, i32* %8, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %339, label %324

324:                                              ; preds = %321
  %325 = load %struct.file*, %struct.file** %10, align 8
  %326 = getelementptr inbounds %struct.file, %struct.file* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %329 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = sub nsw i64 %330, %332
  %334 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %335 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = sub nsw i64 %336, 1
  %338 = call i32 @filemap_fdatawait_range(i32 %327, i64 %333, i64 %337)
  store i32 %338, i32* %8, align 4
  br label %339

339:                                              ; preds = %324, %321
  br label %340

340:                                              ; preds = %339, %283
  br label %341

341:                                              ; preds = %340, %272, %218, %194, %178
  %342 = load i8*, i8** %14, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %344, label %349

344:                                              ; preds = %341
  %345 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %346 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %345, i32 0, i32 2
  %347 = load i8*, i8** %14, align 8
  %348 = call i8* @xchg(i32* %346, i8* %347)
  br label %349

349:                                              ; preds = %344, %341
  %350 = load i32, i32* %6, align 4
  %351 = icmp ne i32 %350, -1
  br i1 %351, label %352, label %356

352:                                              ; preds = %349
  %353 = load %struct.inode*, %struct.inode** %11, align 8
  %354 = load i32, i32* %6, align 4
  %355 = call i32 @ocfs2_rw_unlock(%struct.inode* %353, i32 %354)
  br label %356

356:                                              ; preds = %352, %349
  br label %357

357:                                              ; preds = %356, %151
  %358 = load %struct.inode*, %struct.inode** %11, align 8
  %359 = call i32 @inode_unlock(%struct.inode* %358)
  %360 = load i32, i32* %7, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = load i32, i32* %7, align 4
  store i32 %363, i32* %8, align 4
  br label %364

364:                                              ; preds = %362, %357
  %365 = load i32, i32* %8, align 4
  store i32 %365, i32* %3, align 4
  br label %366

366:                                              ; preds = %364, %111, %103, %97
  %367 = load i32, i32* %3, align 4
  ret i32 %367
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_file_write_iter(%struct.inode*, %struct.file*, %struct.TYPE_9__*, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @inode_trylock(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_try_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_try_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @ocfs2_prepare_inode_for_write(%struct.file*, i64, i64, i32) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @ocfs2_is_io_unaligned(%struct.inode*, i64, i64) #1

declare dso_local i8* @xchg(i32*, i8*) #1

declare dso_local i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb*, i32) #1

declare dso_local i32 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i64, i64) #1

declare dso_local i32 @jbd2_journal_force_commit(i32) #1

declare dso_local i32 @filemap_fdatawait_range(i32, i64, i64) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
