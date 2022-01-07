; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_apply_htcap_overrides.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_apply_htcap_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i64, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64* }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_40MHZ_INTOLERANT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sta_ht_cap* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca %struct.ieee80211_ht_cap*, align 8
  %6 = alloca %struct.ieee80211_ht_cap*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %4, align 8
  %13 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %196

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %41 [
    i32 128, label %23
    i32 129, label %32
  ]

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store %struct.ieee80211_ht_cap* %27, %struct.ieee80211_ht_cap** %5, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store %struct.ieee80211_ht_cap* %31, %struct.ieee80211_ht_cap** %6, align 8
  br label %43

32:                                               ; preds = %18
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store %struct.ieee80211_ht_cap* %36, %struct.ieee80211_ht_cap** %5, align 8
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store %struct.ieee80211_ht_cap* %40, %struct.ieee80211_ht_cap** %6, align 8
  br label %43

41:                                               ; preds = %18
  %42 = call i32 @WARN_ON_ONCE(i32 1)
  br label %196

43:                                               ; preds = %32, %23
  %44 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to i64*
  store i64* %47, i64** %7, align 8
  %48 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = bitcast i32* %50 to i64*
  store i64* %51, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %89, %43
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = xor i64 %62, -1
  %64 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = and i64 %71, %63
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %73, %78
  %80 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %79
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %56
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %52

92:                                               ; preds = %52
  %93 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %94 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %95 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %96 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %97 = call i32 @__check_htcap_disable(%struct.ieee80211_ht_cap* %93, %struct.ieee80211_ht_cap* %94, %struct.ieee80211_sta_ht_cap* %95, i32 %96)
  %98 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %99 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %100 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %101 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %102 = call i32 @__check_htcap_disable(%struct.ieee80211_ht_cap* %98, %struct.ieee80211_ht_cap* %99, %struct.ieee80211_sta_ht_cap* %100, i32 %101)
  %103 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %104 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %105 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %106 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %107 = call i32 @__check_htcap_disable(%struct.ieee80211_ht_cap* %103, %struct.ieee80211_ht_cap* %104, %struct.ieee80211_sta_ht_cap* %105, i32 %106)
  %108 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %109 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %110 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %111 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %112 = call i32 @__check_htcap_disable(%struct.ieee80211_ht_cap* %108, %struct.ieee80211_ht_cap* %109, %struct.ieee80211_sta_ht_cap* %110, i32 %111)
  %113 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %114 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %115 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %116 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %117 = call i32 @__check_htcap_disable(%struct.ieee80211_ht_cap* %113, %struct.ieee80211_ht_cap* %114, %struct.ieee80211_sta_ht_cap* %115, i32 %116)
  %118 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %119 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %120 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %121 = load i32, i32* @IEEE80211_HT_CAP_40MHZ_INTOLERANT, align 4
  %122 = call i32 @__check_htcap_enable(%struct.ieee80211_ht_cap* %118, %struct.ieee80211_ht_cap* %119, %struct.ieee80211_sta_ht_cap* %120, i32 %121)
  %123 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %124 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %125 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %126 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %127 = call i32 @__check_htcap_enable(%struct.ieee80211_ht_cap* %123, %struct.ieee80211_ht_cap* %124, %struct.ieee80211_sta_ht_cap* %125, i32 %126)
  %128 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %129 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %132 = call i32 @cpu_to_le16(i32 %131)
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %92
  %136 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %137 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le16_to_cpu(i32 %138)
  %140 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %141 = and i32 %139, %140
  %142 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %143 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %135, %92
  %147 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %148 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %146
  %154 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %155 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %158 = and i32 %156, %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %11, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %162 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %153
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %168 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %165, %153
  br label %170

170:                                              ; preds = %169, %146
  %171 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %172 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %170
  %178 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %179 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT, align 4
  %184 = ashr i32 %182, %183
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %12, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %188 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %186, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %177
  %192 = load i64, i64* %12, align 8
  %193 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %177
  br label %196

196:                                              ; preds = %17, %41, %195, %170
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__check_htcap_disable(%struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap*, %struct.ieee80211_sta_ht_cap*, i32) #1

declare dso_local i32 @__check_htcap_enable(%struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap*, %struct.ieee80211_sta_ht_cap*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
