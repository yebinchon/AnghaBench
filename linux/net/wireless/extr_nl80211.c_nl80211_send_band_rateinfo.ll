; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_band_rateinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_band_rateinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { i32, i32, %struct.ieee80211_rate*, %struct.TYPE_6__, i32*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i64 }
%struct.nlattr = type { i32 }

@NL80211_BAND_ATTR_HT_MCS_SET = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_HT_CAPA = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_HT_AMPDU_FACTOR = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_HT_AMPDU_DENSITY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_VHT_MCS_SET = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_VHT_CAPA = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_IFTYPE_DATA = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_EDMG_CHANNELS = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_EDMG_BW_CONFIG = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_RATES = common dso_local global i32 0, align 4
@NL80211_BITRATE_ATTR_RATE = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_supported_band*)* @nl80211_send_band_rateinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_band_rateinfo(%struct.sk_buff* %0, %struct.ieee80211_supported_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @NL80211_BAND_ATTR_HT_MCS_SET, align 4
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = call i64 @nla_put(%struct.sk_buff* %19, i32 %20, i32 4, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NL80211_BAND_ATTR_HT_CAPA, align 4
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @nla_put_u16(%struct.sk_buff* %27, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @NL80211_BAND_ATTR_HT_AMPDU_FACTOR, align 4
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @nla_put_u8(%struct.sk_buff* %36, i32 %37, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @NL80211_BAND_ATTR_HT_AMPDU_DENSITY, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @nla_put_u8(%struct.sk_buff* %45, i32 %46, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44, %35, %26, %18
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %232

56:                                               ; preds = %44, %2
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* @NL80211_BAND_ATTR_VHT_MCS_SET, align 4
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = call i64 @nla_put(%struct.sk_buff* %63, i32 %64, i32 4, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* @NL80211_BAND_ATTR_VHT_CAPA, align 4
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %71, i32 %72, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70, %62
  %80 = load i32, i32* @ENOBUFS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %232

82:                                               ; preds = %70, %56
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %137

87:                                               ; preds = %82
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load i32, i32* @NL80211_BAND_ATTR_IFTYPE_DATA, align 4
  %90 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %88, i32 %89)
  store %struct.nlattr* %90, %struct.nlattr** %10, align 8
  %91 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @ENOBUFS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %232

96:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %130, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %104, i32 %106)
  store %struct.nlattr* %107, %struct.nlattr** %12, align 8
  %108 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %109 = icmp ne %struct.nlattr* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @ENOBUFS, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %232

113:                                              ; preds = %103
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @nl80211_send_iftype_data(%struct.sk_buff* %114, i32* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %232

126:                                              ; preds = %113
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %129 = call i32 @nla_nest_end(%struct.sk_buff* %127, %struct.nlattr* %128)
  br label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %97

133:                                              ; preds = %97
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %136 = call i32 @nla_nest_end(%struct.sk_buff* %134, %struct.nlattr* %135)
  br label %137

137:                                              ; preds = %133, %82
  %138 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %139 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %137
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = load i32, i32* @NL80211_BAND_ATTR_EDMG_CHANNELS, align 4
  %146 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %147 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @nla_put_u8(%struct.sk_buff* %144, i32 %145, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %143
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = load i32, i32* @NL80211_BAND_ATTR_EDMG_BW_CONFIG, align 4
  %155 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %156 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @nla_put_u8(%struct.sk_buff* %153, i32 %154, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152, %143
  %162 = load i32, i32* @ENOBUFS, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %232

164:                                              ; preds = %152, %137
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = load i32, i32* @NL80211_BAND_ATTR_RATES, align 4
  %167 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %165, i32 %166)
  store %struct.nlattr* %167, %struct.nlattr** %6, align 8
  %168 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %169 = icmp ne %struct.nlattr* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* @ENOBUFS, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %232

173:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %225, %173
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %177 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %228

180:                                              ; preds = %174
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %181, i32 %182)
  store %struct.nlattr* %183, %struct.nlattr** %7, align 8
  %184 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %185 = icmp ne %struct.nlattr* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* @ENOBUFS, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %3, align 4
  br label %232

189:                                              ; preds = %180
  %190 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %191 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %190, i32 0, i32 2
  %192 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %192, i64 %194
  store %struct.ieee80211_rate* %195, %struct.ieee80211_rate** %8, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = load i32, i32* @NL80211_BITRATE_ATTR_RATE, align 4
  %198 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %199 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @nla_put_u32(%struct.sk_buff* %196, i32 %197, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %189
  %204 = load i32, i32* @ENOBUFS, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %232

206:                                              ; preds = %189
  %207 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %208 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %206
  %214 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %215 = load i32, i32* @NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE, align 4
  %216 = call i64 @nla_put_flag(%struct.sk_buff* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i32, i32* @ENOBUFS, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %232

221:                                              ; preds = %213, %206
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %224 = call i32 @nla_nest_end(%struct.sk_buff* %222, %struct.nlattr* %223)
  br label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %174

228:                                              ; preds = %174
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %231 = call i32 @nla_nest_end(%struct.sk_buff* %229, %struct.nlattr* %230)
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %228, %218, %203, %186, %170, %161, %124, %110, %93, %79, %53
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nl80211_send_iftype_data(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
