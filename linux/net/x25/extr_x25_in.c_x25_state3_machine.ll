; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state3_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state3_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32* }
%struct.x25_sock = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@X25_EMODULUS = common dso_local global i32 0, align 4
@X25_SMODULUS = common dso_local global i32 0, align 4
@X25_RESET_CONFIRMATION = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@X25_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@X25_STATE_4 = common dso_local global i8* null, align 8
@X25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@X25_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@X25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@X25_INTERRUPT_FLAG = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown %02X in state 3\0A\00", align 1
@X25_STATE_2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32)* @x25_state3_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_state3_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.x25_sock* @x25_sk(%struct.sock* %21)
  store %struct.x25_sock* %22, %struct.x25_sock** %20, align 8
  %23 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %24 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %23, i32 0, i32 9
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i32, i32* @X25_EMODULUS, align 4
  br label %33

31:                                               ; preds = %8
  %32 = load i32, i32* @X25_SMODULUS, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %285 [
    i32 130, label %36
    i32 134, label %54
    i32 128, label %77
    i32 129, label %77
    i32 133, label %123
    i32 131, label %255
    i32 132, label %260
  ]

36:                                               ; preds = %33
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = load i32, i32* @X25_RESET_CONFIRMATION, align 4
  %39 = call i32 @x25_write_internal(%struct.sock* %37, i32 %38)
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = call i32 @x25_stop_timer(%struct.sock* %40)
  %42 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %43 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %45 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %44, i32 0, i32 8
  store i32 0, i32* %45, align 8
  %46 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %47 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %49 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %48, i32 0, i32 7
  store i32 0, i32* %49, align 4
  %50 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %51 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = call i32 @x25_requeue_frames(%struct.sock* %52)
  br label %288

