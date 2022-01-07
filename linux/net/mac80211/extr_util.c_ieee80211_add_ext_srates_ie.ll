; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_add_ext_srates_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_add_ext_srates_ie.c"
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
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_ext_srates_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
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
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call i32 @ieee80211_chandef_rate_flags(i32* %31)
  store i32 %32, i32* %18, align 4
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = call i32 @ieee80211_vif_get_shift(%struct.TYPE_10__* %34)
  store i32 %35, i32* %13, align 4
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
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %15, align 8
  %76 = sub i64 %75, 8
  store i64 %76, i64* %15, align 8
  br label %78

77:                                               ; preds = %71
  store i64 0, i64* %15, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i64 @skb_tailroom(%struct.sk_buff* %79)
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %81, 2
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %154

87:                                               ; preds = %78
  %88 = load i64, i64* %15, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %153

90:                                               ; preds = %87
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 2
  %94 = call i64* @skb_put(%struct.sk_buff* %91, i64 %93)
  store i64* %94, i64** %16, align 8
  %95 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64*, i64** %16, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %16, align 8
  store i64 %96, i64* %97, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64*, i64** %16, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %16, align 8
  store i64 %99, i64* %100, align 8
  store i64 8, i64* %14, align 8
  br label %102

102:                                              ; preds = %149, %90
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %105 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %102
  store i64 0, i64* %19, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %111 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %109, %116
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %149

121:                                              ; preds = %108
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @BIT(i64 %126)
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i64 128, i64* %19, align 8
  br label %131

131:                                              ; preds = %130, %124, %121
  %132 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %133 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load i64, i64* %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %13, align 4
  %140 = shl i32 1, %139
  %141 = mul nsw i32 5, %140
  %142 = call i32 @DIV_ROUND_UP(i32 %138, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i64, i64* %19, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = or i64 %143, %145
  %147 = load i64*, i64** %16, align 8
  %148 = getelementptr inbounds i64, i64* %147, i32 1
  store i64* %148, i64** %16, align 8
  store i64 %146, i64* %147, align 8
  br label %149

149:                                              ; preds = %131, %120
  %150 = load i64, i64* %14, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %14, align 8
  br label %102

152:                                              ; preds = %102
  br label %153

153:                                              ; preds = %152, %87
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %84
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @ieee80211_chandef_rate_flags(i32*) #1

declare dso_local i32 @ieee80211_vif_get_shift(%struct.TYPE_10__*) #1

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
