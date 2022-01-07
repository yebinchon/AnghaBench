; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_std_in.c_ax25_std_state3_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_std_in.c_ax25_std_state3_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.sk_buff = type { i32 }

@AX25_MODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_EMODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_EWINDOW = common dso_local global i64 0, align 8
@AX25_UA = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@AX25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_STATE_1 = common dso_local global i8* null, align 8
@AX25_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@AX25_COND_REJECT = common dso_local global i32 0, align 4
@AX25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.sk_buff*, i32, i32, i32, i32, i32)* @ax25_std_state3_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_std_state3_machine(%struct.TYPE_21__* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %303 [
    i32 129, label %17
    i32 128, label %17
    i32 137, label %72
    i32 136, label %80
    i32 130, label %84
    i32 131, label %84
    i32 132, label %126
    i32 134, label %166
    i32 135, label %297
    i32 133, label %297
  ]

17:                                               ; preds = %7, %7
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* @AX25_MODULUS, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  br label %48

34:                                               ; preds = %17
  %35 = load i32, i32* @AX25_EMODULUS, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @AX25_VALUES_EWINDOW, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %34, %20
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = load i32, i32* @AX25_UA, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @AX25_RESPONSE, align 4
  %53 = call i32 @ax25_send_control(%struct.TYPE_21__* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %55 = call i32 @ax25_stop_t1timer(%struct.TYPE_21__* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = call i32 @ax25_stop_t2timer(%struct.TYPE_21__* %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = call i32 @ax25_start_t3timer(%struct.TYPE_21__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = call i32 @ax25_start_idletimer(%struct.TYPE_21__* %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 5
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = call i32 @ax25_requeue_frames(%struct.TYPE_21__* %70)
  br label %304

72:                                               ; preds = %7
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = load i32, i32* @AX25_UA, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @AX25_RESPONSE, align 4
  %77 = call i32 @ax25_send_control(%struct.TYPE_21__* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %79 = call i32 @ax25_disconnect(%struct.TYPE_21__* %78, i32 0)
  br label %304

80:                                               ; preds = %7
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %82 = load i32, i32* @ECONNRESET, align 4
  %83 = call i32 @ax25_disconnect(%struct.TYPE_21__* %81, i32 %82)
  br label %304

84:                                               ; preds = %7, %7
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %100

94:                                               ; preds = %84
  %95 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @AX25_COMMAND, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %109 = call i32 @ax25_std_enquiry_response(%struct.TYPE_21__* %108)
  br label %110

110:                                              ; preds = %107, %104, %100
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @ax25_validate_nr(%struct.TYPE_21__* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @ax25_check_iframes_acked(%struct.TYPE_21__* %116, i32 %117)
  br label %125

119:                                              ; preds = %110
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_21__* %120)
  %122 = load i8*, i8** @AX25_STATE_1, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %119, %115
  br label %304

126:                                              ; preds = %7
  %127 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @AX25_COMMAND, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = call i32 @ax25_std_enquiry_response(%struct.TYPE_21__* %140)
  br label %142

142:                                              ; preds = %139, %136, %126
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @ax25_validate_nr(%struct.TYPE_21__* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @ax25_frames_acked(%struct.TYPE_21__* %148, i32 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %152 = call i32 @ax25_calculate_rtt(%struct.TYPE_21__* %151)
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %154 = call i32 @ax25_stop_t1timer(%struct.TYPE_21__* %153)
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %156 = call i32 @ax25_start_t3timer(%struct.TYPE_21__* %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %158 = call i32 @ax25_requeue_frames(%struct.TYPE_21__* %157)
  br label %165

159:                                              ; preds = %142
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %161 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_21__* %160)
  %162 = load i8*, i8** @AX25_STATE_1, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %159, %147
  br label %304

166:                                              ; preds = %7
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @ax25_validate_nr(%struct.TYPE_21__* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %173 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_21__* %172)
  %174 = load i8*, i8** @AX25_STATE_1, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  br label %304

177:                                              ; preds = %166
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @ax25_frames_acked(%struct.TYPE_21__* %185, i32 %186)
  br label %192

188:                                              ; preds = %177
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @ax25_check_iframes_acked(%struct.TYPE_21__* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %204 = call i32 @ax25_std_enquiry_response(%struct.TYPE_21__* %203)
  br label %205

205:                                              ; preds = %202, %199
  br label %304

206:                                              ; preds = %192
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %207, %210
  br i1 %211, label %212, label %265

212:                                              ; preds = %206
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = srem i32 %216, %219
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %225 = call i32 @ax25_rx_iframe(%struct.TYPE_21__* %223, %struct.sk_buff* %224)
  store i32 %225, i32* %15, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %212
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  br label %236

236:                                              ; preds = %232, %212
  %237 = load i32, i32* @AX25_COND_REJECT, align 4
  %238 = xor i32 %237, -1
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %236
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %247 = call i32 @ax25_std_enquiry_response(%struct.TYPE_21__* %246)
  br label %264

248:                                              ; preds = %236
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %248
  %256 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %262 = call i32 @ax25_start_t2timer(%struct.TYPE_21__* %261)
  br label %263

263:                                              ; preds = %255, %248
  br label %264

264:                                              ; preds = %263, %245
  br label %296

265:                                              ; preds = %206
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @AX25_COND_REJECT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %265
  %273 = load i32, i32* %13, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %277 = call i32 @ax25_std_enquiry_response(%struct.TYPE_21__* %276)
  br label %278

278:                                              ; preds = %275, %272
  br label %295

279:                                              ; preds = %265
  %280 = load i32, i32* @AX25_COND_REJECT, align 4
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* @AX25_RESPONSE, align 4
  %288 = call i32 @ax25_send_control(%struct.TYPE_21__* %285, i32 132, i32 %286, i32 %287)
  %289 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %279, %278
  br label %296

296:                                              ; preds = %295, %264
  br label %304

297:                                              ; preds = %7, %7
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %299 = call i32 @ax25_std_establish_data_link(%struct.TYPE_21__* %298)
  %300 = load i8*, i8** @AX25_STATE_1, align 8
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 3
  store i8* %300, i8** %302, align 8
  br label %304

303:                                              ; preds = %7
  br label %304

304:                                              ; preds = %303, %297, %296, %205, %171, %165, %125, %80, %72, %48
  %305 = load i32, i32* %15, align 4
  ret i32 %305
}

declare dso_local i32 @ax25_send_control(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_stop_t2timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_start_t3timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_start_idletimer(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_requeue_frames(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ax25_std_enquiry_response(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_validate_nr(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ax25_check_iframes_acked(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ax25_std_nr_error_recovery(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_frames_acked(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ax25_calculate_rtt(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_rx_iframe(%struct.TYPE_21__*, %struct.sk_buff*) #1

declare dso_local i32 @ax25_start_t2timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ax25_std_establish_data_link(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