54:                                               ; preds = %33
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 @pskb_may_pull(%struct.sk_buff* %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %290

61:                                               ; preds = %54
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = load i32, i32* @X25_CLEAR_CONFIRMATION, align 4
  %64 = call i32 @x25_write_internal(%struct.sock* %62, i32 %63)
  %65 = load %struct.sock*, %struct.sock** %10, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @x25_disconnect(%struct.sock* %65, i32 0, i32 %70, i32 %75)
  br label %288

77:                                               ; preds = %33, %33
  %78 = load %struct.sock*, %struct.sock** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @x25_validate_nr(%struct.sock* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = call i32 @x25_clear_queues(%struct.sock* %83)
  %85 = load %struct.sock*, %struct.sock** %10, align 8
  %86 = call i32 @x25_write_internal(%struct.sock* %85, i32 130)
  %87 = load %struct.sock*, %struct.sock** %10, align 8
  %88 = call i32 @x25_start_t22timer(%struct.sock* %87)
  %89 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %90 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %92 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %91, i32 0, i32 8
  store i32 0, i32* %92, align 8
  %93 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %94 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %96 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %95, i32 0, i32 7
  store i32 0, i32* %96, align 4
  %97 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %98 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = load i8*, i8** @X25_STATE_4, align 8
  %100 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %101 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %122

102:                                              ; preds = %77
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @x25_frames_acked(%struct.sock* %103, i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 129
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* @X25_COND_PEER_RX_BUSY, align 4
  %110 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %111 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %121

114:                                              ; preds = %102
  %115 = load i32, i32* @X25_COND_PEER_RX_BUSY, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %118 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %108
  br label %122

122:                                              ; preds = %121, %82
  br label %288

123:                                              ; preds = %33
  %124 = load i32, i32* @X25_COND_PEER_RX_BUSY, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %127 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %132 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %123
  %136 = load %struct.sock*, %struct.sock** %10, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @x25_validate_nr(%struct.sock* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %135, %123
  %141 = load %struct.sock*, %struct.sock** %10, align 8
  %142 = call i32 @x25_clear_queues(%struct.sock* %141)
  %143 = load %struct.sock*, %struct.sock** %10, align 8
  %144 = call i32 @x25_write_internal(%struct.sock* %143, i32 130)
  %145 = load %struct.sock*, %struct.sock** %10, align 8
  %146 = call i32 @x25_start_t22timer(%struct.sock* %145)
  %147 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %148 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %150 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %149, i32 0, i32 8
  store i32 0, i32* %150, align 8
  %151 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %152 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %154 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %153, i32 0, i32 7
  store i32 0, i32* %154, align 4
  %155 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %156 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  %157 = load i8*, i8** @X25_STATE_4, align 8
  %158 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %159 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  br label %288

160:                                              ; preds = %135
  %161 = load %struct.sock*, %struct.sock** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @x25_frames_acked(%struct.sock* %161, i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %166 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %220

169:                                              ; preds = %160
  %170 = load %struct.sock*, %struct.sock** %10, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @x25_queue_rx_frame(%struct.sock* %170, %struct.sk_buff* %171, i32 %172)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %177 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %19, align 4
  %181 = srem i32 %179, %180
  %182 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %183 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  store i32 1, i32* %18, align 4
  br label %204

184:                                              ; preds = %169
  %185 = load %struct.sock*, %struct.sock** %10, align 8
  %186 = call i32 @x25_clear_queues(%struct.sock* %185)
  %187 = load %struct.sock*, %struct.sock** %10, align 8
  %188 = call i32 @x25_write_internal(%struct.sock* %187, i32 130)
  %189 = load %struct.sock*, %struct.sock** %10, align 8
  %190 = call i32 @x25_start_t22timer(%struct.sock* %189)
  %191 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %192 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %194 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %193, i32 0, i32 8
  store i32 0, i32* %194, align 8
  %195 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %196 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  %197 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %198 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %197, i32 0, i32 7
  store i32 0, i32* %198, align 4
  %199 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %200 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %199, i32 0, i32 2
  store i32 0, i32* %200, align 8
  %201 = load i8*, i8** @X25_STATE_4, align 8
  %202 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %203 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  br label %288

204:                                              ; preds = %175
  %205 = load %struct.sock*, %struct.sock** %10, align 8
  %206 = getelementptr inbounds %struct.sock, %struct.sock* %205, i32 0, i32 1
  %207 = call i32 @atomic_read(i32* %206)
  %208 = load %struct.sock*, %struct.sock** %10, align 8
  %209 = getelementptr inbounds %struct.sock, %struct.sock* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 1
  %212 = icmp sgt i32 %207, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load i32, i32* @X25_COND_OWN_RX_BUSY, align 4
  %215 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %216 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %204
  br label %220

220:                                              ; preds = %219, %160
  %221 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %222 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %225 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %223, %227
  %229 = load i32, i32* %19, align 4
  %230 = srem i32 %228, %229
  %231 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %232 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %220
  %236 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %239 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 8
  %242 = load %struct.sock*, %struct.sock** %10, align 8
  %243 = call i32 @x25_stop_timer(%struct.sock* %242)
  %244 = load %struct.sock*, %struct.sock** %10, align 8
  %245 = call i32 @x25_enquiry_response(%struct.sock* %244)
  br label %254

246:                                              ; preds = %220
  %247 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %248 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %249 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load %struct.sock*, %struct.sock** %10, align 8
  %253 = call i32 @x25_start_t2timer(%struct.sock* %252)
  br label %254

254:                                              ; preds = %246, %235
  br label %288

255:                                              ; preds = %33
  %256 = load i32, i32* @X25_INTERRUPT_FLAG, align 4
  %257 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %258 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %257, i32 0, i32 5
  %259 = call i32 @clear_bit(i32 %256, i32* %258)
  br label %288

260:                                              ; preds = %33
  %261 = load %struct.sock*, %struct.sock** %10, align 8
  %262 = load i32, i32* @SOCK_URGINLINE, align 4
  %263 = call i32 @sock_flag(%struct.sock* %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = load %struct.sock*, %struct.sock** %10, align 8
  %267 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %268 = call i32 @sock_queue_rcv_skb(%struct.sock* %266, %struct.sk_buff* %267)
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  store i32 %271, i32* %18, align 4
  br label %280

272:                                              ; preds = %260
  %273 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %274 = load %struct.sock*, %struct.sock** %10, align 8
  %275 = call i32 @skb_set_owner_r(%struct.sk_buff* %273, %struct.sock* %274)
  %276 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %277 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %276, i32 0, i32 4
  %278 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %279 = call i32 @skb_queue_tail(i32* %277, %struct.sk_buff* %278)
  store i32 1, i32* %18, align 4
  br label %280

280:                                              ; preds = %272, %265
  %281 = load %struct.sock*, %struct.sock** %10, align 8
  %282 = call i32 @sk_send_sigurg(%struct.sock* %281)
  %283 = load %struct.sock*, %struct.sock** %10, align 8
  %284 = call i32 @x25_write_internal(%struct.sock* %283, i32 131)
  br label %288

285:                                              ; preds = %33
  %286 = load i32, i32* %12, align 4
  %287 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %285, %280, %255, %254, %184, %140, %122, %61, %36
  %289 = load i32, i32* %18, align 4
  store i32 %289, i32* %9, align 4
  br label %298

290:                                              ; preds = %60
  %291 = load %struct.sock*, %struct.sock** %10, align 8
  %292 = call i32 @x25_write_internal(%struct.sock* %291, i32 134)
  %293 = load i8*, i8** @X25_STATE_2, align 8
  %294 = load %struct.x25_sock*, %struct.x25_sock** %20, align 8
  %295 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %294, i32 0, i32 3
  store i8* %293, i8** %295, align 8
  %296 = load %struct.sock*, %struct.sock** %10, align 8
  %297 = call i32 @x25_start_t23timer(%struct.sock* %296)
  store i32 0, i32* %9, align 4
  br label %298

298:                                              ; preds = %290, %288
  %299 = load i32, i32* %9, align 4
  ret i32 %299
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @x25_requeue_frames(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @x25_validate_nr(%struct.sock*, i32) #1

declare dso_local i32 @x25_clear_queues(%struct.sock*) #1

declare dso_local i32 @x25_start_t22timer(%struct.sock*) #1

declare dso_local i32 @x25_frames_acked(%struct.sock*, i32) #1

declare dso_local i32 @x25_queue_rx_frame(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @x25_enquiry_response(%struct.sock*) #1

declare dso_local i32 @x25_start_t2timer(%struct.sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sk_send_sigurg(%struct.sock*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @x25_start_t23timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
