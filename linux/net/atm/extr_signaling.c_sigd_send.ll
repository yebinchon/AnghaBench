; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_sigd_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_sigd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32, i32, i32, %struct.atm_vcc*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.sk_buff = type { i32, i64 }
%struct.atmsvc_msg = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d (0x%lx)\0A\00", align 1
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@AF_ATMSVC = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@ATM_E164_LEN = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"as_indicate!!!\0A\00", align 1
@as_reject = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"waking sk_sleep(sk) 0x%p\0A\00", align 1
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"bad message type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @sigd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigd_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atmsvc_msg*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.atmsvc_msg*
  store %struct.atmsvc_msg* %12, %struct.atmsvc_msg** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %17 = call %struct.sock* @sk_atm(%struct.atm_vcc* %16)
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 5
  %19 = call i32 @refcount_sub_and_test(i32 %15, i32* %18)
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %22 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %21, i32 0, i32 6
  %23 = bitcast i32* %22 to %struct.atm_vcc**
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %23, align 4
  store %struct.atm_vcc* %24, %struct.atm_vcc** %4, align 8
  %25 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %26 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %29 = ptrtoint %struct.atm_vcc* %28 to i64
  %30 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %29)
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %32 = call %struct.sock* @sk_atm(%struct.atm_vcc* %31)
  store %struct.sock* %32, %struct.sock** %8, align 8
  %33 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %34 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %236 [
    i32 128, label %36
    i32 131, label %153
    i32 130, label %172
    i32 133, label %211
    i32 129, label %221
    i32 134, label %225
    i32 132, label %225
  ]

36:                                               ; preds = %2
  %37 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %38 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ATM_VF_WAITING, align 4
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %45 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %44, i32 0, i32 0
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %36
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @AF_ATMSVC, align 4
  %64 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %65 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %68 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %73 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ATM_ESA_LEN, align 4
  %78 = call i32 @memcpy(i32* %71, i32 %76, i32 %77)
  %79 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %80 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %85 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ATM_E164_LEN, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @memcpy(i32* %83, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %62, %54, %36
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %94 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %93, i32 0, i32 5
  %95 = load %struct.atm_vcc*, %struct.atm_vcc** %94, align 8
  %96 = icmp ne %struct.atm_vcc* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %99 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %98, i32 0, i32 5
  %100 = load %struct.atm_vcc*, %struct.atm_vcc** %99, align 8
  br label %103

101:                                              ; preds = %92
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi %struct.atm_vcc* [ %100, %97 ], [ %102, %101 ]
  store %struct.atm_vcc* %104, %struct.atm_vcc** %7, align 8
  %105 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %106 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %111 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %103
  br label %243

115:                                              ; preds = %109
  %116 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %117 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %122 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %124 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %129 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %131 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %136 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %138 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %115
  %142 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %143 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141, %115
  %147 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %148 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %151 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %146, %141
  br label %243

153:                                              ; preds = %2
  %154 = load i32, i32* @ATM_VF_REGIS, align 4
  %155 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %156 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %155, i32 0, i32 0
  %157 = call i32 @clear_bit(i32 %154, i32* %156)
  %158 = load i32, i32* @ATM_VF_READY, align 4
  %159 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %160 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %159, i32 0, i32 0
  %161 = call i32 @clear_bit(i32 %158, i32* %160)
  %162 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %163 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 0, %164
  %166 = load %struct.sock*, %struct.sock** %8, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @ATM_VF_WAITING, align 4
  %169 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %170 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %169, i32 0, i32 0
  %171 = call i32 @clear_bit(i32 %168, i32* %170)
  br label %243

172:                                              ; preds = %2
  %173 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %174 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %173, i32 0, i32 2
  %175 = bitcast i32* %174 to %struct.atm_vcc**
  %176 = load %struct.atm_vcc*, %struct.atm_vcc** %175, align 4
  store %struct.atm_vcc* %176, %struct.atm_vcc** %4, align 8
  %177 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %178 = call %struct.sock* @sk_atm(%struct.atm_vcc* %177)
  store %struct.sock* %178, %struct.sock** %8, align 8
  %179 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %180 = load %struct.sock*, %struct.sock** %8, align 8
  %181 = call i32 @lock_sock(%struct.sock* %180)
  %182 = load %struct.sock*, %struct.sock** %8, align 8
  %183 = call i32 @sk_acceptq_is_full(%struct.sock* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %172
  %186 = load i32, i32* @as_reject, align 4
  %187 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %188 = call i32 @sigd_enq(i32* null, i32 %186, %struct.atm_vcc* %187, i32* null, i32* null)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = call i32 @dev_kfree_skb(%struct.sk_buff* %189)
  br label %208

191:                                              ; preds = %172
  %192 = load %struct.sock*, %struct.sock** %8, align 8
  %193 = getelementptr inbounds %struct.sock, %struct.sock* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = load %struct.sock*, %struct.sock** %8, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 2
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = call i32 @skb_queue_tail(i32* %197, %struct.sk_buff* %198)
  %200 = load %struct.sock*, %struct.sock** %8, align 8
  %201 = call i32 @sk_sleep(%struct.sock* %200)
  %202 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = load %struct.sock*, %struct.sock** %8, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 0
  %205 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %204, align 8
  %206 = load %struct.sock*, %struct.sock** %8, align 8
  %207 = call i32 %205(%struct.sock* %206)
  br label %208

208:                                              ; preds = %191, %185
  %209 = load %struct.sock*, %struct.sock** %8, align 8
  %210 = call i32 @release_sock(%struct.sock* %209)
  store i32 0, i32* %3, align 4
  br label %252

211:                                              ; preds = %2
  %212 = load i32, i32* @ATM_VF_RELEASED, align 4
  %213 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %214 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %213, i32 0, i32 0
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  %216 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %217 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %218 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @vcc_release_async(%struct.atm_vcc* %216, i32 %219)
  br label %249

221:                                              ; preds = %2
  %222 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %223 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %224 = call i32 @modify_qos(%struct.atm_vcc* %222, %struct.atmsvc_msg* %223)
  br label %243

225:                                              ; preds = %2, %2
  %226 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %227 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 0, %228
  %230 = load %struct.sock*, %struct.sock** %8, align 8
  %231 = getelementptr inbounds %struct.sock, %struct.sock* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @ATM_VF_WAITING, align 4
  %233 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %234 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %233, i32 0, i32 0
  %235 = call i32 @clear_bit(i32 %232, i32* %234)
  br label %243

236:                                              ; preds = %2
  %237 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %6, align 8
  %238 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @pr_alert(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %3, align 4
  br label %252

243:                                              ; preds = %225, %221, %153, %152, %114
  %244 = load %struct.sock*, %struct.sock** %8, align 8
  %245 = getelementptr inbounds %struct.sock, %struct.sock* %244, i32 0, i32 0
  %246 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %245, align 8
  %247 = load %struct.sock*, %struct.sock** %8, align 8
  %248 = call i32 %246(%struct.sock* %247)
  br label %249

249:                                              ; preds = %243, %211
  %250 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %251 = call i32 @dev_kfree_skb(%struct.sk_buff* %250)
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %249, %236, %208
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_sub_and_test(i32, i32*) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @sigd_enq(i32*, i32, %struct.atm_vcc*, i32*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vcc_release_async(%struct.atm_vcc*, i32) #1

declare dso_local i32 @modify_qos(%struct.atm_vcc*, %struct.atmsvc_msg*) #1

declare dso_local i32 @pr_alert(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
