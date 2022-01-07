; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.sk_buff* }
%struct.TYPE_8__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@IPSKB_FRAG_COMPLETE = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@INET_FRAG_LAST_IN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@INET_FRAG_FIRST_IN = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@IPFRAG_DUP = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASM_OVERLAPS = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq*, %struct.sk_buff*)* @ip_frag_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_frag_queue(%struct.ipq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipq*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ipq* %0, %struct.ipq** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.ipq*, %struct.ipq** %4, align 8
  %18 = getelementptr inbounds %struct.ipq, %struct.ipq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.net*, %struct.net** %21, align 8
  store %struct.net* %22, %struct.net** %6, align 8
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ipq*, %struct.ipq** %4, align 8
  %26 = getelementptr inbounds %struct.ipq, %struct.ipq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %358

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_9__* @IPCB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IPSKB_FRAG_COMPLETE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = load %struct.ipq*, %struct.ipq** %4, align 8
  %43 = call i32 @ip_frag_too_far(%struct.ipq* %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.ipq*, %struct.ipq** %4, align 8
  %48 = call i32 @ip_frag_reinit(%struct.ipq* %47)
  store i32 %48, i32* %14, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.ipq*, %struct.ipq** %4, align 8
  %53 = call i32 @ipq_kill(%struct.ipq* %52)
  br label %358

54:                                               ; preds = %46, %41, %33
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ip4_frag_ecn(i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @IP_OFFSET, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @IP_OFFSET, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 3
  store i32 %73, i32* %10, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @ip_hdrlen(%struct.sk_buff* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @skb_network_offset(%struct.sk_buff* %81)
  %83 = sub nsw i32 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @IP_MF, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %54
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ipq*, %struct.ipq** %4, align 8
  %95 = getelementptr inbounds %struct.ipq, %struct.ipq* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %92
  %100 = load %struct.ipq*, %struct.ipq** %4, align 8
  %101 = getelementptr inbounds %struct.ipq, %struct.ipq* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.ipq*, %struct.ipq** %4, align 8
  %110 = getelementptr inbounds %struct.ipq, %struct.ipq* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %92
  br label %351

115:                                              ; preds = %107, %99
  %116 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %117 = load %struct.ipq*, %struct.ipq** %4, align 8
  %118 = getelementptr inbounds %struct.ipq, %struct.ipq* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.ipq*, %struct.ipq** %4, align 8
  %124 = getelementptr inbounds %struct.ipq, %struct.ipq* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  br label %165

126:                                              ; preds = %54
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 7
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, -8
  store i32 %132, i32* %8, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i64, i64* @CHECKSUM_NONE, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %138, %130
  br label %143

143:                                              ; preds = %142, %126
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.ipq*, %struct.ipq** %4, align 8
  %146 = getelementptr inbounds %struct.ipq, %struct.ipq* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %144, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %143
  %151 = load %struct.ipq*, %struct.ipq** %4, align 8
  %152 = getelementptr inbounds %struct.ipq, %struct.ipq* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %351

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.ipq*, %struct.ipq** %4, align 8
  %162 = getelementptr inbounds %struct.ipq, %struct.ipq* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %143
  br label %165

165:                                              ; preds = %164, %115
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %351

170:                                              ; preds = %165
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %14, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call i32 @skb_network_offset(%struct.sk_buff* %174)
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @pskb_pull(%struct.sk_buff* %173, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %170
  br label %351

181:                                              ; preds = %170
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %182, i32 %185)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %351

190:                                              ; preds = %181
  %191 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 5
  %193 = load %struct.net_device*, %struct.net_device** %192, align 8
  store %struct.net_device* %193, %struct.net_device** %12, align 8
  %194 = call i32 (...) @barrier()
  %195 = load %struct.ipq*, %struct.ipq** %4, align 8
  %196 = getelementptr inbounds %struct.ipq, %struct.ipq* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 6
  %198 = load %struct.sk_buff*, %struct.sk_buff** %197, align 8
  store %struct.sk_buff* %198, %struct.sk_buff** %11, align 8
  %199 = load %struct.ipq*, %struct.ipq** %4, align 8
  %200 = getelementptr inbounds %struct.ipq, %struct.ipq* %199, i32 0, i32 1
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @inet_frag_queue_insert(%struct.TYPE_7__* %200, %struct.sk_buff* %201, i32 %202, i32 %203)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %190
  br label %336

208:                                              ; preds = %190
  %209 = load %struct.net_device*, %struct.net_device** %12, align 8
  %210 = icmp ne %struct.net_device* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load %struct.net_device*, %struct.net_device** %12, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ipq*, %struct.ipq** %4, align 8
  %216 = getelementptr inbounds %struct.ipq, %struct.ipq* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %211, %208
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ipq*, %struct.ipq** %4, align 8
  %222 = getelementptr inbounds %struct.ipq, %struct.ipq* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 5
  store i32 %220, i32* %223, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.ipq*, %struct.ipq** %4, align 8
  %228 = getelementptr inbounds %struct.ipq, %struct.ipq* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, %226
  store i32 %231, i32* %229, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load %struct.ipq*, %struct.ipq** %4, align 8
  %234 = getelementptr inbounds %struct.ipq, %struct.ipq* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load %struct.ipq*, %struct.ipq** %4, align 8
  %238 = getelementptr inbounds %struct.ipq, %struct.ipq* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @add_frag_mem_limit(%struct.TYPE_8__* %240, i32 %243)
  %245 = load i32, i32* %10, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %217
  %248 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %249 = load %struct.ipq*, %struct.ipq** %4, align 8
  %250 = getelementptr inbounds %struct.ipq, %struct.ipq* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %248
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %247, %217
  %255 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %256 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %257, %258
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = load %struct.ipq*, %struct.ipq** %4, align 8
  %262 = getelementptr inbounds %struct.ipq, %struct.ipq* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = icmp ugt i32 %260, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %254
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.ipq*, %struct.ipq** %4, align 8
  %269 = getelementptr inbounds %struct.ipq, %struct.ipq* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 3
  store i32 %267, i32* %270, align 4
  br label %271

271:                                              ; preds = %266, %254
  %272 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %273 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %272)
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @IP_DF, align 4
  %277 = call i32 @htons(i32 %276)
  %278 = and i32 %275, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %271
  %281 = load i32, i32* %13, align 4
  %282 = load %struct.ipq*, %struct.ipq** %4, align 8
  %283 = getelementptr inbounds %struct.ipq, %struct.ipq* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp ugt i32 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* %13, align 4
  %288 = load %struct.ipq*, %struct.ipq** %4, align 8
  %289 = getelementptr inbounds %struct.ipq, %struct.ipq* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %286, %280, %271
  %291 = load %struct.ipq*, %struct.ipq** %4, align 8
  %292 = getelementptr inbounds %struct.ipq, %struct.ipq* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %296 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %297 = or i32 %295, %296
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %331

299:                                              ; preds = %290
  %300 = load %struct.ipq*, %struct.ipq** %4, align 8
  %301 = getelementptr inbounds %struct.ipq, %struct.ipq* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.ipq*, %struct.ipq** %4, align 8
  %305 = getelementptr inbounds %struct.ipq, %struct.ipq* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %303, %307
  br i1 %308, label %309, label %331

309:                                              ; preds = %299
  %310 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %311 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %16, align 8
  %313 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %314 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %313, i32 0, i32 2
  store i64 0, i64* %314, align 8
  %315 = load %struct.ipq*, %struct.ipq** %4, align 8
  %316 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %317 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %318 = load %struct.net_device*, %struct.net_device** %12, align 8
  %319 = call i32 @ip_frag_reasm(%struct.ipq* %315, %struct.sk_buff* %316, %struct.sk_buff* %317, %struct.net_device* %318)
  store i32 %319, i32* %14, align 4
  %320 = load i64, i64* %16, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 2
  store i64 %320, i64* %322, align 8
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %309
  %326 = load %struct.ipq*, %struct.ipq** %4, align 8
  %327 = getelementptr inbounds %struct.ipq, %struct.ipq* %326, i32 0, i32 1
  %328 = call i32 @inet_frag_kill(%struct.TYPE_7__* %327)
  br label %329

329:                                              ; preds = %325, %309
  %330 = load i32, i32* %14, align 4
  store i32 %330, i32* %3, align 4
  br label %362

331:                                              ; preds = %299, %290
  %332 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %333 = call i32 @skb_dst_drop(%struct.sk_buff* %332)
  %334 = load i32, i32* @EINPROGRESS, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %3, align 4
  br label %362

336:                                              ; preds = %207
  %337 = load i32, i32* %14, align 4
  %338 = load i32, i32* @IPFRAG_DUP, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %336
  %341 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %342 = call i32 @kfree_skb(%struct.sk_buff* %341)
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %3, align 4
  br label %362

345:                                              ; preds = %336
  %346 = load i32, i32* @EINVAL, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %14, align 4
  %348 = load %struct.net*, %struct.net** %6, align 8
  %349 = load i32, i32* @IPSTATS_MIB_REASM_OVERLAPS, align 4
  %350 = call i32 @__IP_INC_STATS(%struct.net* %348, i32 %349)
  br label %351

351:                                              ; preds = %345, %189, %180, %169, %158, %114
  %352 = load %struct.ipq*, %struct.ipq** %4, align 8
  %353 = getelementptr inbounds %struct.ipq, %struct.ipq* %352, i32 0, i32 1
  %354 = call i32 @inet_frag_kill(%struct.TYPE_7__* %353)
  %355 = load %struct.net*, %struct.net** %6, align 8
  %356 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %357 = call i32 @__IP_INC_STATS(%struct.net* %355, i32 %356)
  br label %358

358:                                              ; preds = %351, %51, %32
  %359 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %360 = call i32 @kfree_skb(%struct.sk_buff* %359)
  %361 = load i32, i32* %14, align 4
  store i32 %361, i32* %3, align 4
  br label %362

362:                                              ; preds = %358, %340, %331, %329
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.TYPE_9__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_frag_too_far(%struct.ipq*) #1

declare dso_local i32 @ip_frag_reinit(%struct.ipq*) #1

declare dso_local i32 @ipq_kill(%struct.ipq*) #1

declare dso_local i32 @ip4_frag_ecn(i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @inet_frag_queue_insert(%struct.TYPE_7__*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @add_frag_mem_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_frag_reasm(%struct.ipq*, %struct.sk_buff*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @inet_frag_kill(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
