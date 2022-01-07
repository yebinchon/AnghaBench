; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_check_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32, %struct.TYPE_21__*, i32, i64, %struct.TYPE_24__ }
%struct.TYPE_21__ = type { i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* }
%struct.TYPE_24__ = type { i64 }
%struct.tcp_options_received = type { i32, i64, i64, i64, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, %struct.request_sock*, i32*)* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@TCP_FLAG_RST = common dso_local global i32 0, align 4
@TCP_FLAG_SYN = common dso_local global i32 0, align 4
@TCP_FLAG_ACK = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@LINUX_MIB_TCPACKSKIPPEDSYNRECV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@LINUX_MIB_PAWSESTABREJECTED = common dso_local global i32 0, align 4
@TCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDEFERACCEPTDROP = common dso_local global i32 0, align 4
@LINUX_MIB_EMBRYONICRSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_check_req(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tcp_options_received, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.request_sock* %2, %struct.request_sock** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %19)
  store %struct.tcphdr* %20, %struct.tcphdr** %14, align 8
  %21 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %22 = call i32 @tcp_flag_word(%struct.tcphdr* %21)
  %23 = load i32, i32* @TCP_FLAG_RST, align 4
  %24 = load i32, i32* @TCP_FLAG_SYN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TCP_FLAG_ACK, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %22, %27
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 2
  br i1 %34, label %35, label %76

35:                                               ; preds = %5
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call %struct.TYPE_23__* @sock_net(%struct.sock* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @tcp_parse_options(%struct.TYPE_23__* %37, %struct.sk_buff* %38, %struct.tcp_options_received* %12, i32 0, i32* null)
  %40 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %35
  %44 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %45 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %53 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %52)
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %51, %43
  %60 = call i64 (...) @ktime_get_seconds()
  %61 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %62 = load i32, i32* @HZ, align 4
  %63 = sdiv i32 %61, %62
  %64 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %65 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %60, %68
  %70 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @tcp_paws_reject(%struct.tcp_options_received* %12, i32 %73)
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %59, %35
  br label %76

76:                                               ; preds = %75, %5
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %82 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %81)
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %80, %84
  br i1 %85, label %86, label %133

86:                                               ; preds = %76
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @TCP_FLAG_SYN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %133

90:                                               ; preds = %86
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %133, label %93

93:                                               ; preds = %90
  %94 = load %struct.sock*, %struct.sock** %7, align 8
  %95 = call %struct.TYPE_23__* @sock_net(%struct.sock* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = load i32, i32* @LINUX_MIB_TCPACKSKIPPEDSYNRECV, align 4
  %98 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %99 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %98)
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 3
  %101 = call i32 @tcp_oow_rate_limited(%struct.TYPE_23__* %95, %struct.sk_buff* %96, i32 %97, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %132, label %103

103:                                              ; preds = %93
  %104 = load %struct.sock*, %struct.sock** %7, align 8
  %105 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %106 = call i32 @inet_rtx_syn_ack(%struct.sock* %104, %struct.request_sock* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %132, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* @jiffies, align 8
  store i64 %109, i64* %18, align 8
  %110 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %111 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %112 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %110, %113
  %115 = load i32, i32* @TCP_RTO_MAX, align 4
  %116 = call i64 @min(i32 %114, i32 %115)
  %117 = load i64, i64* %18, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %18, align 8
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %108
  %122 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %123 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %122, i32 0, i32 4
  %124 = load i64, i64* %18, align 8
  %125 = call i32 @mod_timer_pending(%struct.TYPE_24__* %123, i64 %124)
  br label %131

126:                                              ; preds = %108
  %127 = load i64, i64* %18, align 8
  %128 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %129 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %121
  br label %132

132:                                              ; preds = %131, %103, %93
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %381

133:                                              ; preds = %90, %86, %76
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @TCP_FLAG_ACK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %138
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %142)
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %147 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %146)
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  %151 = icmp ne i64 %145, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %153, %struct.sock** %6, align 8
  br label %381

154:                                              ; preds = %141, %138, %133
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %180, label %157

