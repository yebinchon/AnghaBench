; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev_ioctl.c_dev_ifsioc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev_ioctl.c_dev_ifsioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ifreq = type { i8*, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32, i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)*, i32 }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.ifreq.2 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@SIOCBONDENSLAVE = common dso_local global i32 0, align 4
@SIOCBONDRELEASE = common dso_local global i32 0, align 4
@SIOCBONDSETHWADDR = common dso_local global i32 0, align 4
@SIOCBONDSLAVEINFOQUERY = common dso_local global i32 0, align 4
@SIOCBONDINFOQUERY = common dso_local global i32 0, align 4
@SIOCBONDCHANGEACTIVE = common dso_local global i32 0, align 4
@SIOCGMIIPHY = common dso_local global i32 0, align 4
@SIOCGMIIREG = common dso_local global i32 0, align 4
@SIOCSMIIREG = common dso_local global i32 0, align 4
@SIOCBRADDIF = common dso_local global i32 0, align 4
@SIOCBRDELIF = common dso_local global i32 0, align 4
@SIOCGHWTSTAMP = common dso_local global i32 0, align 4
@SIOCWANDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ifreq*, i32)* @dev_ifsioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_ifsioc(%struct.net* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_ops*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.net_device* @__dev_get_by_name(%struct.net* %11, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %297

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 3
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %23, align 8
  store %struct.net_device_ops* %24, %struct.net_device_ops** %10, align 8
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %201 [
    i32 135, label %26
    i32 131, label %32
    i32 130, label %35
    i32 134, label %41
    i32 133, label %55
    i32 132, label %84
    i32 138, label %108
    i32 137, label %137
    i32 128, label %166
    i32 129, label %180
    i32 136, label %193
  ]

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_change_flags(%struct.net_device* %27, i32 %30, i32* null)
  store i32 %31, i32* %4, align 4
  br label %297

32:                                               ; preds = %21
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %297

35:                                               ; preds = %21
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_set_mtu(%struct.net_device* %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %297

41:                                               ; preds = %21
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %297

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %52, i32 0, i32 2
  %54 = call i32 @dev_set_mac_address(%struct.net_device* %51, %struct.TYPE_2__* %53, i32* null)
  store i32 %54, i32* %4, align 4
  br label %297

55:                                               ; preds = %21
  %56 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %297

67:                                               ; preds = %55
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = call i32 @min(i32 4, i64 %78)
  %80 = call i32 @memcpy(i32 %70, i32 %74, i32 %79)
  %81 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = call i32 @call_netdevice_notifiers(i32 %81, %struct.net_device* %82)
  store i32 0, i32* %4, align 4
  br label %297

84:                                               ; preds = %21
  %85 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %86 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %85, i32 0, i32 0
  %87 = load i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.0*, i32*)** %86, align 8
  %88 = icmp ne i32 (%struct.net_device.0*, i32*)* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.net_device*, %struct.net_device** %9, align 8
  %91 = call i32 @netif_device_present(%struct.net_device* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %297

96:                                               ; preds = %89
  %97 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %98 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %97, i32 0, i32 0
  %99 = load i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.0*, i32*)** %98, align 8
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = bitcast %struct.net_device* %100 to %struct.net_device.0*
  %102 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %103 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %102, i32 0, i32 3
  %104 = call i32 %99(%struct.net_device.0* %101, i32* %103)
  store i32 %104, i32* %4, align 4
  br label %297

105:                                              ; preds = %84
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %297

108:                                              ; preds = %21
  %109 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %110 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %115 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AF_UNSPEC, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %113, %108
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %297

123:                                              ; preds = %113
  %124 = load %struct.net_device*, %struct.net_device** %9, align 8
  %125 = call i32 @netif_device_present(%struct.net_device* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %297

130:                                              ; preds = %123
  %131 = load %struct.net_device*, %struct.net_device** %9, align 8
  %132 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %133 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_mc_add_global(%struct.net_device* %131, i32 %135)
  store i32 %136, i32* %4, align 4
  br label %297

137:                                              ; preds = %21
  %138 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %139 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %144 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AF_UNSPEC, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %142, %137
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %297

152:                                              ; preds = %142
  %153 = load %struct.net_device*, %struct.net_device** %9, align 8
  %154 = call i32 @netif_device_present(%struct.net_device* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %297

159:                                              ; preds = %152
  %160 = load %struct.net_device*, %struct.net_device** %9, align 8
  %161 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %162 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_mc_del_global(%struct.net_device* %160, i32 %164)
  store i32 %165, i32* %4, align 4
  br label %297

166:                                              ; preds = %21
  %167 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %168 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %297

174:                                              ; preds = %166
  %175 = load %struct.net_device*, %struct.net_device** %9, align 8
  %176 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %177 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dev_change_tx_queue_len(%struct.net_device* %175, i32 %178)
  store i32 %179, i32* %4, align 4
  br label %297

180:                                              ; preds = %21
  %181 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %182 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* @IFNAMSIZ, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load %struct.net_device*, %struct.net_device** %9, align 8
  %189 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %190 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @dev_change_name(%struct.net_device* %188, i8* %191)
  store i32 %192, i32* %4, align 4
  br label %297

193:                                              ; preds = %21
  %194 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %195 = call i32 @net_hwtstamp_validate(%struct.ifreq* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %4, align 4
  br label %297

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %21, %200
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %204 = icmp uge i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %208 = add i32 %207, 15
  %209 = icmp ule i32 %206, %208
  br i1 %209, label %265, label %210

210:                                              ; preds = %205, %201
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @SIOCBONDENSLAVE, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %265, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @SIOCBONDRELEASE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %265, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @SIOCBONDSETHWADDR, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %265, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @SIOCBONDSLAVEINFOQUERY, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %265, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @SIOCBONDINFOQUERY, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %265, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @SIOCBONDCHANGEACTIVE, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %265, label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @SIOCGMIIPHY, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %265, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @SIOCGMIIREG, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %265, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @SIOCSMIIREG, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %265, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @SIOCBRADDIF, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %265, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @SIOCBRDELIF, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %265, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %7, align 4
  %256 = icmp eq i32 %255, 136
  br i1 %256, label %265, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @SIOCGHWTSTAMP, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* @SIOCWANDEV, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %291

265:                                              ; preds = %261, %257, %254, %250, %246, %242, %238, %234, %230, %226, %222, %218, %214, %210, %205
  %266 = load i32, i32* @EOPNOTSUPP, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %8, align 4
  %268 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %269 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %268, i32 0, i32 1
  %270 = load i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)*, i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)** %269, align 8
  %271 = icmp ne i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)* %270, null
  br i1 %271, label %272, label %290

272:                                              ; preds = %265
  %273 = load %struct.net_device*, %struct.net_device** %9, align 8
  %274 = call i32 @netif_device_present(%struct.net_device* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %278 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %277, i32 0, i32 1
  %279 = load i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)*, i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)** %278, align 8
  %280 = load %struct.net_device*, %struct.net_device** %9, align 8
  %281 = bitcast %struct.net_device* %280 to %struct.net_device.1*
  %282 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %283 = bitcast %struct.ifreq* %282 to %struct.ifreq.2*
  %284 = load i32, i32* %7, align 4
  %285 = call i32 %279(%struct.net_device.1* %281, %struct.ifreq.2* %283, i32 %284)
  store i32 %285, i32* %8, align 4
  br label %289

286:                                              ; preds = %272
  %287 = load i32, i32* @ENODEV, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %8, align 4
  br label %289

289:                                              ; preds = %286, %276
  br label %290

290:                                              ; preds = %289, %265
  br label %294

291:                                              ; preds = %261
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %8, align 4
  br label %294

294:                                              ; preds = %291, %290
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %295, %198, %180, %174, %171, %159, %156, %149, %130, %127, %120, %105, %96, %93, %67, %64, %50, %47, %35, %32, %26, %18
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @dev_change_flags(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_mac_address(%struct.net_device*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @dev_mc_add_global(%struct.net_device*, i32) #1

declare dso_local i32 @dev_mc_del_global(%struct.net_device*, i32) #1

declare dso_local i32 @dev_change_tx_queue_len(%struct.net_device*, i32) #1

declare dso_local i32 @dev_change_name(%struct.net_device*, i8*) #1

declare dso_local i32 @net_hwtstamp_validate(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
