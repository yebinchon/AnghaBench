; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_shift_skb_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_shift_skb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sacktag_state = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCPCB_LOST = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@TCPCB_TAGBITS = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4
@LINUX_MIB_SACKSHIFTFALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.sk_buff*, %struct.tcp_sacktag_state*, i32, i32, i32)* @tcp_shift_skb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tcp_shift_skb_data(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcp_sacktag_state* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tcp_sacktag_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcp_sock*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.tcp_sacktag_state* %2, %struct.tcp_sacktag_state** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %20)
  store %struct.tcp_sock* %21, %struct.tcp_sock** %14, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %6
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TCPCB_LOST, align 4
  %30 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %264

36:                                               ; preds = %24, %6
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call i32 @skb_can_shift(%struct.sk_buff* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %264

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @after(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %264

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call %struct.sk_buff* @skb_rb_prev(%struct.sk_buff* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %15, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %264

58:                                               ; preds = %52
  %59 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %60 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TCPCB_TAGBITS, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %264

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %70 = call i32 @tcp_skb_can_collapse_to(%struct.sk_buff* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %264

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @after(i32 %74, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @before(i32 %82, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %81, %73
  %91 = phi i1 [ false, %73 ], [ %89, %81 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = call i32 @tcp_skb_pcount(%struct.sk_buff* %99)
  store i32 %100, i32* %17, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = call i32 @tcp_skb_seglen(%struct.sk_buff* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %105 = call i32 @tcp_skb_seglen(%struct.sk_buff* %104)
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %264

108:                                              ; preds = %95
  br label %180

109:                                              ; preds = %90
  %110 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %111 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @after(i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %262

118:                                              ; preds = %109
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = call i32 @tcp_skb_pcount(%struct.sk_buff* %119)
  %121 = icmp sle i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %262

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @after(i32 %124, i32 %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %123
  br label %264

136:                                              ; preds = %123
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %137, %141
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp slt i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @BUG_ON(i32 %145)
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @BUG_ON(i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %155 = call i32 @tcp_skb_mss(%struct.sk_buff* %154)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %158 = call i32 @tcp_skb_seglen(%struct.sk_buff* %157)
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %136
  br label %264

161:                                              ; preds = %136
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 1, i32* %17, align 4
  br label %179

166:                                              ; preds = %161
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %262

171:                                              ; preds = %166
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %16, align 4
  %174 = sdiv i32 %172, %173
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %16, align 4
  %177 = mul nsw i32 %175, %176
  store i32 %177, i32* %18, align 4
  br label %178

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %165
  br label %180

180:                                              ; preds = %179, %108
  %181 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %182 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %181)
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %184, %185
  %187 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %188 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @after(i32 %186, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %180
  br label %264

193:                                              ; preds = %180
  %194 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %18, align 4
  %198 = call i64 @tcp_skb_shift(%struct.sk_buff* %194, %struct.sk_buff* %195, i32 %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %193
  br label %264

201:                                              ; preds = %193
  %202 = load %struct.sock*, %struct.sock** %8, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %205 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @tcp_shifted_skb(%struct.sock* %202, %struct.sk_buff* %203, %struct.sk_buff* %204, %struct.tcp_sacktag_state* %205, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %201
  br label %260

213:                                              ; preds = %201
  %214 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %215 = call %struct.sk_buff* @skb_rb_next(%struct.sk_buff* %214)
  store %struct.sk_buff* %215, %struct.sk_buff** %9, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %217 = icmp ne %struct.sk_buff* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %213
  br label %260

219:                                              ; preds = %213
  %220 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %221 = call i32 @skb_can_shift(%struct.sk_buff* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %225 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %224)
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TCPCB_TAGBITS, align 4
  %229 = and i32 %227, %228
  %230 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %237, label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %235 = call i32 @tcp_skb_seglen(%struct.sk_buff* %234)
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232, %223, %219
  br label %260

238:                                              ; preds = %232
  %239 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %18, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %243 = call i32 @tcp_skb_pcount(%struct.sk_buff* %242)
  store i32 %243, i32* %17, align 4
  %244 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i64 @tcp_skb_shift(%struct.sk_buff* %244, %struct.sk_buff* %245, i32 %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %238
  %251 = load %struct.sock*, %struct.sock** %8, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %253 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %254 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %16, align 4
  %258 = call i32 @tcp_shifted_skb(%struct.sock* %251, %struct.sk_buff* %252, %struct.sk_buff* %253, %struct.tcp_sacktag_state* %254, i32 %255, i32 %256, i32 %257, i32 0)
  br label %259

259:                                              ; preds = %250, %238
  br label %260

260:                                              ; preds = %259, %237, %218, %212
  %261 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %261, %struct.sk_buff** %7, align 8
  br label %269

262:                                              ; preds = %170, %122, %117
  %263 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %263, %struct.sk_buff** %7, align 8
  br label %269

264:                                              ; preds = %200, %192, %160, %135, %107, %72, %67, %57, %51, %40, %35
  %265 = load %struct.sock*, %struct.sock** %8, align 8
  %266 = call i32 @sock_net(%struct.sock* %265)
  %267 = load i32, i32* @LINUX_MIB_SACKSHIFTFALLBACK, align 4
  %268 = call i32 @NET_INC_STATS(i32 %266, i32 %267)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %269

269:                                              ; preds = %264, %262, %260
  %270 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %270
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_can_shift(%struct.sk_buff*) #1

declare dso_local i32 @after(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_rb_prev(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_can_collapse_to(%struct.sk_buff*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_seglen(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tcp_skb_mss(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_shift(%struct.sk_buff*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_shifted_skb(%struct.sock*, %struct.sk_buff*, %struct.sk_buff*, %struct.tcp_sacktag_state*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_rb_next(%struct.sk_buff*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
