; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ipvs.c_ipvs_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ipvs.c_ipvs_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_ipvs_mtinfo* }
%struct.xt_ipvs_mtinfo = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.netns_ipvs = type { i32 }
%struct.ip_vs_iphdr = type { i64 }
%struct.ip_vs_protocol = type { %struct.ip_vs_conn* (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr.0*)* }
%struct.ip_vs_conn = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ip_vs_iphdr.0 = type opaque
%struct.nf_conn = type { i32 }

@XT_IPVS_IPVS_PROPERTY = common dso_local global i32 0, align 4
@XT_IPVS_PROTO = common dso_local global i32 0, align 4
@XT_IPVS_VPORT = common dso_local global i32 0, align 4
@XT_IPVS_VPORTCTL = common dso_local global i32 0, align 4
@XT_IPVS_DIR = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@XT_IPVS_METHOD = common dso_local global i32 0, align 4
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@XT_IPVS_VADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"match=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ipvs_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvs_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_ipvs_mtinfo*, align 8
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_vs_iphdr, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca %struct.ip_vs_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %14 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %15 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %14, i32 0, i32 0
  %16 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %15, align 8
  store %struct.xt_ipvs_mtinfo* %16, %struct.xt_ipvs_mtinfo** %5, align 8
  %17 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %18 = call i32 @xt_net(%struct.xt_action_param* %17)
  %19 = call %struct.netns_ipvs* @net_ipvs(i32 %18)
  store %struct.netns_ipvs* %19, %struct.netns_ipvs** %6, align 8
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %21 = call i32 @xt_family(%struct.xt_action_param* %20)
  store i32 %21, i32* %7, align 4
  store i32 1, i32* %11, align 4
  %22 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %23 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XT_IPVS_IPVS_PROPERTY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %32 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XT_IPVS_IPVS_PROPERTY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = xor i32 %30, %39
  store i32 %40, i32* %11, align 4
  br label %261

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %261

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @ip_vs_fill_iph_skb(i32 %48, %struct.sk_buff* %49, i32 1, %struct.ip_vs_iphdr* %8)
  %51 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %52 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @XT_IPVS_PROTO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %61 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %66 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XT_IPVS_PROTO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = xor i32 %64, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %261

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %47
  %78 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i64 %79)
  store %struct.ip_vs_protocol* %80, %struct.ip_vs_protocol** %9, align 8
  %81 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %82 = icmp ne %struct.ip_vs_protocol* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %261

88:                                               ; preds = %77
  %89 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %90 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %89, i32 0, i32 0
  %91 = load %struct.ip_vs_conn* (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr.0*)*, %struct.ip_vs_conn* (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr.0*)** %90, align 8
  %92 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = bitcast %struct.ip_vs_iphdr* %8 to %struct.ip_vs_iphdr.0*
  %96 = call %struct.ip_vs_conn* %91(%struct.netns_ipvs* %92, i32 %93, %struct.sk_buff* %94, %struct.ip_vs_iphdr.0* %95)
  store %struct.ip_vs_conn* %96, %struct.ip_vs_conn** %10, align 8
  %97 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %98 = icmp eq %struct.ip_vs_conn* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 0, i32* %11, align 4
  br label %261

103:                                              ; preds = %88
  %104 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %105 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @XT_IPVS_VPORT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %112 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %115 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  %118 = zext i1 %117 to i32
  %119 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %120 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @XT_IPVS_VPORT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = xor i32 %118, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %110
  store i32 0, i32* %11, align 4
  br label %258

130:                                              ; preds = %110
  br label %131

131:                                              ; preds = %130, %103
  %132 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %133 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @XT_IPVS_VPORTCTL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %168

138:                                              ; preds = %131
  %139 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %140 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = icmp ne %struct.TYPE_2__* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %145 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %150 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br label %153

153:                                              ; preds = %143, %138
  %154 = phi i1 [ false, %138 ], [ %152, %143 ]
  %155 = zext i1 %154 to i32
  %156 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %157 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @XT_IPVS_VPORTCTL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = xor i32 %155, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  br label %258

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %131
  %169 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %170 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XT_IPVS_DIR, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %168
  %176 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %177 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %176, i32* %12)
  store %struct.nf_conn* %177, %struct.nf_conn** %13, align 8
  %178 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %179 = icmp eq %struct.nf_conn* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 0, i32* %11, align 4
  br label %258

181:                                              ; preds = %175
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @IP_CT_IS_REPLY, align 4
  %184 = icmp uge i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %187 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @XT_IPVS_DIR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = xor i32 %185, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %181
  store i32 0, i32* %11, align 4
  br label %258

198:                                              ; preds = %181
  br label %199

199:                                              ; preds = %198, %168
  %200 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %201 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @XT_IPVS_METHOD, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %199
  %207 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %208 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %213 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %211, %214
  %216 = zext i1 %215 to i32
  %217 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %218 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @XT_IPVS_METHOD, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = xor i32 %216, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %206
  store i32 0, i32* %11, align 4
  br label %258

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %228, %199
  %230 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %231 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @XT_IPVS_VADDR, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %229
  %237 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %238 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %237, i32 0, i32 2
  %239 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %240 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %239, i32 0, i32 7
  %241 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %242 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %241, i32 0, i32 6
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @ipvs_mt_addrcmp(i32* %238, i32* %240, i32* %242, i32 %243)
  %245 = load %struct.xt_ipvs_mtinfo*, %struct.xt_ipvs_mtinfo** %5, align 8
  %246 = getelementptr inbounds %struct.xt_ipvs_mtinfo, %struct.xt_ipvs_mtinfo* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @XT_IPVS_VADDR, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = xor i32 %244, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %236
  store i32 0, i32* %11, align 4
  br label %258

256:                                              ; preds = %236
  br label %257

257:                                              ; preds = %256, %229
  br label %258

258:                                              ; preds = %257, %255, %227, %197, %180, %166, %129
  %259 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %260 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %259)
  br label %261

261:                                              ; preds = %258, %102, %87, %75, %46, %27
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %11, align 4
  ret i32 %264
}

declare dso_local %struct.netns_ipvs* @net_ipvs(i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @ip_vs_fill_iph_skb(i32, %struct.sk_buff*, i32, %struct.ip_vs_iphdr*) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ipvs_mt_addrcmp(i32*, i32*, i32*, i32) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
