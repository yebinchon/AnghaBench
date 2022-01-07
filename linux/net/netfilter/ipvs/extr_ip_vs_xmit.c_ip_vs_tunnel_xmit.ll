; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_tunnel_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_tunnel_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i32, i32, i32 }
%struct.ip_vs_conn = type { %struct.TYPE_6__, i32, %struct.TYPE_7__*, %struct.netns_ipvs* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.netns_ipvs = type { %struct.net* }
%struct.net = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32, i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@IP_VS_RT_MODE_LOCAL = common dso_local global i32 0, align 4
@IP_VS_RT_MODE_NON_LOCAL = common dso_local global i32 0, align 4
@IP_VS_RT_MODE_CONNECT = common dso_local global i32 0, align 4
@IP_VS_RT_MODE_TUNNEL = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TUNNEL_TYPE_GUE = common dso_local global i32 0, align 4
@IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@GUE_PLEN_REMCSUM = common dso_local global i64 0, align 8
@GUE_LEN_PRIV = common dso_local global i64 0, align 8
@IP_VS_CONN_F_TUNNEL_TYPE_GRE = common dso_local global i32 0, align 4
@IP_VS_TUNNEL_ENCAP_FLAG_CSUM = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@SKB_GSO_TUNNEL_REMCSUM = common dso_local global i32 0, align 4
@SKB_GSO_GRE_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_GRE = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_tunnel_xmit(%struct.sk_buff* %0, %struct.ip_vs_conn* %1, %struct.ip_vs_protocol* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca %struct.ip_vs_protocol*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca %struct.netns_ipvs*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %7, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 3
  %34 = load %struct.netns_ipvs*, %struct.netns_ipvs** %33, align 8
  store %struct.netns_ipvs* %34, %struct.netns_ipvs** %10, align 8
  %35 = load %struct.netns_ipvs*, %struct.netns_ipvs** %10, align 8
  %36 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %35, i32 0, i32 0
  %37 = load %struct.net*, %struct.net** %36, align 8
  store %struct.net* %37, %struct.net** %11, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %38 = call i32 @EnterFunction(i32 10)
  %39 = load %struct.netns_ipvs*, %struct.netns_ipvs** %10, align 8
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %41 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %45 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %48 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IP_VS_RT_MODE_LOCAL, align 4
  %52 = load i32, i32* @IP_VS_RT_MODE_NON_LOCAL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IP_VS_RT_MODE_CONNECT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IP_VS_RT_MODE_TUNNEL, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %59 = call i32 @__ip_vs_get_out_rt(%struct.netns_ipvs* %39, i32 %42, %struct.sk_buff* %43, %struct.TYPE_7__* %46, i32 %50, i32 %57, i32* %13, %struct.ip_vs_iphdr* %58)
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %23, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %4
  br label %351

63:                                               ; preds = %4
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @NFPROTO_IPV4, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %70 = call i32 @ip_vs_send_or_cont(i32 %67, %struct.sk_buff* %68, %struct.ip_vs_conn* %69, i32 1)
  store i32 %70, i32* %5, align 4
  br label %361

71:                                               ; preds = %63
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %72)
  store %struct.rtable* %73, %struct.rtable** %12, align 8
  %74 = load %struct.rtable*, %struct.rtable** %12, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.net_device*, %struct.net_device** %76, align 8
  store %struct.net_device* %77, %struct.net_device** %14, align 8
  %78 = load %struct.net_device*, %struct.net_device** %14, align 8
  %79 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 48
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %21, align 4
  %83 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %24, align 4
  %88 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %89 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* @IP_VS_CONN_F_TUNNEL_TYPE_GUE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %71
  store i64 0, i64* %28, align 8
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i64, i64* @GUE_PLEN_REMCSUM, align 8
  %109 = load i64, i64* @GUE_LEN_PRIV, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* %28, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %28, align 8
  br label %113

113:                                              ; preds = %107, %101, %96
  %114 = load i64, i64* %28, align 8
  %115 = add i64 4, %114
  store i64 %115, i64* %27, align 8
  %116 = load i64, i64* %27, align 8
  %117 = add i64 4, %116
  %118 = load i32, i32* %21, align 4
  %119 = zext i32 %118 to i64
  %120 = add i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %21, align 4
  br label %144

122:                                              ; preds = %71
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* @IP_VS_CONN_F_TUNNEL_TYPE_GRE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  store i32 0, i32* %30, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_CSUM, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @TUNNEL_CSUM, align 4
  %133 = load i32, i32* %30, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %30, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %30, align 4
  %137 = call i64 @gre_calc_hlen(i32 %136)
  store i64 %137, i64* %29, align 8
  %138 = load i64, i64* %29, align 8
  %139 = load i32, i32* %21, align 4
  %140 = zext i32 %139 to i64
  %141 = add i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %21, align 4
  br label %143

143:                                              ; preds = %135, %122
  br label %144

144:                                              ; preds = %143, %113
  %145 = load %struct.netns_ipvs*, %struct.netns_ipvs** %10, align 8
  %146 = call i64 @sysctl_pmtu_disc(%struct.netns_ipvs* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %150

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149, %148
  %151 = phi i32* [ %18, %148 ], [ null, %149 ]
  store i32* %151, i32** %19, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %154 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %21, align 4
  %157 = load i32*, i32** %19, align 8
  %158 = call %struct.sk_buff* @ip_vs_prepare_tunneled_skb(%struct.sk_buff* %152, i32 %155, i32 %156, i8** %15, i32* null, i8** %16, i8** %17, i32* %157)
  store %struct.sk_buff* %158, %struct.sk_buff** %6, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call i64 @IS_ERR(%struct.sk_buff* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %351

163:                                              ; preds = %150
  %164 = load i32, i32* @AF_INET, align 4
  %165 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %166 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @__tun_gso_type_mask(i32 %164, i32 %167)
  store i32 %168, i32* %25, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* @IP_VS_CONN_F_TUNNEL_TYPE_GUE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %206

172:                                              ; preds = %163
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_CSUM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177, %172
  %183 = load i32, i32* @SKB_GSO_UDP_TUNNEL_CSUM, align 4
  %184 = load i32, i32* %25, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %25, align 4
  br label %190

186:                                              ; preds = %177
  %187 = load i32, i32* @SKB_GSO_UDP_TUNNEL, align 4
  %188 = load i32, i32* %25, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %25, align 4
  br label %190

190:                                              ; preds = %186, %182
  %191 = load i32, i32* %26, align 4
  %192 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* @SKB_GSO_TUNNEL_REMCSUM, align 4
  %203 = load i32, i32* %25, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %25, align 4
  br label %205

205:                                              ; preds = %201, %195, %190
  br label %225

206:                                              ; preds = %163
  %207 = load i32, i32* %24, align 4
  %208 = load i32, i32* @IP_VS_CONN_F_TUNNEL_TYPE_GRE, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %206
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_CSUM, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* @SKB_GSO_GRE_CSUM, align 4
  %217 = load i32, i32* %25, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %25, align 4
  br label %223

219:                                              ; preds = %210
  %220 = load i32, i32* @SKB_GSO_GRE, align 4
  %221 = load i32, i32* %25, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %25, align 4
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %206
  br label %225

225:                                              ; preds = %224, %205
  %226 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %227 = load i32, i32* %25, align 4
  %228 = call i64 @iptunnel_handle_offloads(%struct.sk_buff* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %351

231:                                              ; preds = %225
  %232 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %238 = load i8*, i8** %15, align 8
  %239 = call i32 @skb_set_inner_ipproto(%struct.sk_buff* %237, i8* %238)
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* @IP_VS_CONN_F_TUNNEL_TYPE_GUE, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %276

243:                                              ; preds = %231
  store i32 0, i32* %31, align 4
  %244 = load %struct.net*, %struct.net** %11, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %246 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %247 = call i64 @ipvs_gue_encap(%struct.net* %244, %struct.sk_buff* %245, %struct.ip_vs_conn* %246, i8** %15)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %351

250:                                              ; preds = %243
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_CSUM, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load i32, i32* %26, align 4
  %257 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255, %250
  store i32 1, i32* %31, align 4
  br label %261

261:                                              ; preds = %260, %255
  %262 = load i32, i32* %31, align 4
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %269 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %273 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @udp_set_csum(i32 %265, %struct.sk_buff* %266, i32 %267, i32 %271, i32 %274)
  br label %286

276:                                              ; preds = %231
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* @IP_VS_CONN_F_TUNNEL_TYPE_GRE, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load %struct.net*, %struct.net** %11, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %283 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %284 = call i32 @ipvs_gre_encap(%struct.net* %281, %struct.sk_buff* %282, %struct.ip_vs_conn* %283, i8** %15)
  br label %285

285:                                              ; preds = %280, %276
  br label %286

286:                                              ; preds = %285, %261
  %287 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %288 = call i32 @skb_push(%struct.sk_buff* %287, i32 48)
  %289 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %290 = call i32 @skb_reset_network_header(%struct.sk_buff* %289)
  %291 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %292 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %291)
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = call i32 @memset(i32* %293, i32 0, i32 4)
  %295 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %296 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %295)
  store %struct.iphdr* %296, %struct.iphdr** %20, align 8
  %297 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %298 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %297, i32 0, i32 0
  store i32 4, i32* %298, align 8
  %299 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %300 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %299, i32 0, i32 1
  store i32 12, i32* %300, align 4
  %301 = load i32, i32* %18, align 4
  %302 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %303 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %302, i32 0, i32 7
  store i32 %301, i32* %303, align 8
  %304 = load i8*, i8** %15, align 8
  %305 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %306 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %305, i32 0, i32 6
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** %16, align 8
  %308 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %309 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %308, i32 0, i32 5
  store i8* %307, i8** %309, align 8
  %310 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %311 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 4
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %13, align 4
  %317 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %318 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 8
  %319 = load i8*, i8** %17, align 8
  %320 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  %322 = load %struct.net*, %struct.net** %11, align 8
  %323 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %324 = call i32 @ip_select_ident(%struct.net* %322, %struct.sk_buff* %323, i32* null)
  %325 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %326 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %325, i32 0, i32 1
  store i32 1, i32* %326, align 8
  %327 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %328 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %329 = call i32 @ip_vs_tunnel_xmit_prepare(%struct.sk_buff* %327, %struct.ip_vs_conn* %328)
  store i32 %329, i32* %22, align 4
  %330 = load i32, i32* %22, align 4
  %331 = load i32, i32* @NF_ACCEPT, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %340

333:                                              ; preds = %286
  %334 = load %struct.net*, %struct.net** %11, align 8
  %335 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %336 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %339 = call i32 @ip_local_out(%struct.net* %334, i32 %337, %struct.sk_buff* %338)
  br label %348

340:                                              ; preds = %286
  %341 = load i32, i32* %22, align 4
  %342 = load i32, i32* @NF_DROP, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %346 = call i32 @kfree_skb(%struct.sk_buff* %345)
  br label %347

347:                                              ; preds = %344, %340
  br label %348

348:                                              ; preds = %347, %333
  %349 = call i32 @LeaveFunction(i32 10)
  %350 = load i32, i32* @NF_STOLEN, align 4
  store i32 %350, i32* %5, align 4
  br label %361

351:                                              ; preds = %249, %230, %162, %62
  %352 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %353 = call i64 @IS_ERR(%struct.sk_buff* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %357 = call i32 @kfree_skb(%struct.sk_buff* %356)
  br label %358

358:                                              ; preds = %355, %351
  %359 = call i32 @LeaveFunction(i32 10)
  %360 = load i32, i32* @NF_STOLEN, align 4
  store i32 %360, i32* %5, align 4
  br label %361

361:                                              ; preds = %358, %348, %66
  %362 = load i32, i32* %5, align 4
  ret i32 %362
}

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i32 @__ip_vs_get_out_rt(%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.TYPE_7__*, i32, i32, i32*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @ip_vs_send_or_cont(i32, %struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @gre_calc_hlen(i32) #1

declare dso_local i64 @sysctl_pmtu_disc(%struct.netns_ipvs*) #1

declare dso_local %struct.sk_buff* @ip_vs_prepare_tunneled_skb(%struct.sk_buff*, i32, i32, i8**, i32*, i8**, i8**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @__tun_gso_type_mask(i32, i32) #1

declare dso_local i64 @iptunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_inner_ipproto(%struct.sk_buff*, i8*) #1

declare dso_local i64 @ipvs_gue_encap(%struct.net*, %struct.sk_buff*, %struct.ip_vs_conn*, i8**) #1

declare dso_local i32 @udp_set_csum(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ipvs_gre_encap(%struct.net*, %struct.sk_buff*, %struct.ip_vs_conn*, i8**) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_select_ident(%struct.net*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_vs_tunnel_xmit_prepare(%struct.sk_buff*, %struct.ip_vs_conn*) #1

declare dso_local i32 @ip_local_out(%struct.net*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @LeaveFunction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
