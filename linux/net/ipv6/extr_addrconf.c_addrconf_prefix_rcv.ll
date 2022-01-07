; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_prefix_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_prefix_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.prefix_info = type { i32, i32, i64, i64, i32, i32 }
%struct.inet6_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.net = type { i32 }
%struct.fib6_info = type { i32 }
%struct.in6_addr = type { %struct.in6_addr* }

@.str = private unnamed_addr constant [35 x i8] c"addrconf: prefix option too short\0A\00", align 1
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"addrconf: prefix option has invalid lifetime\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"addrconf: device %s not configured\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@USER_HZ = common dso_local global i64 0, align 8
@RTF_ADDRCONF = common dso_local global i32 0, align 4
@RTF_PREFIX_RT = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IFA_F_STABLE_PRIVACY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"IPv6 addrconf: prefix with wrong length %d\0A\00", align 1
@RTM_NEWPREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addrconf_prefix_rcv(%struct.net_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.prefix_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inet6_dev*, align 8
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.fib6_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.in6_addr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.net* @dev_net(%struct.net_device* %24)
  store %struct.net* %25, %struct.net** %16, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to %struct.prefix_info*
  store %struct.prefix_info* %27, %struct.prefix_info** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @netdev_dbg(%struct.net_device* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %273

34:                                               ; preds = %4
  %35 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %36 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %35, i32 0, i32 1
  %37 = call i32 @ipv6_addr_type(i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %40 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %273

45:                                               ; preds = %34
  %46 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %47 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ntohl(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %51 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @ntohl(i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %273

59:                                               ; preds = %45
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %60)
  store %struct.inet6_dev* %61, %struct.inet6_dev** %15, align 8
  %62 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %63 = icmp ne %struct.inet6_dev* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %273

69:                                               ; preds = %59
  %70 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %71 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %161

74:                                               ; preds = %69
  %75 = load i64, i64* @HZ, align 8
  %76 = load i64, i64* @USER_HZ, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @HZ, align 8
  %81 = call i64 @addrconf_timeout_fixup(i64 %79, i64 %80)
  store i64 %81, i64* %18, align 8
  br label %86

82:                                               ; preds = %74
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @USER_HZ, align 8
  %85 = call i64 @addrconf_timeout_fixup(i64 %83, i64 %84)
  store i64 %85, i64* %18, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i64, i64* %18, align 8
  %88 = call i64 @addrconf_finite_timeout(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i64, i64* @HZ, align 8
  %92 = load i64, i64* %18, align 8
  %93 = mul i64 %92, %91
  store i64 %93, i64* %18, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %96 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %95, i32 0, i32 1
  %97 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %98 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = load i32, i32* @RTF_ADDRCONF, align 4
  %102 = load i32, i32* @RTF_PREFIX_RT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @RTF_DEFAULT, align 4
  %105 = call %struct.fib6_info* @addrconf_get_prefix_route(i32* %96, i32 %99, %struct.net_device* %100, i32 %103, i32 %104, i32 1)
  store %struct.fib6_info* %105, %struct.fib6_info** %17, align 8
  %106 = load %struct.fib6_info*, %struct.fib6_info** %17, align 8
  %107 = icmp ne %struct.fib6_info* %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %94
  %109 = load i64, i64* %10, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.net*, %struct.net** %16, align 8
  %113 = load %struct.fib6_info*, %struct.fib6_info** %17, align 8
  %114 = call i32 @ip6_del_rt(%struct.net* %112, %struct.fib6_info* %113)
  store %struct.fib6_info* null, %struct.fib6_info** %17, align 8
  br label %129

115:                                              ; preds = %108
  %116 = load i64, i64* %18, align 8
  %117 = call i64 @addrconf_finite_timeout(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.fib6_info*, %struct.fib6_info** %17, align 8
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i64, i64* %18, align 8
  %123 = add i64 %121, %122
  %124 = call i32 @fib6_set_expires(%struct.fib6_info* %120, i64 %123)
  br label %128

125:                                              ; preds = %115
  %126 = load %struct.fib6_info*, %struct.fib6_info** %17, align 8
  %127 = call i32 @fib6_clean_expires(%struct.fib6_info* %126)
  br label %128

128:                                              ; preds = %125, %119
  br label %129

129:                                              ; preds = %128, %111
  br label %158

130:                                              ; preds = %94
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  store i32 0, i32* %19, align 4
  %134 = load i32, i32* @RTF_ADDRCONF, align 4
  %135 = load i32, i32* @RTF_PREFIX_RT, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %20, align 4
  %137 = load i64, i64* %18, align 8
  %138 = call i64 @addrconf_finite_timeout(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* @RTF_EXPIRES, align 4
  %142 = load i32, i32* %20, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %20, align 4
  %144 = load i64, i64* %18, align 8
  %145 = call i32 @jiffies_to_clock_t(i64 %144)
  store i32 %145, i32* %19, align 4
  br label %146

146:                                              ; preds = %140, %133
  %147 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %148 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %147, i32 0, i32 1
  %149 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %150 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.net_device*, %struct.net_device** %5, align 8
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* @GFP_ATOMIC, align 4
  %156 = call i32 @addrconf_prefix_route(i32* %148, i32 %151, i32 0, %struct.net_device* %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %146, %130
  br label %158

158:                                              ; preds = %157, %129
  %159 = load %struct.fib6_info*, %struct.fib6_info** %17, align 8
  %160 = call i32 @fib6_info_release(%struct.fib6_info* %159)
  br label %161

161:                                              ; preds = %158, %69
  %162 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %163 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %265

166:                                              ; preds = %161
  %167 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %168 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %265

172:                                              ; preds = %166
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %173 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %174 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 64
  br i1 %176, label %177, label %232

177:                                              ; preds = %172
  %178 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %179 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %178, i32 0, i32 1
  %180 = call i32 @memcpy(%struct.in6_addr* %21, i32* %179, i32 8)
  %181 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %182 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %181, i32 0, i32 1
  %183 = call i32 @ipv6_addr_any(%struct.TYPE_4__* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %177
  %186 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %187 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %186, i32 0, i32 0
  %188 = call i32 @read_lock_bh(i32* %187)
  %189 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0
  %190 = load %struct.in6_addr*, %struct.in6_addr** %189, align 8
  %191 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %190, i64 8
  %192 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %193 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  %197 = call i32 @memcpy(%struct.in6_addr* %191, i32* %196, i32 8)
  %198 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %199 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %198, i32 0, i32 0
  %200 = call i32 @read_unlock_bh(i32* %199)
  store i32 1, i32* %22, align 4
  br label %231

201:                                              ; preds = %177
  %202 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %203 = call i64 @is_addr_mode_generate_stable(%struct.inet6_dev* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %207 = call i32 @ipv6_generate_stable_address(%struct.in6_addr* %21, i32 0, %struct.inet6_dev* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* @IFA_F_STABLE_PRIVACY, align 4
  %211 = load i32, i32* %14, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %14, align 4
  br label %237

213:                                              ; preds = %205, %201
  %214 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0
  %215 = load %struct.in6_addr*, %struct.in6_addr** %214, align 8
  %216 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %215, i64 8
  %217 = load %struct.net_device*, %struct.net_device** %5, align 8
  %218 = call i64 @ipv6_generate_eui64(%struct.in6_addr* %216, %struct.net_device* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0
  %222 = load %struct.in6_addr*, %struct.in6_addr** %221, align 8
  %223 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %222, i64 8
  %224 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %225 = call i64 @ipv6_inherit_eui64(%struct.in6_addr* %223, %struct.inet6_dev* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %270

228:                                              ; preds = %220, %213
  store i32 1, i32* %23, align 4
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230, %185
  br label %237

232:                                              ; preds = %172
  %233 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %234 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %235)
  br label %270

237:                                              ; preds = %231, %209
  %238 = load %struct.net*, %struct.net** %16, align 8
  %239 = load %struct.net_device*, %struct.net_device** %5, align 8
  %240 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %241 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %22, align 4
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @addrconf_prefix_rcv_add_addr(%struct.net* %238, %struct.net_device* %239, %struct.prefix_info* %240, %struct.inet6_dev* %241, %struct.in6_addr* %21, i32 %242, i32 %243, i32 %244, i32 %245, i64 %246, i64 %247)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %237
  br label %270

252:                                              ; preds = %237
  %253 = load %struct.net*, %struct.net** %16, align 8
  %254 = load %struct.net_device*, %struct.net_device** %5, align 8
  %255 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %256 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %22, align 4
  %261 = load i64, i64* %10, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load i32, i32* %23, align 4
  %264 = call i32 @ndisc_ops_prefix_rcv_add_addr(%struct.net* %253, %struct.net_device* %254, %struct.prefix_info* %255, %struct.inet6_dev* %256, %struct.in6_addr* %21, i32 %257, i32 %258, i32 %259, i32 %260, i64 %261, i64 %262, i32 %263)
  br label %265

265:                                              ; preds = %252, %166, %161
  %266 = load i32, i32* @RTM_NEWPREFIX, align 4
  %267 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %268 = load %struct.prefix_info*, %struct.prefix_info** %9, align 8
  %269 = call i32 @inet6_prefix_notify(i32 %266, %struct.inet6_dev* %267, %struct.prefix_info* %268)
  br label %270

270:                                              ; preds = %265, %251, %232, %227
  %271 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %272 = call i32 @in6_dev_put(%struct.inet6_dev* %271)
  br label %273

273:                                              ; preds = %270, %64, %57, %44, %31
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32) #1

declare dso_local i64 @addrconf_timeout_fixup(i64, i64) #1

declare dso_local i64 @addrconf_finite_timeout(i64) #1

declare dso_local %struct.fib6_info* @addrconf_get_prefix_route(i32*, i32, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ip6_del_rt(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @fib6_set_expires(%struct.fib6_info*, i64) #1

declare dso_local i32 @fib6_clean_expires(%struct.fib6_info*) #1

declare dso_local i32 @jiffies_to_clock_t(i64) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local i32 @ipv6_addr_any(%struct.TYPE_4__*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i64 @is_addr_mode_generate_stable(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_generate_stable_address(%struct.in6_addr*, i32, %struct.inet6_dev*) #1

declare dso_local i64 @ipv6_generate_eui64(%struct.in6_addr*, %struct.net_device*) #1

declare dso_local i64 @ipv6_inherit_eui64(%struct.in6_addr*, %struct.inet6_dev*) #1

declare dso_local i32 @addrconf_prefix_rcv_add_addr(%struct.net*, %struct.net_device*, %struct.prefix_info*, %struct.inet6_dev*, %struct.in6_addr*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ndisc_ops_prefix_rcv_add_addr(%struct.net*, %struct.net_device*, %struct.prefix_info*, %struct.inet6_dev*, %struct.in6_addr*, i32, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @inet6_prefix_notify(i32, %struct.inet6_dev*, %struct.prefix_info*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
