; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_parse_bss_select.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_parse_bss_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_bss_selection = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nl80211_bss_select_rssi_adjust = type { i32, i32 }

@NL80211_BSS_SELECT_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nl80211_bss_select_policy = common dso_local global i32 0, align 4
@__NL80211_BSS_SELECT_ATTR_INVALID = common dso_local global i64 0, align 8
@NL80211_BSS_SELECT_ATTR_RSSI = common dso_local global i64 0, align 8
@NL80211_BSS_SELECT_ATTR_BAND_PREF = common dso_local global i64 0, align 8
@NL80211_BSS_SELECT_ATTR_RSSI_ADJUST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.wiphy*, %struct.cfg80211_bss_selection*)* @parse_bss_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bss_select(%struct.nlattr* %0, %struct.wiphy* %1, %struct.cfg80211_bss_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.cfg80211_bss_selection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nl80211_bss_select_rssi_adjust*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.wiphy* %1, %struct.wiphy** %6, align 8
  store %struct.cfg80211_bss_selection* %2, %struct.cfg80211_bss_selection** %7, align 8
  %16 = load i32, i32* @NL80211_BSS_SELECT_ATTR_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %22 = call i8* @nla_data(%struct.nlattr* %21)
  %23 = bitcast i8* %22 to %struct.nlattr*
  store %struct.nlattr* %23, %struct.nlattr** %10, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %26 = call i32 @nla_len(%struct.nlattr* %25)
  %27 = call i32 @nla_ok(%struct.nlattr* %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

32:                                               ; preds = %3
  %33 = load i32, i32* @NL80211_BSS_SELECT_ATTR_MAX, align 4
  %34 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %35 = load i32, i32* @nl80211_bss_select_policy, align 4
  %36 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %33, %struct.nlattr* %34, i32 %35, i32* null)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

41:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @NL80211_BSS_SELECT_ATTR_MAX, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

58:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load i64, i64* @__NL80211_BSS_SELECT_ATTR_INVALID, align 8
  %65 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %66 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* @NL80211_BSS_SELECT_ATTR_RSSI, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i64, i64* @NL80211_BSS_SELECT_ATTR_RSSI, align 8
  %73 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %74 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %63
  %76 = load i64, i64* @NL80211_BSS_SELECT_ATTR_BAND_PREF, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i64, i64* @NL80211_BSS_SELECT_ATTR_BAND_PREF, align 8
  %82 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %83 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* @NL80211_BSS_SELECT_ATTR_BAND_PREF, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @nla_get_u32(%struct.nlattr* %86)
  %88 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %89 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %92 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %93 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @is_band_valid(%struct.wiphy* %91, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %80
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i64, i64* @NL80211_BSS_SELECT_ATTR_RSSI_ADJUST, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %142

107:                                              ; preds = %102
  %108 = load i64, i64* @NL80211_BSS_SELECT_ATTR_RSSI_ADJUST, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = call i8* @nla_data(%struct.nlattr* %110)
  %112 = bitcast i8* %111 to %struct.nl80211_bss_select_rssi_adjust*
  store %struct.nl80211_bss_select_rssi_adjust* %112, %struct.nl80211_bss_select_rssi_adjust** %15, align 8
  %113 = load i64, i64* @NL80211_BSS_SELECT_ATTR_RSSI_ADJUST, align 8
  %114 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %115 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.nl80211_bss_select_rssi_adjust*, %struct.nl80211_bss_select_rssi_adjust** %15, align 8
  %117 = getelementptr inbounds %struct.nl80211_bss_select_rssi_adjust, %struct.nl80211_bss_select_rssi_adjust* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %120 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.nl80211_bss_select_rssi_adjust*, %struct.nl80211_bss_select_rssi_adjust** %15, align 8
  %124 = getelementptr inbounds %struct.nl80211_bss_select_rssi_adjust, %struct.nl80211_bss_select_rssi_adjust* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %127 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %131 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %132 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @is_band_valid(%struct.wiphy* %130, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %107
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

141:                                              ; preds = %107
  br label %142

142:                                              ; preds = %141, %102
  %143 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %144 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @__NL80211_BSS_SELECT_ATTR_INVALID, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

151:                                              ; preds = %142
  %152 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %153 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %7, align 8
  %156 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @BIT(i64 %157)
  %159 = and i32 %154, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %151
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

164:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %164, %161, %148, %138, %98, %55, %39, %29
  %166 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_ok(%struct.nlattr*, i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @is_band_valid(%struct.wiphy*, i32) #2

declare dso_local i32 @BIT(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
