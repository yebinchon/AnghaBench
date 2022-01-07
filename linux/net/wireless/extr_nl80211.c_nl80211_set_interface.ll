; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { %struct.wireless_dev* }
%struct.vif_params = type { i32 }

@NL80211_ATTR_IFTYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_ID = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@IEEE80211_MAX_MESH_ID_LEN = common dso_local global i64 0, align 8
@NL80211_ATTR_4ADDR = common dso_local global i64 0, align 8
@NL80211_CMD_SET_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_interface(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.vif_params, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.wireless_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %11, align 8
  store i32 0, i32* %12, align 4
  %26 = call i32 @memset(%struct.vif_params* %7, i32 0, i32 4)
  %27 = load %struct.net_device*, %struct.net_device** %11, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %28, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %2
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nla_get_u32(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %110

60:                                               ; preds = %52
  %61 = load %struct.net_device*, %struct.net_device** %11, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load %struct.wireless_dev*, %struct.wireless_dev** %62, align 8
  store %struct.wireless_dev* %63, %struct.wireless_dev** %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %200

70:                                               ; preds = %60
  %71 = load %struct.net_device*, %struct.net_device** %11, align 8
  %72 = call i64 @netif_running(%struct.net_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %200

77:                                               ; preds = %70
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %79 = call i32 @wdev_lock(%struct.wireless_dev* %78)
  %80 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %81 = load i64, i64* @IEEE80211_MAX_MESH_ID_LEN, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUILD_BUG_ON(i32 %83)
  %85 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %86 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @nla_len(i64 %90)
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %95 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %98 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @nla_data(i64 %102)
  %104 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %105 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32 %96, i32 %103, i32 %106)
  %108 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %109 = call i32 @wdev_unlock(%struct.wireless_dev* %108)
  br label %110

110:                                              ; preds = %77, %52
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %110
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @nla_get_u8(i64 %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  store i32 1, i32* %12, align 4
  %131 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %132 = bitcast %struct.cfg80211_registered_device* %131 to %struct.net_device*
  %133 = load %struct.net_device*, %struct.net_device** %11, align 8
  %134 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @nl80211_valid_4addr(%struct.net_device* %132, %struct.net_device* %133, i32 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %118
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %200

142:                                              ; preds = %118
  br label %145

143:                                              ; preds = %110
  %144 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  store i32 -1, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %142
  %146 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %147 = bitcast %struct.cfg80211_registered_device* %146 to %struct.net_device*
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %150 = call i32 @nl80211_parse_mon_options(%struct.net_device* %147, i32 %148, %struct.genl_info* %149, %struct.vif_params* %7)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %3, align 4
  br label %200

155:                                              ; preds = %145
  %156 = load i32, i32* %8, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 1, i32* %12, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %164 = bitcast %struct.cfg80211_registered_device* %163 to %struct.net_device*
  %165 = load %struct.net_device*, %struct.net_device** %11, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @cfg80211_change_iface(%struct.net_device* %164, %struct.net_device* %165, i32 %166, %struct.vif_params* %7)
  store i32 %167, i32* %8, align 4
  br label %169

168:                                              ; preds = %159
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %168, %162
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, -1
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.net_device*, %struct.net_device** %11, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = load %struct.wireless_dev*, %struct.wireless_dev** %180, align 8
  %182 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %181, i32 0, i32 1
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %176, %172, %169
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %186
  %190 = load %struct.net_device*, %struct.net_device** %11, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 0
  %192 = load %struct.wireless_dev*, %struct.wireless_dev** %191, align 8
  store %struct.wireless_dev* %192, %struct.wireless_dev** %14, align 8
  %193 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %194 = bitcast %struct.cfg80211_registered_device* %193 to %struct.net_device*
  %195 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %196 = load i32, i32* @NL80211_CMD_SET_INTERFACE, align 4
  %197 = call i32 @nl80211_notify_iface(%struct.net_device* %194, %struct.wireless_dev* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %186, %183
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %153, %140, %74, %67
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @memset(%struct.vif_params*, i32, i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @nl80211_valid_4addr(%struct.net_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @nl80211_parse_mon_options(%struct.net_device*, i32, %struct.genl_info*, %struct.vif_params*) #1

declare dso_local i32 @cfg80211_change_iface(%struct.net_device*, %struct.net_device*, i32, %struct.vif_params*) #1

declare dso_local i32 @nl80211_notify_iface(%struct.net_device*, %struct.wireless_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
