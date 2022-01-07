; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_chandef.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.netlink_ext_ack* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cfg80211_chan_def = type { i64, i8*, %struct.TYPE_6__, i8*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Channel is disabled\00", align 1
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_CENTER_FREQ1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"bad center frequency 1\00", align 1
@NL80211_ATTR_CENTER_FREQ2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"center frequency 2 can't be used\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid channel type\00", align 1
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_EDMG_CHANNELS = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_EDMG_BW_CONFIG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid channel definition\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"(extension) channel is disabled\00", align 1
@NL80211_CHAN_WIDTH_5 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_10 = common dso_local global i64 0, align 8
@WIPHY_FLAG_SUPPORTS_5_10_MHZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"5/10 MHz not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl80211_parse_chandef(%struct.cfg80211_registered_device* %0, %struct.genl_info* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.genl_info* %1, %struct.genl_info** %6, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %7, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  store %struct.netlink_ext_ack* %14, %struct.netlink_ext_ack** %8, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load %struct.nlattr**, %struct.nlattr*** %16, align 8
  store %struct.nlattr** %17, %struct.nlattr*** %9, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %19 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %284

26:                                               ; preds = %3
  %27 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %28 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i8* @nla_get_u32(%struct.nlattr* %30)
  store i8* %31, i8** %10, align 8
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %33 = call i32 @memset(%struct.cfg80211_chan_def* %32, i32 0, i32 48)
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 0
  %36 = load i8*, i8** %10, align 8
  %37 = call %struct.TYPE_7__* @ieee80211_get_channel(%struct.TYPE_8__* %35, i8* %36)
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %38, i32 0, i32 4
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %45 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %47 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %46, i32 0, i32 3
  store i8* null, i8** %47, align 8
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %48, i32 0, i32 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %26
  %53 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %54 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %53, i32 0, i32 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52, %26
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %64 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %62, %struct.nlattr* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %284

70:                                               ; preds = %52
  %71 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %72 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %76, label %148

76:                                               ; preds = %70
  %77 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %78 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i8* @nla_get_u32(%struct.nlattr* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %138 [
    i32 128, label %84
    i32 131, label %84
    i32 129, label %84
    i32 130, label %84
  ]

84:                                               ; preds = %76, %76, %76, %76
  %85 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %86 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %87 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %86, i32 0, i32 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %85, %struct.TYPE_7__* %88, i32 %89)
  %91 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %92 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %91, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %84
  %97 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %98 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %101 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i8* @nla_get_u32(%struct.nlattr* %103)
  %105 = icmp ne i8* %99, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %96
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %108 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %109 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %110 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %108, i64 %109
  %111 = load %struct.nlattr*, %struct.nlattr** %110, align 8
  %112 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %107, %struct.nlattr* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %284

115:                                              ; preds = %96, %84
  %116 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %117 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = icmp ne %struct.nlattr* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %123 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %122, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = call i8* @nla_get_u32(%struct.nlattr* %125)
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %130 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %131 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %132 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %130, i64 %131
  %133 = load %struct.nlattr*, %struct.nlattr** %132, align 8
  %134 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %129, %struct.nlattr* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %284

137:                                              ; preds = %121, %115
  br label %147

138:                                              ; preds = %76
  %139 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %140 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %141 = load i64, i64* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %139, %struct.nlattr* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %284

147:                                              ; preds = %137
  br label %192

148:                                              ; preds = %70
  %149 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %150 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %149, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = icmp ne %struct.nlattr* %152, null
  br i1 %153, label %154, label %191

154:                                              ; preds = %148
  %155 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %156 = load i64, i64* @NL80211_ATTR_CHANNEL_WIDTH, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %155, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = call i8* @nla_get_u32(%struct.nlattr* %158)
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %162 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %164 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %165 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %163, i64 %164
  %166 = load %struct.nlattr*, %struct.nlattr** %165, align 8
  %167 = icmp ne %struct.nlattr* %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %154
  %169 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %170 = load i64, i64* @NL80211_ATTR_CENTER_FREQ1, align 8
  %171 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %169, i64 %170
  %172 = load %struct.nlattr*, %struct.nlattr** %171, align 8
  %173 = call i8* @nla_get_u32(%struct.nlattr* %172)
  %174 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %175 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %168, %154
  %177 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %178 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %179 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %177, i64 %178
  %180 = load %struct.nlattr*, %struct.nlattr** %179, align 8
  %181 = icmp ne %struct.nlattr* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %184 = load i64, i64* @NL80211_ATTR_CENTER_FREQ2, align 8
  %185 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %183, i64 %184
  %186 = load %struct.nlattr*, %struct.nlattr** %185, align 8
  %187 = call i8* @nla_get_u32(%struct.nlattr* %186)
  %188 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %189 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %182, %176
  br label %191

191:                                              ; preds = %190, %148
  br label %192

192:                                              ; preds = %191, %147
  %193 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %194 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %193, i32 0, i32 0
  %195 = load %struct.nlattr**, %struct.nlattr*** %194, align 8
  %196 = load i64, i64* @NL80211_ATTR_WIPHY_EDMG_CHANNELS, align 8
  %197 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %195, i64 %196
  %198 = load %struct.nlattr*, %struct.nlattr** %197, align 8
  %199 = icmp ne %struct.nlattr* %198, null
  br i1 %199, label %200, label %230

200:                                              ; preds = %192
  %201 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %202 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %201, i32 0, i32 0
  %203 = load %struct.nlattr**, %struct.nlattr*** %202, align 8
  %204 = load i64, i64* @NL80211_ATTR_WIPHY_EDMG_CHANNELS, align 8
  %205 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %203, i64 %204
  %206 = load %struct.nlattr*, %struct.nlattr** %205, align 8
  %207 = call i8* @nla_get_u8(%struct.nlattr* %206)
  %208 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %209 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i8* %207, i8** %210, align 8
  %211 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %212 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %211, i32 0, i32 0
  %213 = load %struct.nlattr**, %struct.nlattr*** %212, align 8
  %214 = load i64, i64* @NL80211_ATTR_WIPHY_EDMG_BW_CONFIG, align 8
  %215 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %213, i64 %214
  %216 = load %struct.nlattr*, %struct.nlattr** %215, align 8
  %217 = icmp ne %struct.nlattr* %216, null
  br i1 %217, label %218, label %229

218:                                              ; preds = %200
  %219 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %220 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %219, i32 0, i32 0
  %221 = load %struct.nlattr**, %struct.nlattr*** %220, align 8
  %222 = load i64, i64* @NL80211_ATTR_WIPHY_EDMG_BW_CONFIG, align 8
  %223 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %221, i64 %222
  %224 = load %struct.nlattr*, %struct.nlattr** %223, align 8
  %225 = call i8* @nla_get_u8(%struct.nlattr* %224)
  %226 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %227 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  store i8* %225, i8** %228, align 8
  br label %229

229:                                              ; preds = %218, %200
  br label %237

230:                                              ; preds = %192
  %231 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %232 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  store i8* null, i8** %233, align 8
  %234 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %235 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  store i8* null, i8** %236, align 8
  br label %237

237:                                              ; preds = %230, %229
  %238 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %239 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %237
  %242 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %243 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %4, align 4
  br label %284

246:                                              ; preds = %237
  %247 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %248 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %247, i32 0, i32 0
  %249 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %250 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %251 = call i32 @cfg80211_chandef_usable(%struct.TYPE_8__* %248, %struct.cfg80211_chan_def* %249, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %246
  %254 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %255 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %254, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %4, align 4
  br label %284

258:                                              ; preds = %246
  %259 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %260 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %266 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %283

270:                                              ; preds = %264, %258
  %271 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %272 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @WIPHY_FLAG_SUPPORTS_5_10_MHZ, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %270
  %279 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %280 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %279, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %4, align 4
  br label %284

283:                                              ; preds = %270, %264
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %278, %253, %241, %138, %128, %106, %61, %23
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ieee80211_get_channel(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @cfg80211_chandef_usable(%struct.TYPE_8__*, %struct.cfg80211_chan_def*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
