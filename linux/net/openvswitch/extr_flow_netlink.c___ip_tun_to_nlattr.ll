; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___ip_tun_to_nlattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___ip_tun_to_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_key = type { i32, i64, i64, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_ID = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_PAD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_BRIDGE = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV4_INFO_BRIDGE = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV4_SRC = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV4_DST = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV6_SRC = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV6_DST = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_TOS = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_TTL = common dso_local global i32 0, align 4
@TUNNEL_DONT_FRAGMENT = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_CSUM = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_TP_SRC = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_TP_DST = common dso_local global i32 0, align 4
@TUNNEL_OAM = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_OAM = common dso_local global i32 0, align 4
@TUNNEL_GENEVE_OPT = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_GENEVE_OPTS = common dso_local global i32 0, align 4
@TUNNEL_VXLAN_OPT = common dso_local global i32 0, align 4
@TUNNEL_ERSPAN_OPT = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_ERSPAN_OPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_tunnel_key*, i8*, i32, i16, i32)* @__ip_tun_to_nlattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip_tun_to_nlattr(%struct.sk_buff* %0, %struct.ip_tunnel_key* %1, i8* %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_tunnel_key*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.ip_tunnel_key* %1, %struct.ip_tunnel_key** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %14 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TUNNEL_KEY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %6
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_ID, align 4
  %23 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_PAD, align 4
  %27 = call i64 @nla_put_be64(%struct.sk_buff* %21, i32 %22, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %292

32:                                               ; preds = %20, %6
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @IP_TUNNEL_INFO_BRIDGE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV4_INFO_BRIDGE, align 4
  %40 = call i64 @nla_put_flag(%struct.sk_buff* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %7, align 4
  br label %292

48:                                               ; preds = %32
  %49 = load i16, i16* %12, align 2
  %50 = zext i16 %49 to i32
  switch i32 %50, label %131 [
    i32 129, label %51
    i32 128, label %92
  ]

51:                                               ; preds = %48
  %52 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %53 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV4_SRC, align 4
  %61 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %62 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nla_put_in_addr(%struct.sk_buff* %59, i32 %60, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @EMSGSIZE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %292

71:                                               ; preds = %58, %51
  %72 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV4_DST, align 4
  %81 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @nla_put_in_addr(%struct.sk_buff* %79, i32 %80, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @EMSGSIZE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %292

91:                                               ; preds = %78, %71
  br label %131

92:                                               ; preds = %48
  %93 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %94 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = call i32 @ipv6_addr_any(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV6_SRC, align 4
  %102 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %103 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = call i32 @nla_put_in6_addr(%struct.sk_buff* %100, i32 %101, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @EMSGSIZE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %292

111:                                              ; preds = %99, %92
  %112 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %113 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = call i32 @ipv6_addr_any(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %111
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV6_DST, align 4
  %121 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %122 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = call i32 @nla_put_in6_addr(%struct.sk_buff* %119, i32 %120, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @EMSGSIZE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  br label %292

130:                                              ; preds = %118, %111
  br label %131

131:                                              ; preds = %48, %130, %91
  %132 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %133 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_TOS, align 4
  %139 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %140 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @nla_put_u8(%struct.sk_buff* %137, i32 %138, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* @EMSGSIZE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %292

147:                                              ; preds = %136, %131
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_TTL, align 4
  %150 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %151 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @nla_put_u8(%struct.sk_buff* %148, i32 %149, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @EMSGSIZE, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %292

158:                                              ; preds = %147
  %159 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %160 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TUNNEL_DONT_FRAGMENT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT, align 4
  %168 = call i64 @nla_put_flag(%struct.sk_buff* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @EMSGSIZE, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %292

173:                                              ; preds = %165, %158
  %174 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %175 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @TUNNEL_CSUM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %182 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_CSUM, align 4
  %183 = call i64 @nla_put_flag(%struct.sk_buff* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @EMSGSIZE, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %7, align 4
  br label %292

188:                                              ; preds = %180, %173
  %189 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %190 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_TP_SRC, align 4
  %196 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %197 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @nla_put_be16(%struct.sk_buff* %194, i32 %195, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load i32, i32* @EMSGSIZE, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %7, align 4
  br label %292

204:                                              ; preds = %193, %188
  %205 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %206 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %211 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_TP_DST, align 4
  %212 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %213 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @nla_put_be16(%struct.sk_buff* %210, i32 %211, i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* @EMSGSIZE, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %7, align 4
  br label %292

220:                                              ; preds = %209, %204
  %221 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %222 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @TUNNEL_OAM, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %229 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_OAM, align 4
  %230 = call i64 @nla_put_flag(%struct.sk_buff* %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @EMSGSIZE, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %7, align 4
  br label %292

235:                                              ; preds = %227, %220
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %291

238:                                              ; preds = %235
  %239 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %240 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @TUNNEL_GENEVE_OPT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %238
  %246 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %247 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_GENEVE_OPTS, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i8*, i8** %10, align 8
  %250 = call i64 @nla_put(%struct.sk_buff* %246, i32 %247, i32 %248, i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load i32, i32* @EMSGSIZE, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %7, align 4
  br label %292

255:                                              ; preds = %245, %238
  %256 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %257 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @TUNNEL_VXLAN_OPT, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %255
  %263 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = load i32, i32* %11, align 4
  %266 = call i64 @vxlan_opt_to_nlattr(%struct.sk_buff* %263, i8* %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load i32, i32* @EMSGSIZE, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %7, align 4
  br label %292

271:                                              ; preds = %262, %255
  %272 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %273 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @TUNNEL_ERSPAN_OPT, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %271
  %279 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %280 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_ERSPAN_OPTS, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i8*, i8** %10, align 8
  %283 = call i64 @nla_put(%struct.sk_buff* %279, i32 %280, i32 %281, i8* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = load i32, i32* @EMSGSIZE, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %7, align 4
  br label %292

288:                                              ; preds = %278, %271
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290, %235
  store i32 0, i32* %7, align 4
  br label %292

292:                                              ; preds = %291, %285, %268, %252, %232, %217, %201, %185, %170, %155, %144, %127, %108, %88, %68, %46, %29
  %293 = load i32, i32* %7, align 4
  ret i32 %293
}

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i64 @vxlan_opt_to_nlattr(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
