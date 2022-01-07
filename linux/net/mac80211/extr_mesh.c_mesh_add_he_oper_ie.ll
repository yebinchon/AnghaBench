; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_add_he_oper_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_add_he_oper_ie.c"
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
define dso_local i32 @mesh_add_he_oper_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %9)
  store %struct.ieee80211_supported_band* %10, %struct.ieee80211_supported_band** %7, align 8
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %12 = icmp ne %struct.ieee80211_supported_band* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %18 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %19 = call %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band* %17, i32 %18)
  store %struct.ieee80211_sta_he_cap* %19, %struct.ieee80211_sta_he_cap** %6, align 8
  %20 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %21 = icmp ne %struct.ieee80211_sta_he_cap* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %22
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %31, %22, %16
  store i32 0, i32* %3, align 4
  br label %63

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @skb_tailroom(%struct.sk_buff* %51)
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 7
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32* @skb_put(%struct.sk_buff* %59, i32 7)
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @ieee80211_ie_build_he_oper(i32* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %55, %49, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_ie_build_he_oper(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
