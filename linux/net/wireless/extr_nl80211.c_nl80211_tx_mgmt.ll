; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tx_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tx_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i64*, %struct.wireless_dev** }
%struct.wireless_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.cfg80211_chan_def = type { i32* }
%struct.cfg80211_mgmt_tx_params = type { i64, i64, i32, i64*, i32*, i64, i8*, i64, i32 }

@NL80211_ATTR_DONT_WAIT_FOR_ACK = common dso_local global i64 0, align 8
@NL80211_ATTR_FRAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_DURATION = common dso_local global i64 0, align 8
@WIPHY_FLAG_OFFCHAN_TX = common dso_local global i32 0, align 4
@NL80211_MIN_REMAIN_ON_CHANNEL_TIME = common dso_local global i64 0, align 8
@NL80211_ATTR_OFFCHANNEL_TX_OK = common dso_local global i64 0, align 8
@NL80211_ATTR_TX_NO_CCK_RATE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@NL80211_ATTR_CSA_C_OFFSETS_TX = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_FRAME = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tx_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tx_mgmt(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.cfg80211_mgmt_tx_params, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 3
  %18 = load %struct.wireless_dev**, %struct.wireless_dev*** %17, align 8
  %19 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %18, i64 0
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %19, align 8
  %21 = bitcast %struct.wireless_dev* %20 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %6, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 3
  %24 = load %struct.wireless_dev**, %struct.wireless_dev*** %23, align 8
  %25 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %24, i64 1
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %25, align 8
  store %struct.wireless_dev* %26, %struct.wireless_dev** %7, align 8
  store i8* null, i8** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %27 = bitcast %struct.cfg80211_mgmt_tx_params* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 72, i1 false)
  %28 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 5
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_DONT_WAIT_FOR_ACK, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %28, align 8
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %342

45:                                               ; preds = %2
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %342

55:                                               ; preds = %45
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %73 [
    i32 130, label %59
    i32 128, label %71
    i32 136, label %71
    i32 131, label %71
    i32 135, label %71
    i32 134, label %71
    i32 133, label %71
    i32 129, label %71
    i32 132, label %72
  ]

59:                                               ; preds = %55
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %342

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %70
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %55, %72
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %342

76:                                               ; preds = %71
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %76
  %85 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %86 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %342

95:                                               ; preds = %84
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @nla_get_u32(i64 %101)
  %103 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_MIN_REMAIN_ON_CHANNEL_TIME, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %112 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %110, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %108, %95
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %342

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %76
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @NL80211_ATTR_OFFCHANNEL_TX_OK, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 7
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 7
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %120
  %132 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %133 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %131
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %342

142:                                              ; preds = %131, %120
  %143 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %144 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %143, i32 0, i32 2
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @NL80211_ATTR_TX_NO_CCK_RATE, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @nla_get_flag(i64 %148)
  %150 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 8
  store i32 %149, i32* %150, align 8
  %151 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  store i32* null, i32** %151, align 8
  %152 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %153 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %142
  %160 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %161 = bitcast %struct.cfg80211_registered_device* %160 to %struct.wireless_dev*
  %162 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %163 = call i32 @nl80211_parse_chandef(%struct.wireless_dev* %161, %struct.genl_info* %162, %struct.cfg80211_chan_def* %8)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %3, align 4
  br label %342

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %142
  %170 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %342

