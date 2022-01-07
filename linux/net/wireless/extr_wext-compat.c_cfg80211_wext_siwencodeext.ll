; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwencodeext.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwencodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iw_encode_ext = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.key_params = type { i32, i32, i32, i64, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_RX_SEQ_VALID = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @cfg80211_wext_siwencodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwencodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.key_params, align 8
  %17 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %19, align 8
  store %struct.wireless_dev* %20, %struct.wireless_dev** %10, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %23)
  store %struct.cfg80211_registered_device* %24, %struct.cfg80211_registered_device** %11, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %26, %struct.iw_encode_ext** %12, align 8
  store i32 0, i32* %15, align 4
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %4
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %210

41:                                               ; preds = %32, %4
  %42 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %43 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %50 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %48, %41
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %210

65:                                               ; preds = %55
  %66 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %67 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %95 [
    i32 130, label %69
    i32 128, label %70
    i32 129, label %89
    i32 131, label %91
    i32 132, label %93
  ]

69:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  store i64 0, i64* %17, align 8
  br label %98

70:                                               ; preds = %65
  %71 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %72 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  store i64 %76, i64* %17, align 8
  br label %88

77:                                               ; preds = %70
  %78 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %79 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 13
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  store i64 %83, i64* %17, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %210

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %75
  br label %98

89:                                               ; preds = %65
  %90 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  store i64 %90, i64* %17, align 8
  br label %98

91:                                               ; preds = %65
  %92 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  store i64 %92, i64* %17, align 8
  br label %98

93:                                               ; preds = %65
  %94 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  store i64 %94, i64* %17, align 8
  br label %98

95:                                               ; preds = %65
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %210

98:                                               ; preds = %93, %91, %89, %88, %69
  %99 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %100 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 1, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %108 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %14, align 4
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %106
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = icmp sgt i32 %119, 5
  br i1 %120, label %121, label %132

121:                                              ; preds = %118, %115
  %122 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %123 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %210

131:                                              ; preds = %121
  br label %135

132:                                              ; preds = %118
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %132, %131
  br label %157

136:                                              ; preds = %106
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %140, 4
  br i1 %141, label %142, label %153

142:                                              ; preds = %139, %136
  %143 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %144 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %210

152:                                              ; preds = %142
  br label %156

153:                                              ; preds = %139
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %153, %152
  br label %157

157:                                              ; preds = %156, %135
  %158 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %159 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %13, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = call i64 @is_broadcast_ether_addr(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  store i32* null, i32** %13, align 8
  br label %166

166:                                              ; preds = %165, %157
  %167 = call i32 @memset(%struct.key_params* %16, i32 0, i32 32)
  %168 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %169 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.key_params, %struct.key_params* %16, i32 0, i32 4
  store i32 %170, i32* %171, align 8
  %172 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %173 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.key_params, %struct.key_params* %16, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds %struct.key_params, %struct.key_params* %16, i32 0, i32 3
  store i64 %176, i64* %177, align 8
  %178 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %179 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %166
  %185 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %186 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.key_params, %struct.key_params* %16, i32 0, i32 2
  store i32 %187, i32* %188, align 8
  %189 = getelementptr inbounds %struct.key_params, %struct.key_params* %16, i32 0, i32 1
  store i32 6, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %166
  %191 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %192 = load %struct.net_device*, %struct.net_device** %6, align 8
  %193 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %194 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load i32*, i32** %13, align 8
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %204 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @cfg80211_set_encryption(%struct.cfg80211_registered_device* %191, %struct.net_device* %192, i32 %200, i32* %201, i32 %202, i32 %207, i32 %208, %struct.key_params* %16)
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %190, %149, %128, %95, %84, %62, %38
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @memset(%struct.key_params*, i32, i32) #1

declare dso_local i32 @cfg80211_set_encryption(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32, %struct.key_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
