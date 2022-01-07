; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_event_query.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_event_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mld2_query = type { i64, i32 }
%struct.ifmcaddr6 = type { i32, i32, i32, %struct.ifmcaddr6* }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.mld_msg = type { %struct.in6_addr }
%struct.TYPE_3__ = type { i64, i32, %struct.in6_addr }
%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IP6SKB_ROUTERALERT = common dso_local global i32 0, align 4
@IPV6_OPT_ROUTERALERT_MLD = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@MLD_V1_QUERY_LEN = common dso_local global i32 0, align 4
@MLD_V2_QUERY_LEN_MIN = common dso_local global i32 0, align 4
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@MAF_GSQUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igmp6_event_query(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mld2_query*, align 8
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca %struct.mld_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.mld2_query* null, %struct.mld2_query** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %309

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ntohs(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i64 @skb_network_header_len(%struct.sk_buff* %30)
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = call i32 @ipv6_addr_type(%struct.in6_addr* %38)
  %40 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %21
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %65, label %49

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IP6SKB_ROUTERALERT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @IPV6_OPT_ROUTERALERT_MLD, align 4
  %63 = call i64 @htons(i32 %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57, %49, %43, %21
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %309

68:                                               ; preds = %57
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.inet6_dev* @__in6_dev_get(i32 %71)
  store %struct.inet6_dev* %72, %struct.inet6_dev** %8, align 8
  %73 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %74 = icmp ne %struct.inet6_dev* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %309

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i64 @icmp6_hdr(%struct.sk_buff* %77)
  %79 = inttoptr i64 %78 to %struct.mld_msg*
  store %struct.mld_msg* %79, %struct.mld_msg** %9, align 8
  %80 = load %struct.mld_msg*, %struct.mld_msg** %9, align 8
  %81 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %80, i32 0, i32 0
  store %struct.in6_addr* %81, %struct.in6_addr** %6, align 8
  %82 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %83 = call i32 @ipv6_addr_type(%struct.in6_addr* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %309

95:                                               ; preds = %87, %76
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @MLD_V1_QUERY_LEN, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %309

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @MLD_V1_QUERY_LEN, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %108 = call i64 @mld_in_v1_mode(%struct.inet6_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106, %102
  %111 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %112 = load %struct.mld_msg*, %struct.mld_msg** %9, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @MLD_V1_QUERY_LEN, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @mld_process_v1(%struct.inet6_dev* %111, %struct.mld_msg* %112, i64* %7, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %2, align 4
  br label %309

122:                                              ; preds = %110
  br label %192

123:                                              ; preds = %106
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @MLD_V2_QUERY_LEN_MIN, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %188

127:                                              ; preds = %123
  store i32 12, i32* %14, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @pskb_may_pull(%struct.sk_buff* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %309

135:                                              ; preds = %127
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %137 = call i64 @skb_transport_header(%struct.sk_buff* %136)
  %138 = inttoptr i64 %137 to %struct.mld2_query*
  store %struct.mld2_query* %138, %struct.mld2_query** %4, align 8
  %139 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %140 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %141 = call i32 @mld_process_v2(%struct.inet6_dev* %139, %struct.mld2_query* %140, i64* %7)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %2, align 4
  br label %309

146:                                              ; preds = %135
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %152 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %309

158:                                              ; preds = %150
  %159 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %160 = call i32 @mld_gq_start_timer(%struct.inet6_dev* %159)
  store i32 0, i32* %2, align 4
  br label %309

161:                                              ; preds = %146
  %162 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %163 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %171 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @ntohs(i64 %172)
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = add i64 %169, %175
  %177 = trunc i64 %176 to i32
  %178 = call i32 @pskb_may_pull(%struct.sk_buff* %167, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %166
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %2, align 4
  br label %309

183:                                              ; preds = %166
  %184 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %185 = call i64 @skb_transport_header(%struct.sk_buff* %184)
  %186 = inttoptr i64 %185 to %struct.mld2_query*
  store %struct.mld2_query* %186, %struct.mld2_query** %4, align 8
  store i32 1, i32* %11, align 4
  br label %187

187:                                              ; preds = %183, %161
  br label %191

188:                                              ; preds = %123
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %309

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %191, %122
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %195 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %194, i32 0, i32 0
  %196 = call i32 @read_lock_bh(i32* %195)
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %193
  %201 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %202 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %201, i32 0, i32 1
  %203 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %202, align 8
  store %struct.ifmcaddr6* %203, %struct.ifmcaddr6** %5, align 8
  br label %204

204:                                              ; preds = %217, %200
  %205 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %206 = icmp ne %struct.ifmcaddr6* %205, null
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %209 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %208, i32 0, i32 1
  %210 = call i32 @spin_lock_bh(i32* %209)
  %211 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @igmp6_group_queried(%struct.ifmcaddr6* %211, i64 %212)
  %214 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %215 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %214, i32 0, i32 1
  %216 = call i32 @spin_unlock_bh(i32* %215)
  br label %217

217:                                              ; preds = %207
  %218 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %219 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %218, i32 0, i32 3
  %220 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %219, align 8
  store %struct.ifmcaddr6* %220, %struct.ifmcaddr6** %5, align 8
  br label %204

221:                                              ; preds = %204
  br label %305

222:                                              ; preds = %193
  %223 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %224 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %223, i32 0, i32 1
  %225 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %224, align 8
  store %struct.ifmcaddr6* %225, %struct.ifmcaddr6** %5, align 8
  br label %226

226:                                              ; preds = %300, %222
  %227 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %228 = icmp ne %struct.ifmcaddr6* %227, null
  br i1 %228, label %229, label %304

229:                                              ; preds = %226
  %230 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %231 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %232 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %231, i32 0, i32 2
  %233 = call i32 @ipv6_addr_equal(%struct.in6_addr* %230, i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %229
  br label %300

236:                                              ; preds = %229
  %237 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %238 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %237, i32 0, i32 1
  %239 = call i32 @spin_lock_bh(i32* %238)
  %240 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %241 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %236
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* @MAF_GSQUERY, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %253 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %249, %246
  br label %274

257:                                              ; preds = %236
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = load i32, i32* @MAF_GSQUERY, align 4
  %262 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %263 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %273

266:                                              ; preds = %257
  %267 = load i32, i32* @MAF_GSQUERY, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %270 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %266, %260
  br label %274

274:                                              ; preds = %273, %256
  %275 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %276 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @MAF_GSQUERY, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %274
  %282 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %283 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %284 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @ntohs(i64 %285)
  %287 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %288 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @mld_marksources(%struct.ifmcaddr6* %282, i32 %286, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %281, %274
  %293 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %294 = load i64, i64* %7, align 8
  %295 = call i32 @igmp6_group_queried(%struct.ifmcaddr6* %293, i64 %294)
  br label %296

296:                                              ; preds = %292, %281
  %297 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %298 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %297, i32 0, i32 1
  %299 = call i32 @spin_unlock_bh(i32* %298)
  br label %304

300:                                              ; preds = %235
  %301 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %302 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %301, i32 0, i32 3
  %303 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %302, align 8
  store %struct.ifmcaddr6* %303, %struct.ifmcaddr6** %5, align 8
  br label %226

304:                                              ; preds = %296, %226
  br label %305

305:                                              ; preds = %304, %221
  %306 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %307 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %306, i32 0, i32 0
  %308 = call i32 @read_unlock_bh(i32* %307)
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %305, %188, %180, %158, %155, %144, %132, %120, %99, %92, %75, %65, %18
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i64 @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @mld_in_v1_mode(%struct.inet6_dev*) #1

declare dso_local i32 @mld_process_v1(%struct.inet6_dev*, %struct.mld_msg*, i64*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @mld_process_v2(%struct.inet6_dev*, %struct.mld2_query*, i64*) #1

declare dso_local i32 @mld_gq_start_timer(%struct.inet6_dev*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @igmp6_group_queried(%struct.ifmcaddr6*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i64 @mld_marksources(%struct.ifmcaddr6*, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
