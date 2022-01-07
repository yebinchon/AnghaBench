; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ip_tunnel_prl = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.ip_tunnel = type { i32, %struct.net_device*, %struct.ip_tunnel_prl, i32, %struct.TYPE_4__, %struct.net* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.sit_net = type { %struct.net_device* }

@sit_net_id = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ipip6_tunnel_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip6_tunnel_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_tunnel_parm, align 4
  %9 = alloca %struct.ip_tunnel_prl, align 4
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sit_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %13)
  store %struct.ip_tunnel* %14, %struct.ip_tunnel** %10, align 8
  %15 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %15, i32 0, i32 5
  %17 = load %struct.net*, %struct.net** %16, align 8
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.net*, %struct.net** %11, align 8
  %19 = load i32, i32* @sit_net_id, align 4
  %20 = call %struct.sit_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.sit_net* %20, %struct.sit_net** %12, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %339 [
    i32 128, label %22
    i32 137, label %69
    i32 134, label %69
    i32 131, label %224
    i32 129, label %277
    i32 138, label %293
    i32 132, label %293
    i32 135, label %293
  ]

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load %struct.sit_net*, %struct.sit_net** %12, align 8
  %25 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = icmp eq %struct.net_device* %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %30 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @copy_from_user(%struct.ip_tunnel_prl* %29, i32 %33, i32 40)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %342

39:                                               ; preds = %28
  %40 = load %struct.net*, %struct.net** %11, align 8
  %41 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %42 = call %struct.ip_tunnel* @ipip6_tunnel_locate(%struct.net* %40, %struct.ip_tunnel_prl* %41, i32 0)
  store %struct.ip_tunnel* %42, %struct.ip_tunnel** %10, align 8
  %43 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %44 = icmp ne %struct.ip_tunnel* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %46)
  store %struct.ip_tunnel* %47, %struct.ip_tunnel** %10, align 8
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %56 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %57 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %56, i32 0, i32 2
  %58 = call i32 @memcpy(%struct.ip_tunnel_prl* %55, %struct.ip_tunnel_prl* %57, i32 40)
  %59 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %60 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %64 = call i32 @copy_to_user(i32 %62, %struct.ip_tunnel_prl* %63, i32 40)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %343

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %49
  store i32 0, i32* %7, align 4
  br label %342