157:                                              ; preds = %154
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %158)
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %162)
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %167 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %166)
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %171 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %170)
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %175 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %173, %176
  %178 = call i32 @tcp_in_window(i64 %161, i64 %165, i64 %169, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %214, label %180

180:                                              ; preds = %157, %154
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @TCP_FLAG_RST, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %205, label %185

185:                                              ; preds = %180
  %186 = load %struct.sock*, %struct.sock** %7, align 8
  %187 = call %struct.TYPE_23__* @sock_net(%struct.sock* %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %189 = load i32, i32* @LINUX_MIB_TCPACKSKIPPEDSYNRECV, align 4
  %190 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %191 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %190)
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 3
  %193 = call i32 @tcp_oow_rate_limited(%struct.TYPE_23__* %187, %struct.sk_buff* %188, i32 %189, i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %185
  %196 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %197 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %196, i32 0, i32 1
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)** %199, align 8
  %201 = load %struct.sock*, %struct.sock** %7, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %203 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %204 = call i32 %200(%struct.sock* %201, %struct.sk_buff* %202, %struct.request_sock* %203)
  br label %205

205:                                              ; preds = %195, %185, %180
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load %struct.sock*, %struct.sock** %7, align 8
  %210 = call %struct.TYPE_23__* @sock_net(%struct.sock* %209)
  %211 = load i32, i32* @LINUX_MIB_PAWSESTABREJECTED, align 4
  %212 = call i32 @__NET_INC_STATS(%struct.TYPE_23__* %210, i32 %211)
  br label %213

213:                                              ; preds = %208, %205
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %381

214:                                              ; preds = %157
  %215 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %214
  %219 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %220 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %219)
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %224 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %223)
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @after(i64 %222, i64 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %233 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %229, %218, %214
  %235 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %236 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %235)
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %240 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %239)
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %238, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %234
  %245 = load i32, i32* @TCP_FLAG_SYN, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %15, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %15, align 4
  br label %249

249:                                              ; preds = %244, %234
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* @TCP_FLAG_RST, align 4
  %252 = load i32, i32* @TCP_FLAG_SYN, align 4
  %253 = or i32 %251, %252
  %254 = and i32 %250, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %249
  %257 = load %struct.sock*, %struct.sock** %7, align 8
  %258 = call %struct.TYPE_23__* @sock_net(%struct.sock* %257)
  %259 = load i32, i32* @TCP_MIB_ATTEMPTFAILS, align 4
  %260 = call i32 @__TCP_INC_STATS(%struct.TYPE_23__* %258, i32 %259)
  br label %345

261:                                              ; preds = %249
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @TCP_FLAG_ACK, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %381

267:                                              ; preds = %261
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %271, %struct.sock** %6, align 8
  br label %381

272:                                              ; preds = %267
  %273 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %274 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.sock*, %struct.sock** %7, align 8
  %277 = call %struct.TYPE_16__* @inet_csk(%struct.sock* %276)
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %275, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %272
  %283 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %284 = call %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff* %283)
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %288 = call %struct.TYPE_22__* @tcp_rsk(%struct.request_sock* %287)
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 1
  %292 = icmp eq i64 %286, %291
  br i1 %292, label %293, label %301

293:                                              ; preds = %282
  %294 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %295 = call %struct.TYPE_15__* @inet_rsk(%struct.request_sock* %294)
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  store i32 1, i32* %296, align 4
  %297 = load %struct.sock*, %struct.sock** %7, align 8
  %298 = call %struct.TYPE_23__* @sock_net(%struct.sock* %297)
  %299 = load i32, i32* @LINUX_MIB_TCPDEFERACCEPTDROP, align 4
  %300 = call i32 @__NET_INC_STATS(%struct.TYPE_23__* %298, i32 %299)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %381

301:                                              ; preds = %282, %272
  %302 = load %struct.sock*, %struct.sock** %7, align 8
  %303 = call %struct.TYPE_16__* @inet_csk(%struct.sock* %302)
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 0
  %307 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, %struct.request_sock*, i32*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, %struct.request_sock*, i32*)** %306, align 8
  %308 = load %struct.sock*, %struct.sock** %7, align 8
  %309 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %310 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %311 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %312 = call %struct.sock* %307(%struct.sock* %308, %struct.sk_buff* %309, %struct.request_sock* %310, i32* null, %struct.request_sock* %311, i32* %17)
  store %struct.sock* %312, %struct.sock** %13, align 8
  %313 = load %struct.sock*, %struct.sock** %13, align 8
  %314 = icmp ne %struct.sock* %313, null
  br i1 %314, label %316, label %315

