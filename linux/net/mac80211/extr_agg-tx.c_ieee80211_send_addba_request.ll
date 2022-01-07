; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_send_addba_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_send_addba_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.ieee80211_local* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.ieee80211_local = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_18__, i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_BACK = common dso_local global i32 0, align 4
@WLAN_ACTION_ADDBA_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32, i32)* @ieee80211_send_addba_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_addba_request(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_local*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.ieee80211_mgmt*, align 8
  %18 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  store %struct.ieee80211_local* %21, %struct.ieee80211_local** %15, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 64, %25
  %27 = call %struct.sk_buff* @dev_alloc_skb(i64 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %16, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  br label %189

31:                                               ; preds = %7
  %32 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @skb_reserve(%struct.sk_buff* %32, i64 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %39 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %38, i32 24)
  store %struct.ieee80211_mgmt* %39, %struct.ieee80211_mgmt** %17, align 8
  %40 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32 %42, i32* %43, i32 %44)
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32 %48, i32* %52, i32 %53)
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %31
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68, %61, %31
  %76 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = call i32 @memcpy(i32 %78, i32* %82, i32 %83)
  br label %123

85:                                               ; preds = %68
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %94 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = call i32 @memcpy(i32 %95, i32* %100, i32 %101)
  br label %122

103:                                              ; preds = %85
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %112 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = call i32 @memcpy(i32 %113, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %103
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %122, %75
  %124 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %125 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %126 = or i32 %124, %125
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %129 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %131 = call i32 @skb_put(%struct.sk_buff* %130, i32 33)
  %132 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %133 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %134 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 8
  %137 = load i32, i32* @WLAN_ACTION_ADDBA_REQ, align 4
  %138 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %139 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  store i32 %137, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %146 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  store i32 %144, i32* %150, align 8
  store i32 1, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = or i32 %151, 2
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %10, align 4
  %154 = shl i32 %153, 2
  %155 = load i32, i32* %18, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %13, align 4
  %158 = shl i32 %157, 6
  %159 = load i32, i32* %18, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i8* @cpu_to_le16(i32 %161)
  %163 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %164 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  store i8* %162, i8** %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i8* @cpu_to_le16(i32 %169)
  %171 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %172 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i8* %170, i8** %176, align 8
  %177 = load i32, i32* %12, align 4
  %178 = shl i32 %177, 4
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %181 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  store i8* %179, i8** %185, align 8
  %186 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %188 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %186, %struct.sk_buff* %187)
  br label %189

189:                                              ; preds = %123, %30
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
