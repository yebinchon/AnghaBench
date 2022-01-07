; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.atmsvc_msg = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.atm_vcc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p -> %p\0A\00", align 1
@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@sigd = common dso_local global i64 0, align 8
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@as_reject = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@as_accept = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @svc_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.atmsvc_msg*, align 8
  %12 = alloca %struct.atm_vcc*, align 8
  %13 = alloca %struct.atm_vcc*, align 8
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %18)
  store %struct.atm_vcc* %19, %struct.atm_vcc** %12, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = call i32 @lock_sock(%struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call i32 @sock_net(%struct.sock* %22)
  %24 = load %struct.socket*, %struct.socket** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @svc_create(i32 %23, %struct.socket* %24, i32 0, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %246

30:                                               ; preds = %4
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %31)
  store %struct.atm_vcc* %32, %struct.atm_vcc** %13, align 8
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %34 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %33, %struct.atm_vcc* %34)
  br label %36

36:                                               ; preds = %30, %241
  %37 = load i32, i32* @wait, align 4
  %38 = call i32 @DEFINE_WAIT(i32 %37)
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = call i32 @sk_sleep(%struct.sock* %39)
  %41 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %42 = call i32 @prepare_to_wait(i32 %40, i32* @wait, i32 %41)
  br label %43

43:                                               ; preds = %91, %36
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 2
  %46 = call %struct.sk_buff* @skb_dequeue(i32* %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %10, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @sigd, align 8
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i1 [ false, %43 ], [ %50, %48 ]
  br i1 %52, label %53, label %96

53:                                               ; preds = %51
  %54 = load i32, i32* @ATM_VF_RELEASED, align 4
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 0
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %96

60:                                               ; preds = %53
  %61 = load i32, i32* @ATM_VF_CLOSE, align 4
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 0
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %96

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @O_NONBLOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %96

79:                                               ; preds = %71
  %80 = load %struct.sock*, %struct.sock** %9, align 8
  %81 = call i32 @release_sock(%struct.sock* %80)
  %82 = call i32 (...) @schedule()
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = call i32 @lock_sock(%struct.sock* %83)
  %85 = load i32, i32* @current, align 4
  %86 = call i64 @signal_pending(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @ERESTARTSYS, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %96

91:                                               ; preds = %79
  %92 = load %struct.sock*, %struct.sock** %9, align 8
  %93 = call i32 @sk_sleep(%struct.sock* %92)
  %94 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %95 = call i32 @prepare_to_wait(i32 %93, i32* @wait, i32 %94)
  br label %43

96:                                               ; preds = %88, %76, %66, %59, %51
  %97 = load %struct.sock*, %struct.sock** %9, align 8
  %98 = call i32 @sk_sleep(%struct.sock* %97)
  %99 = call i32 @finish_wait(i32 %98, i32* @wait)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %246

103:                                              ; preds = %96
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @EUNATCH, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  br label %246

109:                                              ; preds = %103
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.atmsvc_msg*
  store %struct.atmsvc_msg* %113, %struct.atmsvc_msg** %11, align 8
  %114 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %115 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %118 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @ATM_VF_HASQOS, align 4
  %120 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %121 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  %123 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %124 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %127 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %129 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %132 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %134 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %137 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.socket*, %struct.socket** %6, align 8
  %139 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %140 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %145 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %11, align 8
  %150 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @vcc_connect(%struct.socket* %138, i32 %143, i32 %148, i32 %153)
  store i32 %154, i32* %14, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = call i32 @dev_kfree_skb(%struct.sk_buff* %155)
  %157 = load %struct.sock*, %struct.sock** %9, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %109
  %164 = load i32, i32* @as_reject, align 4
  %165 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %166 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %167 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %166, i32 0, i32 1
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @sigd_enq2(i32* null, i32 %164, %struct.atm_vcc* %165, i32* null, i32* null, i32* %167, i32 %168)
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @EAGAIN, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load i32, i32* @EBUSY, align 4
  %176 = sub nsw i32 0, %175
  br label %179

177:                                              ; preds = %163
  %178 = load i32, i32* %14, align 4
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi i32 [ %176, %174 ], [ %178, %177 ]
  store i32 %180, i32* %14, align 4
  br label %246

181:                                              ; preds = %109
  %182 = load i32, i32* @ATM_VF_WAITING, align 4
  %183 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %184 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %183, i32 0, i32 0
  %185 = call i32 @set_bit(i32 %182, i32* %184)
  %186 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %187 = load i32, i32* @as_accept, align 4
  %188 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  %189 = call i32 @sigd_enq(%struct.atm_vcc* %186, i32 %187, %struct.atm_vcc* %188, i32* null, i32* null)
  br label %190

190:                                              ; preds = %205, %181
  %191 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %192 = call %struct.sock* @sk_atm(%struct.atm_vcc* %191)
  %193 = call i32 @sk_sleep(%struct.sock* %192)
  %194 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %195 = call i32 @prepare_to_wait(i32 %193, i32* @wait, i32 %194)
  %196 = load i32, i32* @ATM_VF_WAITING, align 4
  %197 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %198 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %197, i32 0, i32 0
  %199 = call i64 @test_bit(i32 %196, i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %190
  %202 = load i64, i64* @sigd, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %201, %190
  br label %211

205:                                              ; preds = %201
  %206 = load %struct.sock*, %struct.sock** %9, align 8
  %207 = call i32 @release_sock(%struct.sock* %206)
  %208 = call i32 (...) @schedule()
  %209 = load %struct.sock*, %struct.sock** %9, align 8
  %210 = call i32 @lock_sock(%struct.sock* %209)
  br label %190

211:                                              ; preds = %204
  %212 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %213 = call %struct.sock* @sk_atm(%struct.atm_vcc* %212)
  %214 = call i32 @sk_sleep(%struct.sock* %213)
  %215 = call i32 @finish_wait(i32 %214, i32* @wait)
  %216 = load i64, i64* @sigd, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %211
  %219 = load i32, i32* @EUNATCH, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %14, align 4
  br label %246

221:                                              ; preds = %211
  %222 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %223 = call %struct.sock* @sk_atm(%struct.atm_vcc* %222)
  %224 = getelementptr inbounds %struct.sock, %struct.sock* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  br label %242

228:                                              ; preds = %221
  %229 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %230 = call %struct.sock* @sk_atm(%struct.atm_vcc* %229)
  %231 = getelementptr inbounds %struct.sock, %struct.sock* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @ERESTARTSYS, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %228
  %236 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %237 = call %struct.sock* @sk_atm(%struct.atm_vcc* %236)
  %238 = getelementptr inbounds %struct.sock, %struct.sock* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %14, align 4
  br label %246

241:                                              ; preds = %228
  br label %36

242:                                              ; preds = %227
  %243 = load i32, i32* @SS_CONNECTED, align 4
  %244 = load %struct.socket*, %struct.socket** %6, align 8
  %245 = getelementptr inbounds %struct.socket, %struct.socket* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %242, %235, %218, %179, %106, %102, %29
  %247 = load %struct.sock*, %struct.sock** %9, align 8
  %248 = call i32 @release_sock(%struct.sock* %247)
  %249 = load i32, i32* %14, align 4
  ret i32 %249
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @svc_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*, %struct.atm_vcc*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vcc_connect(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sigd_enq2(i32*, i32, %struct.atm_vcc*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, %struct.atm_vcc*, i32*, i32*) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
