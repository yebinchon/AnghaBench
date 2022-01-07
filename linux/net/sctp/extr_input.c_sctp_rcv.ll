; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32 }
%struct.sock = type { i64 }
%struct.sctp_association = type { %struct.sctp_ep_common }
%struct.sctp_ep_common = type { i32, %struct.sock* }
%struct.sctp_endpoint = type { %struct.sctp_ep_common }
%struct.sctp_transport = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_ep_common*, %struct.sctp_transport*, i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i64 (%struct.sk_buff*)*, i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.sctp_chunk*, %struct.sctp_af* }
%struct.TYPE_6__ = type { %struct.sctp_endpoint* }

@PACKET_HOST = common dso_local global i64 0, align 8
@SCTP_MIB_INSCTPPACKS = common dso_local global i32 0, align 4
@sctp_checksum_disable = common dso_local global i32 0, align 4
@SCTP_MIB_OUTOFBLUES = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_MIB_IN_PKT_BACKLOG = common dso_local global i32 0, align 4
@SCTP_MIB_IN_PKT_SOFTIRQ = common dso_local global i32 0, align 4
@SCTP_MIB_IN_PKT_DISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sctp_ep_common*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca %union.sctp_addr, align 4
  %11 = alloca %union.sctp_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_af*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @dev_net(i32 %18)
  store %struct.net* %19, %struct.net** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i64 @skb_is_gso(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i64 @skb_is_gso_sctp(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i1 [ false, %1 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PACKET_HOST, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %308

36:                                               ; preds = %27
  %37 = load %struct.net*, %struct.net** %14, align 8
  %38 = load i32, i32* @SCTP_MIB_INSCTPPACKS, align 4
  %39 = call i32 @__SCTP_INC_STATS(%struct.net* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @skb_transport_offset(%struct.sk_buff* %43)
  %45 = sext i32 %44 to i64
  %46 = add i64 8, %45
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %308

49:                                               ; preds = %36
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i64 @skb_linearize(%struct.sk_buff* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @pskb_may_pull(%struct.sk_buff* %57, i32 4)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %52
  br label %308

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call i32 @skb_transport_offset(%struct.sk_buff* %63)
  %65 = call i32 @__skb_pull(%struct.sk_buff* %62, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call i32 @__skb_decr_checksum_unnecessary(%struct.sk_buff* %72)
  br label %87

74:                                               ; preds = %61
  %75 = load i32, i32* @sctp_checksum_disable, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.net*, %struct.net** %14, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call i64 @sctp_rcv_checksum(%struct.net* %81, %struct.sk_buff* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %308

86:                                               ; preds = %80, %77, %74
  br label %87

87:                                               ; preds = %86, %71
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call i32 @__skb_pull(%struct.sk_buff* %90, i32 4)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ipver2af(i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call %struct.sctp_af* @sctp_get_af_specific(i32 %97)
  store %struct.sctp_af* %98, %struct.sctp_af** %13, align 8
  %99 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %100 = icmp ne %struct.sctp_af* %99, null
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  br label %308

106:                                              ; preds = %87
  %107 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = call %struct.TYPE_8__* @SCTP_INPUT_CB(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store %struct.sctp_af* %107, %struct.sctp_af** %110, align 8
  %111 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %112 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %111, i32 0, i32 2
  %113 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = call i32 %113(%union.sctp_addr* %10, %struct.sk_buff* %114, i32 1)
  %116 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %117 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %116, i32 0, i32 2
  %118 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %120 = call i32 %118(%union.sctp_addr* %11, %struct.sk_buff* %119, i32 0)
  %121 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %122 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %121, i32 0, i32 1
  %123 = load i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)** %122, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = call i32 %123(%union.sctp_addr* %10, i32* null, %struct.sk_buff* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %106
  %128 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %129 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %128, i32 0, i32 1
  %130 = load i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)** %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 %130(%union.sctp_addr* %11, i32* null, %struct.sk_buff* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %127, %106
  br label %308

135:                                              ; preds = %127
  %136 = load %struct.net*, %struct.net** %14, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call %struct.sctp_association* @__sctp_rcv_lookup(%struct.net* %136, %struct.sk_buff* %137, %union.sctp_addr* %10, %union.sctp_addr* %11, %struct.sctp_transport** %8)
  store %struct.sctp_association* %138, %struct.sctp_association** %5, align 8
  %139 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %140 = icmp ne %struct.sctp_association* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = load %struct.net*, %struct.net** %14, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = call %struct.sctp_endpoint* @__sctp_rcv_lookup_endpoint(%struct.net* %142, %struct.sk_buff* %143, %union.sctp_addr* %11, %union.sctp_addr* %10)
  store %struct.sctp_endpoint* %144, %struct.sctp_endpoint** %6, align 8
  br label %145

145:                                              ; preds = %141, %135
  %146 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %147 = icmp ne %struct.sctp_association* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %150 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %149, i32 0, i32 0
  br label %154

151:                                              ; preds = %145
  %152 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %153 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %152, i32 0, i32 0
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi %struct.sctp_ep_common* [ %150, %148 ], [ %153, %151 ]
  store %struct.sctp_ep_common* %155, %struct.sctp_ep_common** %7, align 8
  %156 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %157 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %156, i32 0, i32 1
  %158 = load %struct.sock*, %struct.sock** %157, align 8
  store %struct.sock* %158, %struct.sock** %4, align 8
  %159 = load %struct.sock*, %struct.sock** %4, align 8
  %160 = getelementptr inbounds %struct.sock, %struct.sock* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %195

163:                                              ; preds = %154
  %164 = load %struct.sock*, %struct.sock** %4, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %168 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %167, i32 0, i32 0
  %169 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %168, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = call i64 %169(%struct.sk_buff* %170)
  %172 = icmp ne i64 %166, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %163
  %174 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %175 = icmp ne %struct.sctp_transport* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %178 = call i32 @sctp_transport_put(%struct.sctp_transport* %177)
  store %struct.sctp_association* null, %struct.sctp_association** %5, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %8, align 8
  br label %182

179:                                              ; preds = %173
  %180 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %181 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %180)
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %6, align 8
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.net*, %struct.net** %14, align 8
  %184 = getelementptr inbounds %struct.net, %struct.net* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load %struct.sock*, %struct.sock** %185, align 8
  store %struct.sock* %186, %struct.sock** %4, align 8
  %187 = load %struct.sock*, %struct.sock** %4, align 8
  %188 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %187)
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %189, align 8
  store %struct.sctp_endpoint* %190, %struct.sctp_endpoint** %6, align 8
  %191 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %192 = call i32 @sctp_endpoint_hold(%struct.sctp_endpoint* %191)
  %193 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %194 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %193, i32 0, i32 0
  store %struct.sctp_ep_common* %194, %struct.sctp_ep_common** %7, align 8
  br label %195

195:                                              ; preds = %182, %163, %154
  %196 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %197 = icmp ne %struct.sctp_association* %196, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %200 = call i64 @sctp_rcv_ootb(%struct.sk_buff* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load %struct.net*, %struct.net** %14, align 8
  %204 = load i32, i32* @SCTP_MIB_OUTOFBLUES, align 4
  %205 = call i32 @__SCTP_INC_STATS(%struct.net* %203, i32 %204)
  br label %314

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %195
  %208 = load %struct.sock*, %struct.sock** %4, align 8
  %209 = load i32, i32* @XFRM_POLICY_IN, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @xfrm_policy_check(%struct.sock* %208, i32 %209, %struct.sk_buff* %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %207
  br label %314

215:                                              ; preds = %207
  %216 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %217 = call i32 @nf_reset_ct(%struct.sk_buff* %216)
  %218 = load %struct.sock*, %struct.sock** %4, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %220 = call i64 @sk_filter(%struct.sock* %218, %struct.sk_buff* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %314

223:                                              ; preds = %215
  %224 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %225 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %226 = load %struct.sock*, %struct.sock** %4, align 8
  %227 = load i32, i32* @GFP_ATOMIC, align 4
  %228 = call %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff* %224, %struct.sctp_association* %225, %struct.sock* %226, i32 %227)
  store %struct.sctp_chunk* %228, %struct.sctp_chunk** %9, align 8
  %229 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %230 = icmp ne %struct.sctp_chunk* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %223
  br label %314

232:                                              ; preds = %223
  %233 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %235 = call %struct.TYPE_8__* @SCTP_INPUT_CB(%struct.sk_buff* %234)
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store %struct.sctp_chunk* %233, %struct.sctp_chunk** %236, align 8
  %237 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %238 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %239 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %238, i32 0, i32 0
  store %struct.sctp_ep_common* %237, %struct.sctp_ep_common** %239, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %241 = call i32 @sctp_hdr(%struct.sk_buff* %240)
  %242 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %243 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %245 = call i32 @sctp_init_addrs(%struct.sctp_chunk* %244, %union.sctp_addr* %10, %union.sctp_addr* %11)
  %246 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %247 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %248 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %247, i32 0, i32 1
  store %struct.sctp_transport* %246, %struct.sctp_transport** %248, align 8
  %249 = load %struct.sock*, %struct.sock** %4, align 8
  %250 = call i32 @bh_lock_sock(%struct.sock* %249)
  %251 = load %struct.sock*, %struct.sock** %4, align 8
  %252 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %253 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %252, i32 0, i32 1
  %254 = load %struct.sock*, %struct.sock** %253, align 8
  %255 = icmp ne %struct.sock* %251, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %232
  %257 = load %struct.sock*, %struct.sock** %4, align 8
  %258 = call i32 @bh_unlock_sock(%struct.sock* %257)
  %259 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %260 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %259, i32 0, i32 1
  %261 = load %struct.sock*, %struct.sock** %260, align 8
  store %struct.sock* %261, %struct.sock** %4, align 8
  %262 = load %struct.sock*, %struct.sock** %4, align 8
  %263 = call i32 @bh_lock_sock(%struct.sock* %262)
  br label %264

264:                                              ; preds = %256, %232
  %265 = load %struct.sock*, %struct.sock** %4, align 8
  %266 = call i64 @sock_owned_by_user(%struct.sock* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load %struct.sock*, %struct.sock** %4, align 8
  %270 = call i32 @sctp_newsk_ready(%struct.sock* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %286, label %272

272:                                              ; preds = %268, %264
  %273 = load %struct.sock*, %struct.sock** %4, align 8
  %274 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %275 = call i64 @sctp_add_backlog(%struct.sock* %273, %struct.sk_buff* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.sock*, %struct.sock** %4, align 8
  %279 = call i32 @bh_unlock_sock(%struct.sock* %278)
  %280 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %281 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %280)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %314

282:                                              ; preds = %272
  %283 = load %struct.net*, %struct.net** %14, align 8
  %284 = load i32, i32* @SCTP_MIB_IN_PKT_BACKLOG, align 4
  %285 = call i32 @__SCTP_INC_STATS(%struct.net* %283, i32 %284)
  br label %296

286:                                              ; preds = %268
  %287 = load %struct.net*, %struct.net** %14, align 8
  %288 = load i32, i32* @SCTP_MIB_IN_PKT_SOFTIRQ, align 4
  %289 = call i32 @__SCTP_INC_STATS(%struct.net* %287, i32 %288)
  %290 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %291 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %290, i32 0, i32 0
  %292 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %291, align 8
  %293 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %292, i32 0, i32 0
  %294 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %295 = call i32 @sctp_inq_push(i32* %293, %struct.sctp_chunk* %294)
  br label %296

296:                                              ; preds = %286, %282
  %297 = load %struct.sock*, %struct.sock** %4, align 8
  %298 = call i32 @bh_unlock_sock(%struct.sock* %297)
  %299 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %300 = icmp ne %struct.sctp_transport* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %303 = call i32 @sctp_transport_put(%struct.sctp_transport* %302)
  br label %307

304:                                              ; preds = %296
  %305 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %306 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %305)
  br label %307

307:                                              ; preds = %304, %301
  store i32 0, i32* %2, align 4
  br label %324

308:                                              ; preds = %323, %134, %105, %85, %60, %48, %35
  %309 = load %struct.net*, %struct.net** %14, align 8
  %310 = load i32, i32* @SCTP_MIB_IN_PKT_DISCARDS, align 4
  %311 = call i32 @__SCTP_INC_STATS(%struct.net* %309, i32 %310)
  %312 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %313 = call i32 @kfree_skb(%struct.sk_buff* %312)
  store i32 0, i32* %2, align 4
  br label %324

314:                                              ; preds = %277, %231, %222, %214, %202
  %315 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %316 = icmp ne %struct.sctp_transport* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %319 = call i32 @sctp_transport_put(%struct.sctp_transport* %318)
  br label %323

320:                                              ; preds = %314
  %321 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %322 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %321)
  br label %323

323:                                              ; preds = %320, %317
  br label %308

324:                                              ; preds = %308, %307
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso_sctp(%struct.sk_buff*) #1

declare dso_local i32 @__SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i32 @__skb_decr_checksum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @sctp_rcv_checksum(%struct.net*, %struct.sk_buff*) #1

declare dso_local i32 @ipver2af(i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_lookup(%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_endpoint* @__sctp_rcv_lookup_endpoint(%struct.net*, %struct.sk_buff*, %union.sctp_addr*, %union.sctp_addr*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_endpoint_put(%struct.sctp_endpoint*) #1

declare dso_local %struct.TYPE_6__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_hold(%struct.sctp_endpoint*) #1

declare dso_local i64 @sctp_rcv_ootb(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_policy_check(%struct.sock*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff*, %struct.sctp_association*, %struct.sock*, i32) #1

declare dso_local i32 @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sctp_init_addrs(%struct.sctp_chunk*, %union.sctp_addr*, %union.sctp_addr*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sctp_newsk_ready(%struct.sock*) #1

declare dso_local i64 @sctp_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_inq_push(i32*, %struct.sctp_chunk*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
