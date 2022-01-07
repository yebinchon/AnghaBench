; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_setup_cfm_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_setup_cfm_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__, %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32* }
%struct.ieee80211_local = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_14__, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.ieee80211_supported_band = type { i64 }

@ieee80211_tdls_add_setup_cfm_ies.before_qos = internal constant [1 x i32] [i32 129], align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@ieee80211_tdls_add_setup_cfm_ies.before_ht_op = internal constant [4 x i32] [i32 129, i32 130, i32 131, i32 128], align 16
@IEEE80211_HT_OP_MODE_PROTECTION_NONHT_MIXED = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_HT_STA_PRSNT = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WLAN_STA_TDLS_WIDER_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32*, i64)* @ieee80211_tdls_add_setup_cfm_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_setup_cfm_ies(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_local*, align 8
  %14 = alloca %struct.ieee80211_if_managed*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sta_info*, align 8
  %18 = alloca %struct.sta_info*, align 8
  %19 = alloca %struct.ieee80211_supported_band*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 2
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  store %struct.ieee80211_local* %24, %struct.ieee80211_local** %13, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.ieee80211_if_managed* %27, %struct.ieee80211_if_managed** %14, align 8
  store i64 0, i64* %15, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %29 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %28)
  store %struct.ieee80211_supported_band* %29, %struct.ieee80211_supported_band** %19, align 8
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %31 = icmp ne %struct.ieee80211_supported_band* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  br label %205

33:                                               ; preds = %6
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %37, i32* %38)
  store %struct.sta_info* %39, %struct.sta_info** %17, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %41 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %40, i32* %43)
  store %struct.sta_info* %44, %struct.sta_info** %18, align 8
  %45 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %46 = icmp ne %struct.sta_info* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %49 = icmp ne %struct.sta_info* %48, null
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %33
  %52 = phi i1 [ true, %33 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %205

60:                                               ; preds = %51
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %60
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @ieee80211_tdls_add_setup_cfm_ies.before_qos, i64 0, i64 0))
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @ieee80211_ie_split(i32* %71, i64 %72, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @ieee80211_tdls_add_setup_cfm_ies.before_qos, i64 0, i64 0), i32 %73, i64 %74)
  store i64 %75, i64* %16, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = sub i64 %80, %81
  %83 = call i32 @skb_put_data(%struct.sk_buff* %76, i32* %79, i64 %82)
  %84 = load i64, i64* %16, align 8
  store i64 %84, i64* %15, align 8
  br label %85

85:                                               ; preds = %70, %60
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @ieee80211_tdls_add_wmm_param_ie(%struct.ieee80211_sub_if_data* %99, %struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %98, %92, %85
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load i32*, i32** %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ieee80211_tdls_add_setup_cfm_ies.before_ht_op, i64 0, i64 0))
  %109 = load i64, i64* %15, align 8
  %110 = call i64 @ieee80211_ie_split(i32* %106, i64 %107, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ieee80211_tdls_add_setup_cfm_ies.before_ht_op, i64 0, i64 0), i32 %108, i64 %109)
  store i64 %110, i64* %16, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %15, align 8
  %117 = sub i64 %115, %116
  %118 = call i32 @skb_put_data(%struct.sk_buff* %111, i32* %114, i64 %117)
  %119 = load i64, i64* %16, align 8
  store i64 %119, i64* %15, align 8
  br label %120

120:                                              ; preds = %105, %102
  %121 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %152, label %127

127:                                              ; preds = %120
  %128 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %129 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %127
  %135 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION_NONHT_MIXED, align 4
  %136 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_HT_STA_PRSNT, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %21, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = call i32* @skb_put(%struct.sk_buff* %140, i32 6)
  store i32* %141, i32** %20, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %144 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %21, align 4
  %151 = call i32 @ieee80211_ie_build_ht_oper(i32* %142, %struct.TYPE_14__* %145, i32* %149, i32 %150, i32 1)
  br label %152

152:                                              ; preds = %134, %127, %120
  %153 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data* %153, %struct.sk_buff* %154, i32* %155, i32 %156)
  %158 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %159 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %152
  %164 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %165 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %163
  %171 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %172 = load i32, i32* @WLAN_STA_TDLS_WIDER_BW, align 4
  %173 = call i64 @test_sta_flag(%struct.sta_info* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %177 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %178 = call i32 @ieee80211_tdls_chandef_vht_upgrade(%struct.ieee80211_sub_if_data* %176, %struct.sta_info* %177)
  br label %179

179:                                              ; preds = %175, %170
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = call i32* @skb_put(%struct.sk_buff* %180, i32 6)
  store i32* %181, i32** %20, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %184 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %187 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %186, i32 0, i32 0
  %188 = call i32 @ieee80211_ie_build_vht_oper(i32* %182, %struct.TYPE_13__* %185, i32* %187)
  br label %189

189:                                              ; preds = %179, %163, %152
  %190 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %191 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i64, i64* %12, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load i64, i64* %12, align 8
  store i64 %196, i64* %16, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = load i64, i64* %15, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i64, i64* %16, align 8
  %202 = load i64, i64* %15, align 8
  %203 = sub i64 %201, %202
  %204 = call i32 @skb_put_data(%struct.sk_buff* %197, i32* %200, i64 %203)
  br label %205

205:                                              ; preds = %32, %56, %195, %189
  ret void
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ieee80211_ie_split(i32*, i64, i32*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @ieee80211_tdls_add_wmm_param_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_ie_build_ht_oper(i32*, %struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_tdls_chandef_vht_upgrade(%struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_ie_build_vht_oper(i32*, %struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