315:                                              ; preds = %301
  br label %333

316:                                              ; preds = %301
  %317 = load %struct.sock*, %struct.sock** %13, align 8
  %318 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %319 = call i32 @sock_rps_save_rxhash(%struct.sock* %317, %struct.sk_buff* %318)
  %320 = load %struct.sock*, %struct.sock** %13, align 8
  %321 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %322 = call i32 @tcp_synack_rtt_meas(%struct.sock* %320, %struct.request_sock* %321)
  %323 = load i32, i32* %17, align 4
  %324 = icmp ne i32 %323, 0
  %325 = xor i1 %324, true
  %326 = zext i1 %325 to i32
  %327 = load i32*, i32** %11, align 8
  store i32 %326, i32* %327, align 4
  %328 = load %struct.sock*, %struct.sock** %7, align 8
  %329 = load %struct.sock*, %struct.sock** %13, align 8
  %330 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %331 = load i32, i32* %17, align 4
  %332 = call %struct.sock* @inet_csk_complete_hashdance(%struct.sock* %328, %struct.sock* %329, %struct.request_sock* %330, i32 %331)
  store %struct.sock* %332, %struct.sock** %6, align 8
  br label %381

333:                                              ; preds = %315
  %334 = load %struct.sock*, %struct.sock** %7, align 8
  %335 = call %struct.TYPE_23__* @sock_net(%struct.sock* %334)
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %333
  %341 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %342 = call %struct.TYPE_15__* @inet_rsk(%struct.request_sock* %341)
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  store i32 1, i32* %343, align 4
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %381

344:                                              ; preds = %333
  br label %345

345:                                              ; preds = %344, %256
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* @TCP_FLAG_RST, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %345
  %351 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %352 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %351, i32 0, i32 1
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 0
  %355 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %354, align 8
  %356 = load %struct.sock*, %struct.sock** %7, align 8
  %357 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %358 = call i32 %355(%struct.sock* %356, %struct.sk_buff* %357)
  br label %369

359:                                              ; preds = %345
  %360 = load i32, i32* %10, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load %struct.sock*, %struct.sock** %7, align 8
  %364 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %365 = call i32 @reqsk_fastopen_remove(%struct.sock* %363, %struct.request_sock* %364, i32 1)
  %366 = load %struct.sock*, %struct.sock** %7, align 8
  %367 = call i32 @tcp_reset(%struct.sock* %366)
  br label %368

368:                                              ; preds = %362, %359
  br label %369

369:                                              ; preds = %368, %350
  %370 = load i32, i32* %10, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %380, label %372

372:                                              ; preds = %369
  %373 = load %struct.sock*, %struct.sock** %7, align 8
  %374 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %375 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %373, %struct.request_sock* %374)
  %376 = load %struct.sock*, %struct.sock** %7, align 8
  %377 = call %struct.TYPE_23__* @sock_net(%struct.sock* %376)
  %378 = load i32, i32* @LINUX_MIB_EMBRYONICRSTS, align 4
  %379 = call i32 @__NET_INC_STATS(%struct.TYPE_23__* %377, i32 %378)
  br label %380

380:                                              ; preds = %372, %369
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %381

381:                                              ; preds = %380, %340, %316, %293, %270, %266, %213, %152, %132
  %382 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %382
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local i32 @tcp_parse_options(%struct.TYPE_23__*, %struct.sk_buff*, %struct.tcp_options_received*, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_22__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @tcp_paws_reject(%struct.tcp_options_received*, i32) #1

declare dso_local %struct.TYPE_17__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_oow_rate_limited(%struct.TYPE_23__*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @inet_rtx_syn_ack(%struct.sock*, %struct.request_sock*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @mod_timer_pending(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @tcp_in_window(i64, i64, i64, i64) #1

declare dso_local i32 @__NET_INC_STATS(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @after(i64, i64) #1

declare dso_local i32 @__TCP_INC_STATS(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_16__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_15__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_synack_rtt_meas(%struct.sock*, %struct.request_sock*) #1

declare dso_local %struct.sock* @inet_csk_complete_hashdance(%struct.sock*, %struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @reqsk_fastopen_remove(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @tcp_reset(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
