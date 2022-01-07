; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_add_scan_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_add_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { %struct.cfg80211_scan_request* }
%struct.cfg80211_scan_request = type { i32, i32, %struct.TYPE_6__, i64, i64, i32, %struct.TYPE_5__**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_SCAN_SSIDS = common dso_local global i32 0, align 4
@NL80211_ATTR_SCAN_FREQUENCIES = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_SCAN_FLAGS = common dso_local global i32 0, align 4
@NL80211_ATTR_SCAN_START_TIME_TSF = common dso_local global i32 0, align 4
@NL80211_BSS_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_SCAN_START_TIME_TSF_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_registered_device*)* @nl80211_add_scan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_add_scan_req(%struct.sk_buff* %0, %struct.cfg80211_registered_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg80211_registered_device* %1, %struct.cfg80211_registered_device** %5, align 8
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 0
  %11 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %10, align 8
  store %struct.cfg80211_scan_request* %11, %struct.cfg80211_scan_request** %6, align 8
  %12 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %13 = icmp ne %struct.cfg80211_scan_request* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @NL80211_ATTR_SCAN_SSIDS, align 4
  %22 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %20, i32 %21)
  store %struct.nlattr* %22, %struct.nlattr** %7, align 8
  %23 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %157

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %56, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %37 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %36, i32 0, i32 7
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %45 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %44, i32 0, i32 7
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @nla_put(%struct.sk_buff* %34, i32 %35, i32 %43, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %157

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %62 = call i32 @nla_nest_end(%struct.sk_buff* %60, %struct.nlattr* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* @NL80211_ATTR_SCAN_FREQUENCIES, align 4
  %65 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %63, i32 %64)
  store %struct.nlattr* %65, %struct.nlattr** %7, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %157

69:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %73 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %79, i32 0, i32 6
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @nla_put_u32(%struct.sk_buff* %77, i32 %78, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %157

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %98 = call i32 @nla_nest_end(%struct.sk_buff* %96, %struct.nlattr* %97)
  %99 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %100 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i32, i32* @NL80211_ATTR_IE, align 4
  %106 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %107 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %110 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @nla_put(%struct.sk_buff* %104, i32 %105, i32 %108, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %157

115:                                              ; preds = %103, %95
  %116 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %117 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = load i32, i32* @NL80211_ATTR_SCAN_FLAGS, align 4
  %123 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %124 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @nla_put_u32(%struct.sk_buff* %121, i32 %122, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %157

129:                                              ; preds = %120, %115
  %130 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %131 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load i32, i32* @NL80211_ATTR_SCAN_START_TIME_TSF, align 4
  %138 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %139 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @NL80211_BSS_PAD, align 4
  %143 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %136, i32 %137, i64 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %135
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = load i32, i32* @NL80211_ATTR_SCAN_START_TIME_TSF_BSSID, align 4
  %148 = load i32, i32* @ETH_ALEN, align 4
  %149 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %150 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @nla_put(%struct.sk_buff* %146, i32 %147, i32 %148, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145, %135
  br label %157

156:                                              ; preds = %145, %129
  store i32 0, i32* %3, align 4
  br label %160

157:                                              ; preds = %155, %128, %114, %90, %68, %54, %25
  %158 = load i32, i32* @ENOBUFS, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %156, %18
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
