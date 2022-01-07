; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_beacon_get_tim.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_beacon_get_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_mutable_offsets = type { i32, i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BEACON_TX_STATUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_beacon_get_tim(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_mutable_offsets, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast %struct.ieee80211_mutable_offsets* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %18 = call %struct.sk_buff* @__ieee80211_beacon_get(%struct.ieee80211_hw* %16, %struct.ieee80211_vif* %17, %struct.ieee80211_mutable_offsets* %10, i32 0)
  store %struct.sk_buff* %18, %struct.sk_buff** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  br label %76

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %39 = load i32, i32* @BEACON_TX_STATUS, align 4
  %40 = call i64 @ieee80211_hw_check(%struct.ieee80211_hw* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %44 = call %struct.TYPE_3__* @hw_to_local(%struct.ieee80211_hw* %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %5, align 8
  br label %76

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %12, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %5, align 8
  br label %76

58:                                               ; preds = %50
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %60 = call i32 @ieee80211_vif_get_shift(%struct.ieee80211_vif* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %62 = call i32 @vif_to_sdata(%struct.ieee80211_vif* %61)
  %63 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(i32 %62)
  store %struct.ieee80211_supported_band* %63, %struct.ieee80211_supported_band** %13, align 8
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %65 = icmp ne %struct.ieee80211_supported_band* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %5, align 8
  br label %76

68:                                               ; preds = %58
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %70 = call %struct.TYPE_3__* @hw_to_local(%struct.ieee80211_hw* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @ieee80211_tx_monitor(%struct.TYPE_3__* %70, %struct.sk_buff* %71, %struct.ieee80211_supported_band* %72, i32 1, i32 %73, i32 0, i32* null)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %5, align 8
  br label %76

76:                                               ; preds = %68, %66, %56, %48, %21
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @__ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_mutable_offsets*, i32) #2

declare dso_local i64 @ieee80211_hw_check(%struct.ieee80211_hw*, i32) #2

declare dso_local %struct.TYPE_3__* @hw_to_local(%struct.ieee80211_hw*) #2

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #2

declare dso_local i32 @ieee80211_vif_get_shift(%struct.ieee80211_vif*) #2

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(i32) #2

declare dso_local i32 @vif_to_sdata(%struct.ieee80211_vif*) #2

declare dso_local i32 @ieee80211_tx_monitor(%struct.TYPE_3__*, %struct.sk_buff*, %struct.ieee80211_supported_band*, i32, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
