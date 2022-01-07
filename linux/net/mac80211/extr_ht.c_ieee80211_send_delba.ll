; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_send_delba.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_send_delba.c"
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
%struct.TYPE_15__ = type { i8*, i8*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_BACK = common dso_local global i32 0, align 4
@WLAN_ACTION_DELBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_delba(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_mgmt*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %11, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 56, %21
  %23 = call %struct.sk_buff* @dev_alloc_skb(i64 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %165

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %34, i32 24)
  store %struct.ieee80211_mgmt* %35, %struct.ieee80211_mgmt** %13, align 8
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %44, i32* %48, i32 %49)
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %71, label %57

57:                                               ; preds = %27
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %64, %57, %27
  %72 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @memcpy(i32 %74, i32* %78, i32 %79)
  br label %119

81:                                               ; preds = %64
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32 %91, i32* %96, i32 %97)
  br label %118

99:                                               ; preds = %81
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %108 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memcpy(i32 %109, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %106, %99
  br label %118

118:                                              ; preds = %117, %88
  br label %119

119:                                              ; preds = %118, %71
  %120 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %121 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %122 = or i32 %120, %121
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %125 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = call i32 @skb_put(%struct.sk_buff* %126, i32 25)
  %128 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %129 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %130 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 8
  %133 = load i32, i32* @WLAN_ACTION_DELBA, align 4
  %134 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %135 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  store i32 %133, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = shl i32 %140, 11
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %8, align 4
  %143 = shl i32 %142, 12
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %149 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  store i8* %147, i8** %153, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %157 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  store i8* %155, i8** %161, align 8
  %162 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %164 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %162, %struct.sk_buff* %163)
  br label %165

165:                                              ; preds = %119, %26
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