180:                                              ; preds = %173, %169
  %181 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %182 = call i32 @wdev_lock(%struct.wireless_dev* %181)
  %183 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %188 = call i32 @cfg80211_off_channel_oper_allowed(%struct.wireless_dev* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %186
  %191 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %192 = call i32 @wdev_unlock(%struct.wireless_dev* %191)
  %193 = load i32, i32* @EBUSY, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %342

195:                                              ; preds = %186, %180
  %196 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %197 = call i32 @wdev_unlock(%struct.wireless_dev* %196)
  %198 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %199 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = call i8* @nla_data(i64 %203)
  %205 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 6
  store i8* %204, i8** %205, align 8
  %206 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %207 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %206, i32 0, i32 2
  %208 = load i64*, i64** %207, align 8
  %209 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %210 = getelementptr inbounds i64, i64* %208, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @nla_len(i64 %211)
  %213 = ptrtoint i8* %212 to i64
  %214 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 1
  store i64 %213, i64* %214, align 8
  %215 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %216 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %215, i32 0, i32 2
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* @NL80211_ATTR_CSA_C_OFFSETS_TX, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %276

222:                                              ; preds = %195
  %223 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %224 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %223, i32 0, i32 2
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* @NL80211_ATTR_CSA_C_OFFSETS_TX, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i8* @nla_len(i64 %228)
  %230 = ptrtoint i8* %229 to i32
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = urem i64 %232, 4
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %222
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %342

238:                                              ; preds = %222
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = udiv i64 %240, 4
  %242 = trunc i64 %241 to i32
  %243 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 2
  store i32 %242, i32* %243, align 8
  %244 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %245 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %244, i32 0, i32 2
  %246 = load i64*, i64** %245, align 8
  %247 = load i64, i64* @NL80211_ATTR_CSA_C_OFFSETS_TX, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = call i8* @nla_data(i64 %249)
  %251 = bitcast i8* %250 to i64*
  %252 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 3
  store i64* %251, i64** %252, align 8
  store i32 0, i32* %15, align 4
  br label %253

253:                                              ; preds = %272, %238
  %254 = load i32, i32* %15, align 4
  %255 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 3
  %260 = load i64*, i64** %259, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp sge i64 %264, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %258
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %342

271:                                              ; preds = %258
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %15, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %15, align 4
  br label %253

275:                                              ; preds = %253
  br label %276

276:                                              ; preds = %275, %195
  %277 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %305, label %280

280:                                              ; preds = %276
  %281 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %282 = load i32, i32* @GFP_KERNEL, align 4
  %283 = call %struct.sk_buff* @nlmsg_new(i32 %281, i32 %282)
  store %struct.sk_buff* %283, %struct.sk_buff** %12, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %285 = icmp ne %struct.sk_buff* %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %280
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %342

289:                                              ; preds = %280
  %290 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %291 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %292 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %295 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @NL80211_CMD_FRAME, align 4
  %298 = call i8* @nl80211hdr_put(%struct.sk_buff* %290, i32 %293, i32 %296, i32 0, i32 %297)
  store i8* %298, i8** %10, align 8
  %299 = load i8*, i8** %10, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %304, label %301

301:                                              ; preds = %289
  %302 = load i32, i32* @ENOBUFS, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %9, align 4
  br label %338

304:                                              ; preds = %289
  br label %305

305:                                              ; preds = %304, %276
  %306 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %13, i32 0, i32 4
  store i32* %307, i32** %308, align 8
  %309 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %310 = bitcast %struct.cfg80211_registered_device* %309 to %struct.wireless_dev*
  %311 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %312 = call i32 @cfg80211_mlme_mgmt_tx(%struct.wireless_dev* %310, %struct.wireless_dev* %311, %struct.cfg80211_mgmt_tx_params* %13, i32* %11)
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %9, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %305
  br label %338

316:                                              ; preds = %305
  %317 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %318 = icmp ne %struct.sk_buff* %317, null
  br i1 %318, label %319, label %334

319:                                              ; preds = %316
  %320 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %321 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %324 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %320, i32 %321, i32 %322, i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %335

327:                                              ; preds = %319
  %328 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %329 = load i8*, i8** %10, align 8
  %330 = call i32 @genlmsg_end(%struct.sk_buff* %328, i8* %329)
  %331 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %332 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %333 = call i32 @genlmsg_reply(%struct.sk_buff* %331, %struct.genl_info* %332)
  store i32 %333, i32* %3, align 4
  br label %342

334:                                              ; preds = %316
  store i32 0, i32* %3, align 4
  br label %342

335:                                              ; preds = %326
  %336 = load i32, i32* @ENOBUFS, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %9, align 4
  br label %338

338:                                              ; preds = %335, %315, %301
  %339 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %340 = call i32 @nlmsg_free(%struct.sk_buff* %339)
  %341 = load i32, i32* %9, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %338, %334, %327, %286, %268, %235, %190, %177, %166, %139, %116, %92, %73, %67, %52, %42
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nla_get_u32(i64) #2

declare dso_local i32 @nla_get_flag(i64) #2

declare dso_local i32 @nl80211_parse_chandef(%struct.wireless_dev*, %struct.genl_info*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i32 @cfg80211_off_channel_oper_allowed(%struct.wireless_dev*) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

declare dso_local i8* @nla_data(i64) #2

declare dso_local i8* @nla_len(i64) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local i32 @cfg80211_mlme_mgmt_tx(%struct.wireless_dev*, %struct.wireless_dev*, %struct.cfg80211_mgmt_tx_params*, i32*) #2

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
