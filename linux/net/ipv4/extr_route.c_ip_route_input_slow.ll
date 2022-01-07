; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_slow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32, i32 }
%struct.fib_result = type { i64, i32*, i32* }
%struct.in_device = type { i32 }
%struct.flow_keys = type { i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.rtable = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.flowi4 = type { i64, i64, i64, i32, i8*, i8*, i64, i32, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.fib_nh_common = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i64 0, align 8
@BC_FORWARDING = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@RTN_UNICAST = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@in_brd = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@NOPOLICY = common dso_local global i32 0, align 4
@ip_rt_bug = common dso_local global i32 0, align 4
@in_slow_tot = common dso_local global i32 0, align 4
@RTN_UNREACHABLE = common dso_local global i64 0, align 8
@ip_error = common dso_local global i64 0, align 8
@lwtunnel_input = common dso_local global i64 0, align 8
@in_no_route = common dso_local global i32 0, align 4
@in_martian_dst = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8*, i8*, i32, %struct.net_device*, %struct.fib_result*)* @ip_route_input_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_route_input_slow(%struct.sk_buff* %0, i8* %1, i8* %2, i32 %3, %struct.net_device* %4, %struct.fib_result* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.fib_result*, align 8
  %13 = alloca %struct.in_device*, align 8
  %14 = alloca %struct.flow_keys*, align 8
  %15 = alloca %struct.flow_keys, align 4
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.ip_tunnel_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.rtable*, align 8
  %22 = alloca %struct.flowi4, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.fib_nh_common*, align 8
  %25 = alloca %struct.fib_nh_common*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  store %struct.fib_result* %5, %struct.fib_result** %12, align 8
  %26 = load %struct.net_device*, %struct.net_device** %11, align 8
  %27 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %26)
  store %struct.in_device* %27, %struct.in_device** %13, align 8
  store %struct.flow_keys* null, %struct.flow_keys** %14, align 8
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = call %struct.net* @dev_net(%struct.net_device* %28)
  store %struct.net* %29, %struct.net** %16, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i32 1, i32* %23, align 4
  %32 = load %struct.in_device*, %struct.in_device** %13, align 8
  %33 = icmp ne %struct.in_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %6
  br label %221

35:                                               ; preds = %6
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %36)
  store %struct.ip_tunnel_info* %37, %struct.ip_tunnel_info** %17, align 8
  %38 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %39 = icmp ne %struct.ip_tunnel_info* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %42 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %17, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 12
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %40, %35
  %55 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 12
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @skb_dst_drop(%struct.sk_buff* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @ipv4_is_multicast(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @ipv4_is_lbcast(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %57
  br label %422

68:                                               ; preds = %63
  %69 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %70 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %72 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i64 @ipv4_is_lbcast(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = load i8*, i8** %9, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %68
  br label %223

83:                                               ; preds = %79, %76
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @ipv4_is_zeronet(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %422

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = call i64 @ipv4_is_zeronet(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %413

93:                                               ; preds = %88
  %94 = load i8*, i8** %8, align 8
  %95 = call i64 @ipv4_is_loopback(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.in_device*, %struct.in_device** %13, align 8
  %99 = load %struct.net*, %struct.net** %16, align 8
  %100 = call i32 @IN_DEV_NET_ROUTE_LOCALNET(%struct.in_device* %98, %struct.net* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %413

103:                                              ; preds = %97
  br label %116

104:                                              ; preds = %93
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @ipv4_is_loopback(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.in_device*, %struct.in_device** %13, align 8
  %110 = load %struct.net*, %struct.net** %16, align 8
  %111 = call i32 @IN_DEV_NET_ROUTE_LOCALNET(%struct.in_device* %109, %struct.net* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %422

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %103
  %117 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 11
  store i64 0, i64* %117, align 8
  %118 = load %struct.net_device*, %struct.net_device** %11, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 10
  store i32 %120, i32* %121, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 9
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %129 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 7
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 6
  store i64 0, i64* %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 5
  store i8* %131, i8** %132, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 4
  store i8* %133, i8** %134, align 8
  %135 = load %struct.net*, %struct.net** %16, align 8
  %136 = call i32 @sock_net_uid(%struct.net* %135, i32* null)
  %137 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 3
  store i32 %136, i32* %137, align 8
  %138 = load %struct.net*, %struct.net** %16, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = call i64 @fib4_rules_early_flow_dissect(%struct.net* %138, %struct.sk_buff* %139, %struct.flowi4* %22, %struct.flow_keys* %15)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %116
  store %struct.flow_keys* %15, %struct.flow_keys** %14, align 8
  br label %147

143:                                              ; preds = %116
  %144 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 0
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %142
  %148 = load %struct.net*, %struct.net** %16, align 8
  %149 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %150 = call i32 @fib_lookup(%struct.net* %148, %struct.flowi4* %22, %struct.fib_result* %149, i32 0)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.in_device*, %struct.in_device** %13, align 8
  %155 = call i32 @IN_DEV_FORWARD(%struct.in_device* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* @EHOSTUNREACH, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %157, %153
  br label %403

161:                                              ; preds = %147
  %162 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %163 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @RTN_BROADCAST, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.in_device*, %struct.in_device** %13, align 8
  %169 = call i64 @IN_DEV_BFORWARD(%struct.in_device* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %212

172:                                              ; preds = %167
  %173 = load %struct.net*, %struct.net** %16, align 8
  %174 = load i32, i32* @BC_FORWARDING, align 4
  %175 = call i64 @IPV4_DEVCONF_ALL(%struct.net* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 0, i32* %23, align 4
  br label %178

178:                                              ; preds = %177, %172
  br label %223

179:                                              ; preds = %161
  %180 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %181 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @RTN_LOCAL, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %179
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.net_device*, %struct.net_device** %11, align 8
  %191 = load %struct.in_device*, %struct.in_device** %13, align 8
  %192 = call i32 @fib_validate_source(%struct.sk_buff* %186, i8* %187, i8* %188, i32 %189, i32 0, %struct.net_device* %190, %struct.in_device* %191, i64* %20)
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %18, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  br label %422

196:                                              ; preds = %185
  br label %255

197:                                              ; preds = %179
  %198 = load %struct.in_device*, %struct.in_device** %13, align 8
  %199 = call i32 @IN_DEV_FORWARD(%struct.in_device* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* @EHOSTUNREACH, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %18, align 4
  br label %403

204:                                              ; preds = %197
  %205 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %206 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @RTN_UNICAST, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %413

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %171
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %215 = load %struct.in_device*, %struct.in_device** %13, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.flow_keys*, %struct.flow_keys** %14, align 8
  %220 = call i32 @ip_mkroute_input(%struct.sk_buff* %213, %struct.fib_result* %214, %struct.in_device* %215, i8* %216, i8* %217, i32 %218, %struct.flow_keys* %219)
  store i32 %220, i32* %18, align 4
  br label %221

221:                                              ; preds = %422, %419, %416, %398, %281, %212, %34
  %222 = load i32, i32* %18, align 4
  ret i32 %222

223:                                              ; preds = %178, %82
  %224 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @ETH_P_IP, align 4
  %228 = call i64 @htons(i32 %227)
  %229 = icmp ne i64 %226, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %416

231:                                              ; preds = %223
  %232 = load i8*, i8** %9, align 8
  %233 = call i64 @ipv4_is_zeronet(i8* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %231
  %236 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %237 = load i8*, i8** %9, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.net_device*, %struct.net_device** %11, align 8
  %240 = load %struct.in_device*, %struct.in_device** %13, align 8
  %241 = call i32 @fib_validate_source(%struct.sk_buff* %236, i8* %237, i8* null, i32 %238, i32 0, %struct.net_device* %239, %struct.in_device* %240, i64* %20)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  br label %422

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245, %231
  %247 = load i32, i32* @RTCF_BROADCAST, align 4
  %248 = load i32, i32* %19, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %19, align 4
  %250 = load i64, i64* @RTN_BROADCAST, align 8
  %251 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %252 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* @in_brd, align 4
  %254 = call i32 @RT_CACHE_STAT_INC(i32 %253)
  br label %255

255:                                              ; preds = %403, %246, %196
  %256 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %257 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load i64, i64* %20, align 8
  %262 = icmp ne i64 %261, 0
  %263 = xor i1 %262, true
  br label %264

264:                                              ; preds = %260, %255
  %265 = phi i1 [ false, %255 ], [ %263, %260 ]
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %23, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %23, align 4
  %269 = load i32, i32* %23, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %287

271:                                              ; preds = %264
  %272 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %273 = call %struct.fib_nh_common* @FIB_RES_NHC(%struct.fib_result* byval(%struct.fib_result) align 8 %272)
  store %struct.fib_nh_common* %273, %struct.fib_nh_common** %24, align 8
  %274 = load %struct.fib_nh_common*, %struct.fib_nh_common** %24, align 8
  %275 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call %struct.rtable* @rcu_dereference(i32 %276)
  store %struct.rtable* %277, %struct.rtable** %21, align 8
  %278 = load %struct.rtable*, %struct.rtable** %21, align 8
  %279 = call i64 @rt_cache_valid(%struct.rtable* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %271
  %282 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %283 = load %struct.rtable*, %struct.rtable** %21, align 8
  %284 = getelementptr inbounds %struct.rtable, %struct.rtable* %283, i32 0, i32 2
  %285 = call i32 @skb_dst_set_noref(%struct.sk_buff* %282, %struct.TYPE_9__* %284)
  store i32 0, i32* %18, align 4
  br label %221

286:                                              ; preds = %271
  br label %287

287:                                              ; preds = %286, %264
  %288 = load %struct.net_device*, %struct.net_device** %11, align 8
  %289 = call i64 @l3mdev_master_dev_rcu(%struct.net_device* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  br label %297

292:                                              ; preds = %287
  %293 = load %struct.net*, %struct.net** %16, align 8
  %294 = getelementptr inbounds %struct.net, %struct.net* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  br label %297

297:                                              ; preds = %292, %291
  %298 = phi i64 [ %289, %291 ], [ %296, %292 ]
  %299 = trunc i64 %298 to i32
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* @RTCF_LOCAL, align 4
  %302 = or i32 %300, %301
  %303 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %304 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.in_device*, %struct.in_device** %13, align 8
  %307 = load i32, i32* @NOPOLICY, align 4
  %308 = call i32 @IN_DEV_CONF_GET(%struct.in_device* %306, i32 %307)
  %309 = load i32, i32* %23, align 4
  %310 = call %struct.rtable* @rt_dst_alloc(i32 %299, i32 %302, i64 %305, i32 %308, i32 0, i32 %309)
  store %struct.rtable* %310, %struct.rtable** %21, align 8
  %311 = load %struct.rtable*, %struct.rtable** %21, align 8
  %312 = icmp ne %struct.rtable* %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %297
  br label %419

314:                                              ; preds = %297
  %315 = load i32, i32* @ip_rt_bug, align 4
  %316 = load %struct.rtable*, %struct.rtable** %21, align 8
  %317 = getelementptr inbounds %struct.rtable, %struct.rtable* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 4
  store i32 %315, i32* %318, align 8
  %319 = load %struct.rtable*, %struct.rtable** %21, align 8
  %320 = getelementptr inbounds %struct.rtable, %struct.rtable* %319, i32 0, i32 0
  store i32 1, i32* %320, align 8
  %321 = load i32, i32* @in_slow_tot, align 4
  %322 = call i32 @RT_CACHE_STAT_INC(i32 %321)
  %323 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %324 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @RTN_UNREACHABLE, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %344

328:                                              ; preds = %314
  %329 = load i64, i64* @ip_error, align 8
  %330 = load %struct.rtable*, %struct.rtable** %21, align 8
  %331 = getelementptr inbounds %struct.rtable, %struct.rtable* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  store i64 %329, i64* %332, align 8
  %333 = load i32, i32* %18, align 4
  %334 = sub nsw i32 0, %333
  %335 = load %struct.rtable*, %struct.rtable** %21, align 8
  %336 = getelementptr inbounds %struct.rtable, %struct.rtable* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 1
  store i32 %334, i32* %337, align 8
  %338 = load i32, i32* @RTCF_LOCAL, align 4
  %339 = xor i32 %338, -1
  %340 = load %struct.rtable*, %struct.rtable** %21, align 8
  %341 = getelementptr inbounds %struct.rtable, %struct.rtable* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, %339
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %328, %314
  %345 = load i32, i32* %23, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %398

347:                                              ; preds = %344
  %348 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %349 = call %struct.fib_nh_common* @FIB_RES_NHC(%struct.fib_result* byval(%struct.fib_result) align 8 %348)
  store %struct.fib_nh_common* %349, %struct.fib_nh_common** %25, align 8
  %350 = load %struct.fib_nh_common*, %struct.fib_nh_common** %25, align 8
  %351 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call %struct.TYPE_10__* @lwtstate_get(i32 %352)
  %354 = load %struct.rtable*, %struct.rtable** %21, align 8
  %355 = getelementptr inbounds %struct.rtable, %struct.rtable* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 2
  store %struct.TYPE_10__* %353, %struct.TYPE_10__** %356, align 8
  %357 = load %struct.rtable*, %struct.rtable** %21, align 8
  %358 = getelementptr inbounds %struct.rtable, %struct.rtable* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = call i64 @lwtunnel_input_redirect(%struct.TYPE_10__* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %385

363:                                              ; preds = %347
  %364 = load %struct.rtable*, %struct.rtable** %21, align 8
  %365 = getelementptr inbounds %struct.rtable, %struct.rtable* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @lwtunnel_input, align 8
  %369 = icmp eq i64 %367, %368
  %370 = zext i1 %369 to i32
  %371 = call i32 @WARN_ON(i32 %370)
  %372 = load %struct.rtable*, %struct.rtable** %21, align 8
  %373 = getelementptr inbounds %struct.rtable, %struct.rtable* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.rtable*, %struct.rtable** %21, align 8
  %377 = getelementptr inbounds %struct.rtable, %struct.rtable* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 2
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 0
  store i64 %375, i64* %380, align 8
  %381 = load i64, i64* @lwtunnel_input, align 8
  %382 = load %struct.rtable*, %struct.rtable** %21, align 8
  %383 = getelementptr inbounds %struct.rtable, %struct.rtable* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  store i64 %381, i64* %384, align 8
  br label %385

385:                                              ; preds = %363, %347
  %386 = load %struct.fib_nh_common*, %struct.fib_nh_common** %25, align 8
  %387 = load %struct.rtable*, %struct.rtable** %21, align 8
  %388 = call i32 @rt_cache_route(%struct.fib_nh_common* %386, %struct.rtable* %387)
  %389 = icmp ne i32 %388, 0
  %390 = xor i1 %389, true
  %391 = zext i1 %390 to i32
  %392 = call i64 @unlikely(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %385
  %395 = load %struct.rtable*, %struct.rtable** %21, align 8
  %396 = call i32 @rt_add_uncached_list(%struct.rtable* %395)
  br label %397

397:                                              ; preds = %394, %385
  br label %398

398:                                              ; preds = %397, %344
  %399 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %400 = load %struct.rtable*, %struct.rtable** %21, align 8
  %401 = getelementptr inbounds %struct.rtable, %struct.rtable* %400, i32 0, i32 2
  %402 = call i32 @skb_dst_set(%struct.sk_buff* %399, %struct.TYPE_9__* %401)
  store i32 0, i32* %18, align 4
  br label %221

403:                                              ; preds = %201, %160
  %404 = load i32, i32* @in_no_route, align 4
  %405 = call i32 @RT_CACHE_STAT_INC(i32 %404)
  %406 = load i64, i64* @RTN_UNREACHABLE, align 8
  %407 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %408 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %407, i32 0, i32 0
  store i64 %406, i64* %408, align 8
  %409 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %410 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %409, i32 0, i32 2
  store i32* null, i32** %410, align 8
  %411 = load %struct.fib_result*, %struct.fib_result** %12, align 8
  %412 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %411, i32 0, i32 1
  store i32* null, i32** %412, align 8
  br label %255

413:                                              ; preds = %210, %102, %92
  %414 = load i32, i32* @in_martian_dst, align 4
  %415 = call i32 @RT_CACHE_STAT_INC(i32 %414)
  br label %416

416:                                              ; preds = %413, %230
  %417 = load i32, i32* @EINVAL, align 4
  %418 = sub nsw i32 0, %417
  store i32 %418, i32* %18, align 4
  br label %221

419:                                              ; preds = %313
  %420 = load i32, i32* @ENOBUFS, align 4
  %421 = sub nsw i32 0, %420
  store i32 %421, i32* %18, align 4
  br label %221

422:                                              ; preds = %244, %195, %113, %87, %67
  %423 = load %struct.net_device*, %struct.net_device** %11, align 8
  %424 = load %struct.in_device*, %struct.in_device** %13, align 8
  %425 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %426 = load i8*, i8** %8, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = call i32 @ip_handle_martian_source(%struct.net_device* %423, %struct.in_device* %424, %struct.sk_buff* %425, i8* %426, i8* %427)
  br label %221
}

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i64 @ipv4_is_multicast(i8*) #1

declare dso_local i64 @ipv4_is_lbcast(i8*) #1

declare dso_local i64 @ipv4_is_zeronet(i8*) #1

declare dso_local i64 @ipv4_is_loopback(i8*) #1

declare dso_local i32 @IN_DEV_NET_ROUTE_LOCALNET(%struct.in_device*, %struct.net*) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i64 @fib4_rules_early_flow_dissect(%struct.net*, %struct.sk_buff*, %struct.flowi4*, %struct.flow_keys*) #1

declare dso_local i32 @fib_lookup(%struct.net*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @IN_DEV_FORWARD(%struct.in_device*) #1

declare dso_local i64 @IN_DEV_BFORWARD(%struct.in_device*) #1

declare dso_local i64 @IPV4_DEVCONF_ALL(%struct.net*, i32) #1

declare dso_local i32 @fib_validate_source(%struct.sk_buff*, i8*, i8*, i32, i32, %struct.net_device*, %struct.in_device*, i64*) #1

declare dso_local i32 @ip_mkroute_input(%struct.sk_buff*, %struct.fib_result*, %struct.in_device*, i8*, i8*, i32, %struct.flow_keys*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local %struct.fib_nh_common* @FIB_RES_NHC(%struct.fib_result* byval(%struct.fib_result) align 8) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i64 @rt_cache_valid(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.TYPE_9__*) #1

declare dso_local %struct.rtable* @rt_dst_alloc(i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @l3mdev_master_dev_rcu(%struct.net_device*) #1

declare dso_local i32 @IN_DEV_CONF_GET(%struct.in_device*, i32) #1

declare dso_local %struct.TYPE_10__* @lwtstate_get(i32) #1

declare dso_local i64 @lwtunnel_input_redirect(%struct.TYPE_10__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt_cache_route(%struct.fib_nh_common*, %struct.rtable*) #1

declare dso_local i32 @rt_add_uncached_list(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_9__*) #1

declare dso_local i32 @ip_handle_martian_source(%struct.net_device*, %struct.in_device*, %struct.sk_buff*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
