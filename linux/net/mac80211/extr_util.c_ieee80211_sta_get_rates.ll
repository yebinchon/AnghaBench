; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_sta_get_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_sta_get_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ieee802_11_elems = type { i32, i32, i32*, i32* }

@BSS_MEMBERSHIP_SELECTOR_HT_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_sta_get_rates(%struct.ieee80211_sub_if_data* %0, %struct.ieee802_11_elems* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee802_11_elems*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, i64 %30
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, align 8
  store %struct.ieee80211_supported_band* %32, %struct.ieee80211_supported_band** %10, align 8
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %34 = icmp ne %struct.ieee80211_supported_band* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %174

40:                                               ; preds = %4
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = call i32 @ieee80211_chandef_rate_flags(i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 0
  %48 = call i32 @ieee80211_vif_get_shift(%struct.TYPE_12__* %47)
  store i32 %48, i32* %16, align 4
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %169, %40
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %55 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %58 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = icmp slt i32 %53, %60
  br i1 %61, label %62, label %172

62:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %65 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %70 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %17, align 4
  br label %94

76:                                               ; preds = %62
  %77 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %78 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %83 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %87 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %81, %76
  br label %94

94:                                               ; preds = %93, %68
  %95 = load i32, i32* %17, align 4
  %96 = and i32 %95, 127
  %97 = mul nsw i32 5, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load i32, i32* %17, align 4
  %108 = and i32 %107, 127
  %109 = load i32, i32* @BSS_MEMBERSHIP_SELECTOR_HT_PHY, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %169

112:                                              ; preds = %106, %94
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %165, %112
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %11, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %168

118:                                              ; preds = %113
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %121 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %119, %127
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  br label %165

132:                                              ; preds = %118
  %133 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %134 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %16, align 4
  %142 = shl i32 1, %141
  %143 = call i32 @DIV_ROUND_UP(i32 %140, i32 %142)
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %132
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @BIT(i32 %148)
  %150 = load i32, i32* %12, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %12, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @BIT(i32 %158)
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %154, %147
  br label %164

164:                                              ; preds = %163, %132
  br label %165

165:                                              ; preds = %164, %131
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %113

168:                                              ; preds = %113
  br label %169

169:                                              ; preds = %168, %111
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %52

172:                                              ; preds = %52
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %39
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_chandef_rate_flags(i32*) #1

declare dso_local i32 @ieee80211_vif_get_shift(%struct.TYPE_12__*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
