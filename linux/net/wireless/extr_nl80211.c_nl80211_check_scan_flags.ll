; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_check_scan_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_check_scan_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.nlattr = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, i32*, i32* }
%struct.cfg80211_scan_request = type { i32, i32*, i32* }

@NL80211_ATTR_SCAN_FLAGS = common dso_local global i64 0, align 8
@NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_FEATURE_ND_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_LOW_PRIORITY = common dso_local global i32 0, align 4
@NL80211_FEATURE_LOW_PRIORITY_SCAN = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_LOW_SPAN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_LOW_SPAN_SCAN = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_LOW_POWER = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_LOW_POWER_SCAN = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_HIGH_ACCURACY = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_HIGH_ACCURACY_SCAN = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_MAX_CHANNEL_TIME = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_ACCEPT_BCAST_PROBE_RESP = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_ACCEPT_BCAST_PROBE_RESP = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_OCE_PROBE_REQ_HIGH_TX_RATE = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_RANDOM_SN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SCAN_RANDOM_SN = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_MIN_PREQ_CONTENT = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i8*, %struct.nlattr**, i32)* @nl80211_check_scan_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_check_scan_flags(%struct.wiphy* %0, %struct.wireless_dev* %1, i8* %2, %struct.nlattr** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %17 = alloca %struct.cfg80211_scan_request*, align 8
  %18 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %20 = load i64, i64* @NL80211_ATTR_SCAN_FLAGS, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %188

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.cfg80211_sched_scan_request*
  store %struct.cfg80211_sched_scan_request* %30, %struct.cfg80211_sched_scan_request** %16, align 8
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %32 = icmp ne %struct.wireless_dev* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @NL80211_FEATURE_ND_RANDOM_MAC_ADDR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %15, align 4
  %39 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %16, align 8
  %40 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %39, i32 0, i32 0
  store i32* %40, i32** %14, align 8
  %41 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %16, align 8
  %42 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %12, align 8
  %44 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %16, align 8
  %45 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %13, align 8
  br label %59

47:                                               ; preds = %25
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to %struct.cfg80211_scan_request*
  store %struct.cfg80211_scan_request* %49, %struct.cfg80211_scan_request** %17, align 8
  %50 = load i32, i32* @NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %17, align 8
  %52 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %51, i32 0, i32 0
  store i32* %52, i32** %14, align 8
  %53 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %17, align 8
  %54 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %12, align 8
  %56 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %17, align 8
  %57 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %13, align 8
  br label %59

59:                                               ; preds = %47, %37
  %60 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %61 = load i64, i64* @NL80211_ATTR_SCAN_FLAGS, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @nla_get_u32(%struct.nlattr* %63)
  %65 = load i32*, i32** %14, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NL80211_SCAN_FLAG_LOW_PRIORITY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  %72 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %73 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NL80211_FEATURE_LOW_PRIORITY_SCAN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %150

78:                                               ; preds = %71, %59
  %79 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NL80211_SCAN_FLAG_LOW_SPAN, align 4
  %83 = load i32, i32* @NL80211_EXT_FEATURE_LOW_SPAN_SCAN, align 4
  %84 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %79, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %150

86:                                               ; preds = %78
  %87 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NL80211_SCAN_FLAG_LOW_POWER, align 4
  %91 = load i32, i32* @NL80211_EXT_FEATURE_LOW_POWER_SCAN, align 4
  %92 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %87, i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %150

94:                                               ; preds = %86
  %95 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NL80211_SCAN_FLAG_HIGH_ACCURACY, align 4
  %99 = load i32, i32* @NL80211_EXT_FEATURE_HIGH_ACCURACY_SCAN, align 4
  %100 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %95, i32 %97, i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %150

102:                                              ; preds = %94
  %103 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME, align 4
  %107 = load i32, i32* @NL80211_EXT_FEATURE_FILS_MAX_CHANNEL_TIME, align 4
  %108 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %103, i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %150

110:                                              ; preds = %102
  %111 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NL80211_SCAN_FLAG_ACCEPT_BCAST_PROBE_RESP, align 4
  %115 = load i32, i32* @NL80211_EXT_FEATURE_ACCEPT_BCAST_PROBE_RESP, align 4
  %116 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %111, i32 %113, i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %150

118:                                              ; preds = %110
  %119 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION, align 4
  %123 = load i32, i32* @NL80211_EXT_FEATURE_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION, align 4
  %124 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %119, i32 %121, i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %118
  %127 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE, align 4
  %131 = load i32, i32* @NL80211_EXT_FEATURE_OCE_PROBE_REQ_HIGH_TX_RATE, align 4
  %132 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %127, i32 %129, i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_SN, align 4
  %139 = load i32, i32* @NL80211_EXT_FEATURE_SCAN_RANDOM_SN, align 4
  %140 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %135, i32 %137, i32 %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NL80211_SCAN_FLAG_MIN_PREQ_CONTENT, align 4
  %147 = load i32, i32* @NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT, align 4
  %148 = call i32 @nl80211_check_scan_feat(%struct.wiphy* %143, i32 %145, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142, %134, %126, %118, %110, %102, %94, %86, %78, %71
  %151 = load i32, i32* @EOPNOTSUPP, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %188

153:                                              ; preds = %142
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %153
  %160 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %161 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %15, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %168 = icmp ne %struct.wireless_dev* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %171 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169, %159
  %175 = load i32, i32* @EOPNOTSUPP, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %6, align 4
  br label %188

177:                                              ; preds = %169, %166
  %178 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @nl80211_parse_random_mac(%struct.nlattr** %178, i32* %179, i32* %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* %18, align 4
  store i32 %185, i32* %6, align 4
  br label %188

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %153
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %187, %184, %174, %150, %24
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nl80211_check_scan_feat(%struct.wiphy*, i32, i32, i32) #1

declare dso_local i32 @nl80211_parse_random_mac(%struct.nlattr**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
