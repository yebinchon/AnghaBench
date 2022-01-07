; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.wireless_dev*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.wireless_dev = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.wireless_dev*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.bss_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NL80211_ATTR_BSS_CTS_PROT = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_SHORT_PREAMBLE = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_SHORT_SLOT_TIME = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_BASIC_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_AP_ISOLATE = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_HT_OPMODE = common dso_local global i64 0, align 8
@NL80211_ATTR_P2P_CTWINDOW = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_FEATURE_P2P_GO_CTWIN = common dso_local global i32 0, align 4
@NL80211_ATTR_P2P_OPPPS = common dso_local global i64 0, align 8
@NL80211_FEATURE_P2P_GO_OPPPS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_bss(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.bss_parameters, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 1
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %24, align 8
  store %struct.wireless_dev* %25, %struct.wireless_dev** %8, align 8
  %26 = call i32 @memset(%struct.bss_parameters* %9, i32 0, i32 36)
  %27 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 0
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 2
  store i32 -1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 3
  store i32 -1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 4
  store i32 -1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 5
  store i32 -1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 6
  store i32 -1, i32* %33, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_BSS_CTS_PROT, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @NL80211_ATTR_BSS_CTS_PROT, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @nla_get_u8(i64 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %2
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @NL80211_ATTR_BSS_SHORT_PREAMBLE, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @NL80211_ATTR_BSS_SHORT_PREAMBLE, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @nla_get_u8(i64 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %51
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NL80211_ATTR_BSS_SHORT_SLOT_TIME, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_BSS_SHORT_SLOT_TIME, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @nla_get_u8(i64 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %77, %69
  %88 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %89 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @nla_data(i64 %101)
  %103 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %105 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @nla_len(i64 %109)
  %111 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 7
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %95, %87
  %113 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %114 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @NL80211_ATTR_AP_ISOLATE, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %112
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @NL80211_ATTR_AP_ISOLATE, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @nla_get_u8(i64 %126)
  %128 = icmp ne i8* %127, null
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 3
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %120, %112
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_BSS_HT_OPMODE, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_BSS_HT_OPMODE, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @nla_get_u16(i64 %147)
  %149 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 4
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %141, %133
  %151 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %152 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %194

158:                                              ; preds = %150
  %159 = load %struct.net_device*, %struct.net_device** %7, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = load %struct.wireless_dev*, %struct.wireless_dev** %160, align 8
  %162 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %278

169:                                              ; preds = %158
  %170 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %171 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @nla_get_u8(i64 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 5
  store i32 %177, i32* %178, align 4
  %179 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %169
  %183 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %184 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @NL80211_FEATURE_P2P_GO_CTWIN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %182
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %278

193:                                              ; preds = %182, %169
  br label %194

194:                                              ; preds = %193, %150
  %195 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %196 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %239

202:                                              ; preds = %194
  %203 = load %struct.net_device*, %struct.net_device** %7, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 0
  %205 = load %struct.wireless_dev*, %struct.wireless_dev** %204, align 8
  %206 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %3, align 4
  br label %278

213:                                              ; preds = %202
  %214 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %215 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i8* @nla_get_u8(i64 %219)
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 6
  store i32 %222, i32* %223, align 4
  %224 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %9, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %213
  %228 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %229 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @NL80211_FEATURE_P2P_GO_OPPPS, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %227
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %278

238:                                              ; preds = %227, %213
  br label %239

239:                                              ; preds = %238, %194
  %240 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %241 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %240, i32 0, i32 1
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %239
  %247 = load i32, i32* @EOPNOTSUPP, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %3, align 4
  br label %278

249:                                              ; preds = %239
  %250 = load %struct.net_device*, %struct.net_device** %7, align 8
  %251 = getelementptr inbounds %struct.net_device, %struct.net_device* %250, i32 0, i32 0
  %252 = load %struct.wireless_dev*, %struct.wireless_dev** %251, align 8
  %253 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %249
  %258 = load %struct.net_device*, %struct.net_device** %7, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 0
  %260 = load %struct.wireless_dev*, %struct.wireless_dev** %259, align 8
  %261 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load i32, i32* @EOPNOTSUPP, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %3, align 4
  br label %278

268:                                              ; preds = %257, %249
  %269 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %270 = call i32 @wdev_lock(%struct.wireless_dev* %269)
  %271 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %272 = bitcast %struct.cfg80211_registered_device* %271 to %struct.net_device*
  %273 = load %struct.net_device*, %struct.net_device** %7, align 8
  %274 = call i32 @rdev_change_bss(%struct.net_device* %272, %struct.net_device* %273, %struct.bss_parameters* %9)
  store i32 %274, i32* %10, align 4
  %275 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %276 = call i32 @wdev_unlock(%struct.wireless_dev* %275)
  %277 = load i32, i32* %10, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %268, %265, %246, %235, %210, %190, %166
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @memset(%struct.bss_parameters*, i32, i32) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_change_bss(%struct.net_device*, %struct.net_device*, %struct.bss_parameters*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
