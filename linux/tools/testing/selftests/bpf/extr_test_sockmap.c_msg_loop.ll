; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_msg_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_msg_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_stats = type { i32, float, i32, i32 }
%struct.sockmap_options = type { i32, i32, i64, i64 }
%struct.msghdr = type { i32 }
%struct.timeval = type { i32, i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@peek_flag = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"send loop error:\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"send loop error expected: %i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@txmsg_pop = common dso_local global float 0.000000e+00, align 4
@txmsg_apply = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"recv start time: \00", align 1
@txmsg_cork = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"unexpected timeout: recved %zu/%f pop_total %f\0A\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"recv failed()\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"data verify msg failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"data verify msg_peek failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.msg_stats*, i32, %struct.sockmap_options*)* @msg_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_loop(i32 %0, i32 %1, i32 %2, i32 %3, %struct.msg_stats* %4, i32 %5, %struct.sockmap_options* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msg_stats*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockmap_options*, align 8
  %16 = alloca %struct.msghdr, align 4
  %17 = alloca %struct.msghdr, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.timeval, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.msg_stats* %4, %struct.msg_stats** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.sockmap_options* %6, %struct.sockmap_options** %15, align 8
  %34 = bitcast %struct.msghdr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  %35 = bitcast %struct.msghdr* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 4, i1 false)
  %36 = load i32, i32* @MSG_NOSIGNAL, align 4
  store i32 %36, i32* %20, align 4
  %37 = load %struct.sockmap_options*, %struct.sockmap_options** %15, align 8
  %38 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %21, align 4
  %40 = load %struct.sockmap_options*, %struct.sockmap_options** %15, align 8
  %41 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @msg_alloc_iov(%struct.msghdr* %16, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %7
  br label %302

51:                                               ; preds = %7
  %52 = load i64, i64* @peek_flag, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @msg_alloc_iov(%struct.msghdr* %17, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %302

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  %68 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %69 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %70 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %69, i32 0, i32 3
  %71 = call i32 @clock_gettime(i32 %68, i32* %70)
  store i32 0, i32* %19, align 4
  br label %72

72:                                               ; preds = %109, %67
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @sendmsg(i32 %77, %struct.msghdr* %16, i32 %78)
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %23, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %302

87:                                               ; preds = %82, %76
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %23, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %23, align 4
  %95 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* @errno, align 4
  br label %302

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %23, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %23, align 4
  %104 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %105 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %99
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %72

112:                                              ; preds = %72
  %113 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %114 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %115 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %114, i32 0, i32 2
  %116 = call i32 @clock_gettime(i32 %113, i32* %115)
  br label %298

117:                                              ; preds = %64
  store i32 0, i32* %25, align 4
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %27, align 4
  %119 = load i32, i32* @O_NONBLOCK, align 4
  store i32 %119, i32* %30, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %30, align 4
  %122 = call i32 @fcntl(i32 %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = sitofp i32 %123 to float
  %125 = load i32, i32* %11, align 4
  %126 = sitofp i32 %125 to float
  %127 = fmul float %124, %126
  %128 = load i32, i32* %12, align 4
  %129 = sitofp i32 %128 to float
  %130 = fmul float %127, %129
  store float %130, float* %28, align 4
  %131 = load float, float* @txmsg_pop, align 4
  store float %131, float* %29, align 4
  %132 = load i32, i32* @txmsg_apply, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %117
  %135 = load float, float* %28, align 4
  %136 = load i32, i32* @txmsg_apply, align 4
  %137 = sitofp i32 %136 to float
  %138 = fdiv float %135, %137
  %139 = load float, float* %29, align 4
  %140 = fmul float %139, %138
  store float %140, float* %29, align 4
  br label %141

141:                                              ; preds = %134, %117
  %142 = load float, float* %29, align 4
  %143 = load float, float* %28, align 4
  %144 = fsub float %143, %142
  store float %144, float* %28, align 4
  %145 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %146 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %147 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %146, i32 0, i32 3
  %148 = call i32 @clock_gettime(i32 %145, i32* %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %141
  br label %154

154:                                              ; preds = %292, %153
  %155 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %156 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %155, i32 0, i32 1
  %157 = load float, float* %156, align 4
  %158 = load float, float* %28, align 4
  %159 = fcmp olt float %157, %158
  br i1 %159, label %160, label %293

160:                                              ; preds = %154
  %161 = load i64, i64* @txmsg_cork, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0
  store i32 0, i32* %164, align 4
  %165 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  store i32 300000, i32* %165, align 4
  br label %169

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0
  store i32 3, i32* %167, align 4
  %168 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = call i32 @FD_ZERO(i32* %32)
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @FD_SET(i32 %171, i32* %32)
  %173 = load i32, i32* %27, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i32 @select(i32 %174, i32* %32, i32* null, i32* null, %struct.timeval* %31)
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %24, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %184

178:                                              ; preds = %169
  %179 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %181 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %182 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %181, i32 0, i32 2
  %183 = call i32 @clock_gettime(i32 %180, i32* %182)
  br label %302

184:                                              ; preds = %169
  %185 = load i32, i32* %24, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %207, label %187

187:                                              ; preds = %184
  %188 = load %struct.sockmap_options*, %struct.sockmap_options** %15, align 8
  %189 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load i32, i32* @stderr, align 4
  %194 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %195 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %194, i32 0, i32 1
  %196 = load float, float* %195, align 4
  %197 = load float, float* %28, align 4
  %198 = load float, float* %29, align 4
  %199 = call i32 @fprintf(i32 %193, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), float %196, float %197, float %198)
  br label %200

200:                                              ; preds = %192, %187
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* @errno, align 4
  %203 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %204 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %205 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %204, i32 0, i32 2
  %206 = call i32 @clock_gettime(i32 %203, i32* %205)
  br label %302

207:                                              ; preds = %184
  br label %208

208:                                              ; preds = %207
  store i32 0, i32* @errno, align 4
  %209 = load i64, i64* @peek_flag, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load i32, i32* @MSG_PEEK, align 4
  %213 = load i32, i32* %20, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @recvmsg(i32 %215, %struct.msghdr* %17, i32 %216)
  store i32 %217, i32* %25, align 4
  %218 = load i32, i32* %25, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %211
  %221 = load i32, i32* @errno, align 4
  %222 = load i32, i32* @EWOULDBLOCK, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %226 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %227 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %226, i32 0, i32 2
  %228 = call i32 @clock_gettime(i32 %225, i32* %227)
  br label %302

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229, %211
  store i32 0, i32* %20, align 4
  br label %231

231:                                              ; preds = %230, %208
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @recvmsg(i32 %232, %struct.msghdr* %16, i32 %233)
  store i32 %234, i32* %26, align 4
  %235 = load i32, i32* %26, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %231
  %238 = load i32, i32* @errno, align 4
  %239 = load i32, i32* @EWOULDBLOCK, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %243 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %244 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %243, i32 0, i32 2
  %245 = call i32 @clock_gettime(i32 %242, i32* %244)
  %246 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %302

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247, %231
  %249 = load i32, i32* %26, align 4
  %250 = sitofp i32 %249 to float
  %251 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %252 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %251, i32 0, i32 1
  %253 = load float, float* %252, align 4
  %254 = fadd float %253, %250
  store float %254, float* %252, align 4
  %255 = load i32, i32* %22, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %292

257:                                              ; preds = %248
  %258 = load %struct.sockmap_options*, %struct.sockmap_options** %15, align 8
  %259 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %12, align 4
  %265 = mul nsw i32 %263, %264
  br label %270

266:                                              ; preds = %257
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %10, align 4
  %269 = mul nsw i32 %267, %268
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi i32 [ %265, %262 ], [ %269, %266 ]
  store i32 %271, i32* %33, align 4
  %272 = load i32, i32* %26, align 4
  %273 = load i32, i32* %33, align 4
  %274 = call i32 @msg_verify_data(%struct.msghdr* %16, i32 %272, i32 %273)
  store i32 %274, i32* @errno, align 4
  %275 = load i32, i32* @errno, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %270
  %278 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %302

279:                                              ; preds = %270
  %280 = load i32, i32* %25, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %279
  %283 = load i32, i32* %25, align 4
  %284 = load i32, i32* %33, align 4
  %285 = call i32 @msg_verify_data(%struct.msghdr* %17, i32 %283, i32 %284)
  store i32 %285, i32* @errno, align 4
  %286 = load i32, i32* @errno, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %302

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290, %279
  br label %292

292:                                              ; preds = %291, %248
  br label %154

293:                                              ; preds = %154
  %294 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %295 = load %struct.msg_stats*, %struct.msg_stats** %13, align 8
  %296 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %295, i32 0, i32 2
  %297 = call i32 @clock_gettime(i32 %294, i32* %296)
  br label %298

298:                                              ; preds = %293, %112
  %299 = call i32 @msg_free_iov(%struct.msghdr* %16)
  %300 = call i32 @msg_free_iov(%struct.msghdr* %17)
  %301 = load i32, i32* %18, align 4
  store i32 %301, i32* %8, align 4
  br label %306

302:                                              ; preds = %288, %277, %241, %224, %200, %178, %93, %85, %62, %50
  %303 = call i32 @msg_free_iov(%struct.msghdr* %16)
  %304 = call i32 @msg_free_iov(%struct.msghdr* %17)
  %305 = load i32, i32* @errno, align 4
  store i32 %305, i32* %8, align 4
  br label %306

306:                                              ; preds = %302, %298
  %307 = load i32, i32* %8, align 4
  ret i32 %307
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @msg_alloc_iov(%struct.msghdr*, i32, i32, i32, i32) #2

declare dso_local i32 @clock_gettime(i32, i32*) #2

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @fcntl(i32, i32) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @fprintf(i32, i8*, float, float, float) #2

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #2

declare dso_local i32 @msg_verify_data(%struct.msghdr*, i32, i32) #2

declare dso_local i32 @msg_free_iov(%struct.msghdr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
