; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_add_srates_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_add_srates_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_srates_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  store %struct.ieee80211_local* %22, %struct.ieee80211_local** %10, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = call i32 @ieee80211_vif_get_shift(%struct.TYPE_10__* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @ieee80211_chandef_rate_flags(i32* %34)
  store i32 %35, i32* %18, align 4
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %41, i64 %43
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %44, align 8
  store %struct.ieee80211_supported_band* %45, %struct.ieee80211_supported_band** %11, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %46

46:                                               ; preds = %68, %4
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %53, %60
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %68

65:                                               ; preds = %52
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %14, align 8
  br label %46

71:                                               ; preds = %46
  %72 = load i64, i64* %15, align 8
  %73 = icmp ugt i64 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i64 8, i64* %15, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i64 @skb_tailroom(%struct.sk_buff* %76)
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %78, 2
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %145

84:                                               ; preds = %75
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, 2
  %88 = call i64* @skb_put(%struct.sk_buff* %85, i64 %87)
  store i64* %88, i64** %16, align 8
  %89 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %16, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %16, align 8
  store i64 %90, i64* %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64*, i64** %16, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %16, align 8
  store i64 %93, i64* %94, align 8
  store i64 0, i64* %14, align 8
  br label %96

96:                                               ; preds = %141, %84
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %144

100:                                              ; preds = %96
  store i64 0, i64* %19, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %103 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %101, %108
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %141

113:                                              ; preds = %100
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @BIT(i64 %118)
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i64 128, i64* %19, align 8
  br label %123

123:                                              ; preds = %122, %116, %113
  %124 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %125 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = shl i32 1, %131
  %133 = mul nsw i32 5, %132
  %134 = call i32 @DIV_ROUND_UP(i32 %130, i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i64, i64* %19, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = or i64 %135, %137
  %139 = load i64*, i64** %16, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %16, align 8
  store i64 %138, i64* %139, align 8
  br label %141

141:                                              ; preds = %123, %112
  %142 = load i64, i64* %14, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %14, align 8
  br label %96

144:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %81
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @ieee80211_vif_get_shift(%struct.TYPE_10__*) #1

declare dso_local i32 @ieee80211_chandef_rate_flags(i32*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