69:                                               ; preds = %3, %3
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.net*, %struct.net** %11, align 8
  %73 = getelementptr inbounds %struct.net, %struct.net* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CAP_NET_ADMIN, align 4
  %76 = call i32 @ns_capable(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %343

79:                                               ; preds = %69
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  %82 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %83 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %84 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @copy_from_user(%struct.ip_tunnel_prl* %82, i32 %86, i32 40)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %343

90:                                               ; preds = %79
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  %93 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ipip6_valid_ip_proto(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %343

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 4
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 5
  br i1 %108, label %118, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IP_DF, align 4
  %114 = xor i32 %113, -1
  %115 = call i32 @htons(i32 %114)
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109, %104, %99
  br label %343

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i32, i32* @IP_DF, align 4
  %126 = call i32 @htons(i32 %125)
  %127 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124, %119
  %132 = load %struct.net*, %struct.net** %11, align 8
  %133 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 137
  %136 = zext i1 %135 to i32
  %137 = call %struct.ip_tunnel* @ipip6_tunnel_locate(%struct.net* %132, %struct.ip_tunnel_prl* %133, i32 %136)
  store %struct.ip_tunnel* %137, %struct.ip_tunnel** %10, align 8
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = load %struct.sit_net*, %struct.sit_net** %12, align 8
  %140 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %139, i32 0, i32 0
  %141 = load %struct.net_device*, %struct.net_device** %140, align 8
  %142 = icmp ne %struct.net_device* %138, %141
  br i1 %142, label %143, label %196

143:                                              ; preds = %131
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 134
  br i1 %145, label %146, label %196

146:                                              ; preds = %143
  %147 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %148 = icmp ne %struct.ip_tunnel* %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %151 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %150, i32 0, i32 1
  %152 = load %struct.net_device*, %struct.net_device** %151, align 8
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = icmp ne %struct.net_device* %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* @EEXIST, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %342

158:                                              ; preds = %149
  br label %189

159:                                              ; preds = %146
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IFF_POINTOPOINT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %166, %159
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @IFF_POINTOPOINT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178, %166
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %7, align 4
  br label %342

186:                                              ; preds = %178, %171
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %187)
  store %struct.ip_tunnel* %188, %struct.ip_tunnel** %10, align 8
  br label %189

189:                                              ; preds = %186, %158
  %190 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %191 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %192 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %193 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ipip6_tunnel_update(%struct.ip_tunnel* %190, %struct.ip_tunnel_prl* %191, i32 %194)
  br label %196

196:                                              ; preds = %189, %143, %131
  %197 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %198 = icmp ne %struct.ip_tunnel* %197, null
  br i1 %198, label %199, label %212

199:                                              ; preds = %196
  store i32 0, i32* %7, align 4
  %200 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %201 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %205 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %204, i32 0, i32 2
  %206 = call i32 @copy_to_user(i32 %203, %struct.ip_tunnel_prl* %205, i32 40)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i32, i32* @EFAULT, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %208, %199
  br label %223

212:                                              ; preds = %196
  %213 = load i32, i32* %6, align 4
  %214 = icmp eq i32 %213, 137
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* @ENOBUFS, align 4
  %217 = sub nsw i32 0, %216
  br label %221

218:                                              ; preds = %212
  %219 = load i32, i32* @ENOENT, align 4
  %220 = sub nsw i32 0, %219
  br label %221

221:                                              ; preds = %218, %215
  %222 = phi i32 [ %217, %215 ], [ %220, %218 ]
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %221, %211
  br label %342

224:                                              ; preds = %3
  %225 = load i32, i32* @EPERM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %7, align 4
  %227 = load %struct.net*, %struct.net** %11, align 8
  %228 = getelementptr inbounds %struct.net, %struct.net* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @CAP_NET_ADMIN, align 4
  %231 = call i32 @ns_capable(i32 %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %224
  br label %343

234:                                              ; preds = %224
  %235 = load %struct.net_device*, %struct.net_device** %4, align 8
  %236 = load %struct.sit_net*, %struct.sit_net** %12, align 8
  %237 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %236, i32 0, i32 0
  %238 = load %struct.net_device*, %struct.net_device** %237, align 8
  %239 = icmp eq %struct.net_device* %235, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %234
  %241 = load i32, i32* @EFAULT, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %7, align 4
  %243 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %244 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %245 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @copy_from_user(%struct.ip_tunnel_prl* %243, i32 %247, i32 40)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %343

251:                                              ; preds = %240
  %252 = load i32, i32* @ENOENT, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %7, align 4
  %254 = load %struct.net*, %struct.net** %11, align 8
  %255 = bitcast %struct.ip_tunnel_parm* %8 to %struct.ip_tunnel_prl*
  %256 = call %struct.ip_tunnel* @ipip6_tunnel_locate(%struct.net* %254, %struct.ip_tunnel_prl* %255, i32 0)
  store %struct.ip_tunnel* %256, %struct.ip_tunnel** %10, align 8
  %257 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %258 = icmp ne %struct.ip_tunnel* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %251
  br label %343

260:                                              ; preds = %251
  %261 = load i32, i32* @EPERM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %7, align 4
  %263 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %264 = load %struct.sit_net*, %struct.sit_net** %12, align 8
  %265 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %264, i32 0, i32 0
  %266 = load %struct.net_device*, %struct.net_device** %265, align 8
  %267 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %266)
  %268 = icmp eq %struct.ip_tunnel* %263, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %260
  br label %343

270:                                              ; preds = %260
  %271 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %272 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %271, i32 0, i32 1
  %273 = load %struct.net_device*, %struct.net_device** %272, align 8
  store %struct.net_device* %273, %struct.net_device** %4, align 8
  br label %274

274:                                              ; preds = %270, %234
  %275 = load %struct.net_device*, %struct.net_device** %4, align 8
  %276 = call i32 @unregister_netdevice(%struct.net_device* %275)
  store i32 0, i32* %7, align 4
  br label %342

277:                                              ; preds = %3
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %7, align 4
  %280 = load %struct.net_device*, %struct.net_device** %4, align 8
  %281 = load %struct.sit_net*, %struct.sit_net** %12, align 8
  %282 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %281, i32 0, i32 0
  %283 = load %struct.net_device*, %struct.net_device** %282, align 8
  %284 = icmp eq %struct.net_device* %280, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  br label %343

286:                                              ; preds = %277
  %287 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %288 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %289 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @ipip6_tunnel_get_prl(%struct.ip_tunnel* %287, i32 %291)
  store i32 %292, i32* %7, align 4
  br label %342

293:                                              ; preds = %3, %3, %3
  %294 = load i32, i32* @EPERM, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %7, align 4
  %296 = load %struct.net*, %struct.net** %11, align 8
  %297 = getelementptr inbounds %struct.net, %struct.net* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @CAP_NET_ADMIN, align 4
  %300 = call i32 @ns_capable(i32 %298, i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %293
  br label %343

303:                                              ; preds = %293
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %7, align 4
  %306 = load %struct.net_device*, %struct.net_device** %4, align 8
  %307 = load %struct.sit_net*, %struct.sit_net** %12, align 8
  %308 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %307, i32 0, i32 0
  %309 = load %struct.net_device*, %struct.net_device** %308, align 8
  %310 = icmp eq %struct.net_device* %306, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  br label %343

312:                                              ; preds = %303
  %313 = load i32, i32* @EFAULT, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %7, align 4
  %315 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %316 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @copy_from_user(%struct.ip_tunnel_prl* %9, i32 %318, i32 40)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %312
  br label %343

322:                                              ; preds = %312
  %323 = load i32, i32* %6, align 4
  switch i32 %323, label %333 [
    i32 132, label %324
    i32 138, label %327
    i32 135, label %327
  ]

324:                                              ; preds = %322
  %325 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %326 = call i32 @ipip6_tunnel_del_prl(%struct.ip_tunnel* %325, %struct.ip_tunnel_prl* %9)
  store i32 %326, i32* %7, align 4
  br label %333

327:                                              ; preds = %322, %322
  %328 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %329 = load i32, i32* %6, align 4
  %330 = icmp eq i32 %329, 135
  %331 = zext i1 %330 to i32
  %332 = call i32 @ipip6_tunnel_add_prl(%struct.ip_tunnel* %328, %struct.ip_tunnel_prl* %9, i32 %331)
  store i32 %332, i32* %7, align 4
  br label %333

333:                                              ; preds = %322, %327, %324
  %334 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %335 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %334, i32 0, i32 0
  %336 = call i32 @dst_cache_reset(i32* %335)
  %337 = load %struct.net_device*, %struct.net_device** %4, align 8
  %338 = call i32 @netdev_state_change(%struct.net_device* %337)
  br label %342

339:                                              ; preds = %3
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %339, %333, %286, %274, %223, %183, %155, %68, %36
  br label %343

343:                                              ; preds = %342, %321, %311, %302, %285, %269, %259, %250, %233, %118, %98, %89, %78, %66
  %344 = load i32, i32* %7, align 4
  ret i32 %344
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sit_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @copy_from_user(%struct.ip_tunnel_prl*, i32, i32) #1

declare dso_local %struct.ip_tunnel* @ipip6_tunnel_locate(%struct.net*, %struct.ip_tunnel_prl*, i32) #1

declare dso_local i32 @memcpy(%struct.ip_tunnel_prl*, %struct.ip_tunnel_prl*, i32) #1

declare dso_local i32 @copy_to_user(i32, %struct.ip_tunnel_prl*, i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @ipip6_valid_ip_proto(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ipip6_tunnel_update(%struct.ip_tunnel*, %struct.ip_tunnel_prl*, i32) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @ipip6_tunnel_get_prl(%struct.ip_tunnel*, i32) #1

declare dso_local i32 @ipip6_tunnel_del_prl(%struct.ip_tunnel*, %struct.ip_tunnel_prl*) #1

declare dso_local i32 @ipip6_tunnel_add_prl(%struct.ip_tunnel*, %struct.ip_tunnel_prl*, i32) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
