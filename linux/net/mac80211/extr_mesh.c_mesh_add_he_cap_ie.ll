; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_add_he_cap_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_add_he_cap_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta_he_cap = type { i32 }
%struct.ieee80211_supported_band = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_5 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_10 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_add_he_cap_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca i64*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %11)
  store %struct.ieee80211_supported_band* %12, %struct.ieee80211_supported_band** %9, align 8
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %14 = icmp ne %struct.ieee80211_supported_band* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %20 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %21 = call %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band* %19, i32 %20)
  store %struct.ieee80211_sta_he_cap* %21, %struct.ieee80211_sta_he_cap** %8, align 8
  %22 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %23 = icmp ne %struct.ieee80211_sta_he_cap* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %33, %24, %18
  store i32 0, i32* %4, align 4
  br label %70

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i64 @skb_tailroom(%struct.sk_buff* %53)
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64* @skb_put(%struct.sk_buff* %61, i64 %62)
  store i64* %63, i64** %10, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = call i32 @ieee80211_ie_build_he_cap(i64* %64, %struct.ieee80211_sta_he_cap* %65, i64* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %57, %51, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band*, i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @ieee80211_ie_build_he_cap(i64*, %struct.ieee80211_sta_he_cap*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
