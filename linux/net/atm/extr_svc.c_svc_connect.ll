; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }
%struct.atm_vcc = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.sockaddr_atmsvc }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@AF_ATMSVC = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@ATM_ANYCLASS = common dso_local global i32 0, align 4
@as_connect = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@sigd = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"*ABORT*\0A\00", align 1
@as_close = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @svc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sockaddr_atmsvc*, align 8
  %11 = alloca %struct.atm_vcc*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DEFINE_WAIT(i32 %13)
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %18)
  store %struct.atm_vcc* %19, %struct.atm_vcc** %11, align 8
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %290

30:                                               ; preds = %4
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %34 [
    i32 130, label %37
    i32 129, label %40
    i32 128, label %62
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %290

37:                                               ; preds = %30
  %38 = load i32, i32* @EISCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %290

40:                                               ; preds = %30
  %41 = load i32, i32* @ATM_VF_WAITING, align 4
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %43 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %42, i32 0, i32 4
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EALREADY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %290

49:                                               ; preds = %40
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  store i32 128, i32* %51, align 8
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.sock*, %struct.sock** %9, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %290

61:                                               ; preds = %49
  br label %253

62:                                               ; preds = %30
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = bitcast %struct.sockaddr* %63 to %struct.sockaddr_atmsvc*
  store %struct.sockaddr_atmsvc* %64, %struct.sockaddr_atmsvc** %10, align 8
  %65 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AF_ATMSVC, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EAFNOSUPPORT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %290

73:                                               ; preds = %62
  %74 = load i32, i32* @ATM_VF_HASQOS, align 4
  %75 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %76 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %75, i32 0, i32 4
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EBADFD, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %290

82:                                               ; preds = %73
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATM_ANYCLASS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %92 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATM_ANYCLASS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %82
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %290

101:                                              ; preds = %90
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %103 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %101
  %109 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %110 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %290

118:                                              ; preds = %108, %101
  %119 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %120 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %119, i32 0, i32 5
  %121 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %10, align 8
  %122 = bitcast %struct.sockaddr_atmsvc* %120 to i8*
  %123 = bitcast %struct.sockaddr_atmsvc* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i32, i32* @ATM_VF_WAITING, align 4
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %126 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %125, i32 0, i32 4
  %127 = call i32 @set_bit(i32 %124, i32* %126)
  %128 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %129 = load i32, i32* @as_connect, align 4
  %130 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %131 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %130, i32 0, i32 5
  %132 = call i32 @sigd_enq(%struct.atm_vcc* %128, i32 %129, i32* null, i32* null, %struct.sockaddr_atmsvc* %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @O_NONBLOCK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %118
  %138 = load %struct.socket*, %struct.socket** %5, align 8
  %139 = getelementptr inbounds %struct.socket, %struct.socket* %138, i32 0, i32 0
  store i32 129, i32* %139, align 8
  %140 = load i32, i32* @EINPROGRESS, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %12, align 4
  br label %290

142:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  %143 = load %struct.sock*, %struct.sock** %9, align 8
  %144 = call i32 @sk_sleep(%struct.sock* %143)
  %145 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %146 = call i32 @prepare_to_wait(i32 %144, i32* @wait, i32 %145)
  br label %147

147:                                              ; preds = %163, %142
  %148 = load i32, i32* @ATM_VF_WAITING, align 4
  %149 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %150 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %149, i32 0, i32 4
  %151 = call i32 @test_bit(i32 %148, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @sigd, align 4
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %153, %147
  %157 = phi i1 [ false, %147 ], [ %155, %153 ]
  br i1 %157, label %158, label %229

158:                                              ; preds = %156
  %159 = call i32 (...) @schedule()
  %160 = load i32, i32* @current, align 4
  %161 = call i32 @signal_pending(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.sock*, %struct.sock** %9, align 8
  %165 = call i32 @sk_sleep(%struct.sock* %164)
  %166 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %167 = call i32 @prepare_to_wait(i32 %165, i32* @wait, i32 %166)
  br label %147

168:                                              ; preds = %158
  %169 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %170 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %171 = load i32, i32* @as_close, align 4
  %172 = call i32 @sigd_enq(%struct.atm_vcc* %170, i32 %171, i32* null, i32* null, %struct.sockaddr_atmsvc* null)
  br label %173

173:                                              ; preds = %184, %168
  %174 = load i32, i32* @ATM_VF_WAITING, align 4
  %175 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %176 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %175, i32 0, i32 4
  %177 = call i32 @test_bit(i32 %174, i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i32, i32* @sigd, align 4
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %179, %173
  %183 = phi i1 [ false, %173 ], [ %181, %179 ]
  br i1 %183, label %184, label %190

184:                                              ; preds = %182
  %185 = load %struct.sock*, %struct.sock** %9, align 8
  %186 = call i32 @sk_sleep(%struct.sock* %185)
  %187 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %188 = call i32 @prepare_to_wait(i32 %186, i32* @wait, i32 %187)
  %189 = call i32 (...) @schedule()
  br label %173

190:                                              ; preds = %182
  %191 = load %struct.sock*, %struct.sock** %9, align 8
  %192 = getelementptr inbounds %struct.sock, %struct.sock* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %214, label %195

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %207, %195
  %197 = load i32, i32* @ATM_VF_RELEASED, align 4
  %198 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %199 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %198, i32 0, i32 4
  %200 = call i32 @test_bit(i32 %197, i32* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %196
  %203 = load i32, i32* @sigd, align 4
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %202, %196
  %206 = phi i1 [ false, %196 ], [ %204, %202 ]
  br i1 %206, label %207, label %213

207:                                              ; preds = %205
  %208 = load %struct.sock*, %struct.sock** %9, align 8
  %209 = call i32 @sk_sleep(%struct.sock* %208)
  %210 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %211 = call i32 @prepare_to_wait(i32 %209, i32* @wait, i32 %210)
  %212 = call i32 (...) @schedule()
  br label %196

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %190
  %215 = load i32, i32* @ATM_VF_REGIS, align 4
  %216 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %217 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %216, i32 0, i32 4
  %218 = call i32 @clear_bit(i32 %215, i32* %217)
  %219 = load i32, i32* @ATM_VF_RELEASED, align 4
  %220 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %221 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %220, i32 0, i32 4
  %222 = call i32 @clear_bit(i32 %219, i32* %221)
  %223 = load i32, i32* @ATM_VF_CLOSE, align 4
  %224 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %225 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %224, i32 0, i32 4
  %226 = call i32 @clear_bit(i32 %223, i32* %225)
  %227 = load i32, i32* @EINTR, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %12, align 4
  br label %229

229:                                              ; preds = %214, %156
  %230 = load %struct.sock*, %struct.sock** %9, align 8
  %231 = call i32 @sk_sleep(%struct.sock* %230)
  %232 = call i32 @finish_wait(i32 %231, i32* @wait)
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %290

236:                                              ; preds = %229
  %237 = load i32, i32* @sigd, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* @EUNATCH, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %12, align 4
  br label %290

242:                                              ; preds = %236
  %243 = load %struct.sock*, %struct.sock** %9, align 8
  %244 = getelementptr inbounds %struct.sock, %struct.sock* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load %struct.sock*, %struct.sock** %9, align 8
  %249 = getelementptr inbounds %struct.sock, %struct.sock* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %12, align 4
  br label %290

252:                                              ; preds = %242
  br label %253

253:                                              ; preds = %252, %61
  %254 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %255 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = call i32 @SELECT_TOP_PCR(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %256)
  %258 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %259 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  store i32 %257, i32* %261, align 8
  %262 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %263 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  store i64 0, i64* %265, align 8
  %266 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %267 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  store i64 0, i64* %269, align 8
  %270 = load %struct.socket*, %struct.socket** %5, align 8
  %271 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %272 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %275 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %278 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @vcc_connect(%struct.socket* %270, i32 %273, i32 %276, i32 %279)
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %253
  %284 = load %struct.socket*, %struct.socket** %5, align 8
  %285 = getelementptr inbounds %struct.socket, %struct.socket* %284, i32 0, i32 0
  store i32 130, i32* %285, align 8
  br label %289

286:                                              ; preds = %253
  %287 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %288 = call i32 @svc_disconnect(%struct.atm_vcc* %287)
  br label %289

289:                                              ; preds = %286, %283
  br label %290

290:                                              ; preds = %289, %247, %239, %235, %137, %115, %98, %79, %70, %56, %46, %37, %34, %27
  %291 = load %struct.sock*, %struct.sock** %9, align 8
  %292 = call i32 @release_sock(%struct.sock* %291)
  %293 = load i32, i32* %12, align 4
  ret i32 %293
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, %struct.sockaddr_atmsvc*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @SELECT_TOP_PCR(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @vcc_connect(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @svc_disconnect(%struct.atm_vcc*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
