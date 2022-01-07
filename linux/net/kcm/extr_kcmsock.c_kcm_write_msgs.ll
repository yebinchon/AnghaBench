; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_write_msgs.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_write_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_sock = type { i32, %struct.kcm_psock*, %struct.sock }
%struct.kcm_psock = type { %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.kcm_tx_msg = type { i32, i16, i16, %struct.sk_buff* }
%struct.TYPE_6__ = type { i16, %struct.sk_buff*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcm_sock*)* @kcm_write_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcm_write_msgs(%struct.kcm_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kcm_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.kcm_psock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.kcm_tx_msg*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.kcm_sock* %0, %struct.kcm_sock** %3, align 8
  %15 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %16 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %15, i32 0, i32 2
  store %struct.sock* %16, %struct.sock** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %18 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %20 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %19, i32 0, i32 1
  %21 = load %struct.kcm_psock*, %struct.kcm_psock** %20, align 8
  store %struct.kcm_psock* %21, %struct.kcm_psock** %5, align 8
  %22 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %23 = icmp ne %struct.kcm_psock* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %26 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %1
  %30 = phi i1 [ false, %1 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %36 = call i32 @unreserve_psock(%struct.kcm_sock* %35)
  %37 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %38 = call i32 @kcm_report_tx_retry(%struct.kcm_sock* %37)
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 2
  %41 = call i64 @skb_queue_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %305

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  %47 = call %struct.sk_buff* @skb_peek(i32* %46)
  %48 = call %struct.kcm_tx_msg* @kcm_tx_msg(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %57

50:                                               ; preds = %29
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 2
  %53 = call i64 @skb_queue_empty(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %305

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %44
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 2
  %60 = call %struct.sk_buff* @skb_peek(i32* %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call %struct.kcm_tx_msg* @kcm_tx_msg(%struct.sk_buff* %61)
  store %struct.kcm_tx_msg* %62, %struct.kcm_tx_msg** %8, align 8
  %63 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %64 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %57
  %68 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %69 = icmp ne %struct.kcm_psock* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  br label %279

77:                                               ; preds = %67
  %78 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %79 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %11, align 4
  %81 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %82 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 4
  store i16 %83, i16* %10, align 2
  %84 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %85 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %84, i32 0, i32 2
  %86 = load i16, i16* %85, align 2
  store i16 %86, i16* %9, align 2
  %87 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %88 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %87, i32 0, i32 3
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %6, align 8
  br label %126

90:                                               ; preds = %57
  br label %91

91:                                               ; preds = %195, %90
  %92 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %93 = call %struct.kcm_psock* @reserve_psock(%struct.kcm_sock* %92)
  store %struct.kcm_psock* %93, %struct.kcm_psock** %5, align 8
  %94 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %95 = icmp ne %struct.kcm_psock* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %279

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %273, %97
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call %struct.kcm_tx_msg* @kcm_tx_msg(%struct.sk_buff* %100)
  store %struct.kcm_tx_msg* %101, %struct.kcm_tx_msg** %8, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %249, %238, %98
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i16, i16* %105, align 8
  %107 = icmp ne i16 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @WARN_ON(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %13, align 4
  br label %279

115:                                              ; preds = %102
  store i16 0, i16* %9, align 2
  br label %116

116:                                              ; preds = %227, %115
  %117 = load i16, i16* %9, align 2
  %118 = zext i16 %117 to i32
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i16, i16* %121, align 8
  %123 = zext i16 %122 to i32
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %230

125:                                              ; preds = %116
  store i16 0, i16* %10, align 2
  br label %126

126:                                              ; preds = %225, %125, %77
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i16, i16* %9, align 2
  %132 = zext i16 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = call zeroext i16 @skb_frag_size(i32* %134)
  %136 = icmp ne i16 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i64 @WARN_ON(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %126
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %13, align 4
  br label %279

144:                                              ; preds = %126
  %145 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %146 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = call i32 @skb_frag_page(i32* %150)
  %152 = load i32*, i32** %14, align 8
  %153 = call i64 @skb_frag_off(i32* %152)
  %154 = load i16, i16* %10, align 2
  %155 = zext i16 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load i32*, i32** %14, align 8
  %158 = call zeroext i16 @skb_frag_size(i32* %157)
  %159 = zext i16 %158 to i32
  %160 = load i16, i16* %10, align 2
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %159, %161
  %163 = trunc i32 %162 to i16
  %164 = load i32, i32* @MSG_DONTWAIT, align 4
  %165 = call i32 @kernel_sendpage(i32 %149, i32 %151, i64 %156, i16 zeroext %163, i32 %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %204

168:                                              ; preds = %144
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @EAGAIN, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %168
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %176 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i16, i16* %10, align 2
  %178 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %179 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %178, i32 0, i32 1
  store i16 %177, i16* %179, align 4
  %180 = load i16, i16* %9, align 2
  %181 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %182 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %181, i32 0, i32 2
  store i16 %180, i16* %182, align 2
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %185 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %184, i32 0, i32 3
  store %struct.sk_buff* %183, %struct.sk_buff** %185, align 8
  store i32 0, i32* %13, align 4
  br label %279

186:                                              ; preds = %168
  %187 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = sub nsw i32 0, %191
  br label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @EPIPE, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi i32 [ %192, %190 ], [ %194, %193 ]
  %197 = call i32 @kcm_abort_tx_psock(%struct.kcm_psock* %187, i32 %196, i32 1)
  %198 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %199 = call i32 @unreserve_psock(%struct.kcm_sock* %198)
  %200 = load %struct.kcm_tx_msg*, %struct.kcm_tx_msg** %8, align 8
  %201 = getelementptr inbounds %struct.kcm_tx_msg, %struct.kcm_tx_msg* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %203 = call i32 @kcm_report_tx_retry(%struct.kcm_sock* %202)
  store i32 0, i32* %13, align 4
  br label %91

204:                                              ; preds = %144
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i16, i16* %10, align 2
  %210 = zext i16 %209 to i32
  %211 = add nsw i32 %210, %208
  %212 = trunc i32 %211 to i16
  store i16 %212, i16* %10, align 2
  %213 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %214 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @KCM_STATS_ADD(i32 %216, i32 %217)
  %219 = load i16, i16* %10, align 2
  %220 = zext i16 %219 to i32
  %221 = load i32*, i32** %14, align 8
  %222 = call zeroext i16 @skb_frag_size(i32* %221)
  %223 = zext i16 %222 to i32
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %204
  br label %126

226:                                              ; preds = %204
  br label %227

227:                                              ; preds = %226
  %228 = load i16, i16* %9, align 2
  %229 = add i16 %228, 1
  store i16 %229, i16* %9, align 2
  br label %116

230:                                              ; preds = %116
  %231 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %233 = icmp eq %struct.sk_buff* %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230
  %235 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %236 = call i64 @skb_has_frag_list(%struct.sk_buff* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %240 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %239)
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load %struct.sk_buff*, %struct.sk_buff** %241, align 8
  store %struct.sk_buff* %242, %struct.sk_buff** %6, align 8
  br label %102

243:                                              ; preds = %234
  br label %254

244:                                              ; preds = %230
  %245 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %246 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %245, i32 0, i32 0
  %247 = load %struct.sk_buff*, %struct.sk_buff** %246, align 8
  %248 = icmp ne %struct.sk_buff* %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 0
  %252 = load %struct.sk_buff*, %struct.sk_buff** %251, align 8
  store %struct.sk_buff* %252, %struct.sk_buff** %6, align 8
  br label %102

253:                                              ; preds = %244
  br label %254

254:                                              ; preds = %253, %243
  %255 = load %struct.sock*, %struct.sock** %4, align 8
  %256 = getelementptr inbounds %struct.sock, %struct.sock* %255, i32 0, i32 2
  %257 = call i32 @skb_dequeue(i32* %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %259 = call i32 @kfree_skb(%struct.sk_buff* %258)
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.sock*, %struct.sock** %4, align 8
  %262 = getelementptr inbounds %struct.sock, %struct.sock* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sub i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %12, align 4
  %267 = add i32 %266, %265
  store i32 %267, i32* %12, align 4
  %268 = load %struct.kcm_psock*, %struct.kcm_psock** %5, align 8
  %269 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @KCM_STATS_INCR(i32 %271)
  br label %273

273:                                              ; preds = %254
  %274 = load %struct.sock*, %struct.sock** %4, align 8
  %275 = getelementptr inbounds %struct.sock, %struct.sock* %274, i32 0, i32 2
  %276 = call %struct.sk_buff* @skb_peek(i32* %275)
  store %struct.sk_buff* %276, %struct.sk_buff** %7, align 8
  %277 = icmp ne %struct.sk_buff* %276, null
  br i1 %277, label %98, label %278

278:                                              ; preds = %273
  br label %279

279:                                              ; preds = %278, %173, %141, %112, %96, %74
  %280 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %281 = icmp ne %struct.sk_buff* %280, null
  br i1 %281, label %292, label %282

282:                                              ; preds = %279
  %283 = load %struct.sock*, %struct.sock** %4, align 8
  %284 = getelementptr inbounds %struct.sock, %struct.sock* %283, i32 0, i32 2
  %285 = call i64 @skb_queue_empty(i32* %284)
  %286 = icmp ne i64 %285, 0
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = call i64 @WARN_ON(i32 %288)
  %290 = load %struct.kcm_sock*, %struct.kcm_sock** %3, align 8
  %291 = call i32 @unreserve_psock(%struct.kcm_sock* %290)
  br label %292

292:                                              ; preds = %282, %279
  %293 = load %struct.sock*, %struct.sock** %4, align 8
  %294 = getelementptr inbounds %struct.sock, %struct.sock* %293, i32 0, i32 1
  %295 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %294, align 8
  %296 = load %struct.sock*, %struct.sock** %4, align 8
  %297 = call i32 %295(%struct.sock* %296)
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  br label %303

301:                                              ; preds = %292
  %302 = load i32, i32* %13, align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi i32 [ %298, %300 ], [ %302, %301 ]
  store i32 %304, i32* %2, align 4
  br label %305

305:                                              ; preds = %303, %55, %43
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unreserve_psock(%struct.kcm_sock*) #1

declare dso_local i32 @kcm_report_tx_retry(%struct.kcm_sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.kcm_tx_msg* @kcm_tx_msg(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.kcm_psock* @reserve_psock(%struct.kcm_sock*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local zeroext i16 @skb_frag_size(i32*) #1

declare dso_local i32 @kernel_sendpage(i32, i32, i64, i16 zeroext, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i64 @skb_frag_off(i32*) #1

declare dso_local i32 @kcm_abort_tx_psock(%struct.kcm_psock*, i32, i32) #1

declare dso_local i32 @KCM_STATS_ADD(i32, i32) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
