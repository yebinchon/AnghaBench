; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_prep_tdls_direct.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_prep_tdls_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_14__, i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, %struct.sk_buff*)* @ieee80211_prep_tdls_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_tdls_direct(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.sk_buff* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.ieee80211_sub_if_data*, align 8
  %17 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.sk_buff* %6, %struct.sk_buff** %15, align 8
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %18)
  store %struct.ieee80211_sub_if_data* %19, %struct.ieee80211_sub_if_data** %16, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %21 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %20, i32 24)
  store %struct.ieee80211_mgmt* %21, %struct.ieee80211_mgmt** %17, align 8
  %22 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32 %24, i32* %25, i32 %26)
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %30, i32* %34, i32 %35)
  %37 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32 %39, i32* %44, i32 %45)
  %47 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %48 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %85 [
    i32 128, label %54
  ]

54:                                               ; preds = %7
  %55 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %56 = call i32 @skb_put(%struct.sk_buff* %55, i32 17)
  %57 = load i32, i32* @WLAN_CATEGORY_PUBLIC, align 4
  %58 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 8
  %62 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 128, i32* %67, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %70 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 4
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @ieee80211_get_tdls_sta_capab(%struct.ieee80211_sub_if_data* %75, i32 %76)
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  store i8* %78, i8** %84, align 8
  br label %88

85:                                               ; preds = %7
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %89

88:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_tdls_sta_capab(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
