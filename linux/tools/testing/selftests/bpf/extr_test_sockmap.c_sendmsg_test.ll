; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_sendmsg_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_sendmsg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.msg_stats = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@errno = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@p2 = common dso_local global i32 0, align 4
@ktls = common dso_local global i64 0, align 8
@txmsg_redir = common dso_local global i64 0, align 8
@txmsg_ingress = common dso_local global i64 0, align 8
@c1 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"msg_loop_rx: iov_count %i iov_buf %i cnt %i err %i\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"rx_sendmsg: TX: %zuB %fB/s %fGB/s RX: %zuB %fB/s %fGB/s %s\0A\00", align 1
@giga = common dso_local global float 0.000000e+00, align 4
@peek_flag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"(peek_msg)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@txmsg_cork = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"msg_loop_rx: \00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"msg_loop_tx: iov_count %i iov_buf %i cnt %i err %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"tx_sendmsg: TX: %zuB %fB/s %f GB/s RX: %zuB %fB/s %fGB/s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"msg_loop_tx: \00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"rx thread exited with err %d. \00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"tx thread exited with err %d. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockmap_options*)* @sendmsg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendmsg_test(%struct.sockmap_options* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockmap_options*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msg_stats, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sockmap_options* %0, %struct.sockmap_options** %3, align 8
  store float 0.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %9, align 4
  %16 = bitcast %struct.msg_stats* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %18 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %21 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %24 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  store i32 0, i32* @errno, align 4
  %26 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %27 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @p1, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @p2, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i64, i64* @ktls, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load i64, i64* @txmsg_redir, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i64, i64* @txmsg_redir, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i64, i64* @txmsg_ingress, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43, %37
  %47 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %48 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @sockmap_init_ktls(i64 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %287

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %43, %40
  %58 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %59 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @c1, align 4
  %62 = call i32 @sockmap_init_ktls(i64 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %287

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %34
  %69 = call i32 (...) @fork()
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %156

72:                                               ; preds = %68
  %73 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %74 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @exit(i32 0) #4
  unreachable

79:                                               ; preds = %72
  %80 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %81 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %91 = call i32 @msg_loop(i32 %86, i32 %87, i32 %88, i32 %89, %struct.msg_stats* %10, i32 0, %struct.sockmap_options* %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %93 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %85
  %104 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = call float @sentBps(%struct.msg_stats* byval(%struct.msg_stats) align 8 %10)
  store float %113, float* %4, align 4
  %114 = call float @recvdBps(%struct.msg_stats* byval(%struct.msg_stats) align 8 %10)
  store float %114, float* %5, align 4
  br label %115

115:                                              ; preds = %112, %103
  %116 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %117 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load i32, i32* @stdout, align 4
  %122 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load float, float* %4, align 4
  %125 = fpext float %124 to double
  %126 = load float, float* %4, align 4
  %127 = load float, float* @giga, align 4
  %128 = fdiv float %126, %127
  %129 = fpext float %128 to double
  %130 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load float, float* %5, align 4
  %133 = fpext float %132 to double
  %134 = load float, float* %5, align 4
  %135 = load float, float* @giga, align 4
  %136 = fdiv float %134, %135
  %137 = fpext float %136 to double
  %138 = load i64, i64* @peek_flag, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %142 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %123, double %125, double %129, i32 %131, double %133, double %137, i8* %141)
  br label %143

143:                                              ; preds = %120, %115
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i64, i64* @txmsg_cork, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %149, %146, %143
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 0
  %155 = call i32 @exit(i32 %154) #4
  unreachable

156:                                              ; preds = %68
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @errno, align 4
  store i32 %161, i32* %2, align 4
  br label %287

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162
  %164 = call i32 (...) @fork()
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %237

167:                                              ; preds = %163
  %168 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %169 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, i32* @c1, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %177 = call i32 @msg_loop_sendpage(i32 %173, i32 %174, i32 %175, %struct.msg_stats* %10, %struct.sockmap_options* %176)
  store i32 %177, i32* %9, align 4
  br label %185

178:                                              ; preds = %167
  %179 = load i32, i32* @c1, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %184 = call i32 @msg_loop(i32 %179, i32 %180, i32 %181, i32 %182, %struct.msg_stats* %10, i32 1, %struct.sockmap_options* %183)
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %178, %172
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* @stderr, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %190, i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %188, %185
  %196 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %198, %201
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = call float @sentBps(%struct.msg_stats* byval(%struct.msg_stats) align 8 %10)
  store float %205, float* %4, align 4
  %206 = call float @recvdBps(%struct.msg_stats* byval(%struct.msg_stats) align 8 %10)
  store float %206, float* %5, align 4
  br label %207

207:                                              ; preds = %204, %195
  %208 = load %struct.sockmap_options*, %struct.sockmap_options** %3, align 8
  %209 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %207
  %213 = load i32, i32* @stdout, align 4
  %214 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load float, float* %4, align 4
  %217 = fpext float %216 to double
  %218 = load float, float* %4, align 4
  %219 = load float, float* @giga, align 4
  %220 = fdiv float %218, %219
  %221 = fpext float %220 to double
  %222 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %10, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load float, float* %5, align 4
  %225 = fpext float %224 to double
  %226 = load float, float* %5, align 4
  %227 = load float, float* @giga, align 4
  %228 = fdiv float %226, %227
  %229 = fpext float %228 to double
  %230 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %215, double %217, double %221, i32 %223, double %225, double %229)
  br label %231

231:                                              ; preds = %212, %207
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 1, i32 0
  %236 = call i32 @exit(i32 %235) #4
  unreachable

237:                                              ; preds = %163
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %242 = load i32, i32* @errno, align 4
  store i32 %242, i32* %2, align 4
  br label %287

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @waitpid(i32 %245, i32* %13, i32 0)
  %247 = load i32, i32* %8, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @waitpid(i32 %251, i32* %14, i32 0)
  %253 = load i32, i32* %7, align 4
  %254 = icmp eq i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load i32, i32* %13, align 4
  %258 = call i64 @WIFEXITED(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %244
  %261 = load i32, i32* %13, align 4
  %262 = call i32 @WEXITSTATUS(i32 %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load i32, i32* @stderr, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  br label %285

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269, %244
  %271 = load i32, i32* %14, align 4
  %272 = call i64 @WIFEXITED(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %270
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @WEXITSTATUS(i32 %275)
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load i32, i32* @stderr, align 4
  %281 = load i32, i32* %9, align 4
  %282 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %279, %274
  br label %284

284:                                              ; preds = %283, %270
  br label %285

285:                                              ; preds = %284, %265
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %285, %240, %159, %65, %54
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sockmap_init_ktls(i64, i32) #2

declare dso_local i32 @fork(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @msg_loop(i32, i32, i32, i32, %struct.msg_stats*, i32, %struct.sockmap_options*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local float @sentBps(%struct.msg_stats* byval(%struct.msg_stats) align 8) #2

declare dso_local float @recvdBps(%struct.msg_stats* byval(%struct.msg_stats) align 8) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @msg_loop_sendpage(i32, i32, i32, %struct.msg_stats*, %struct.sockmap_options*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i64 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
