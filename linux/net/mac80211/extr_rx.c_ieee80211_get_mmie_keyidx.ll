; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_get_mmie_keyidx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_get_mmie_keyidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ieee80211_mmie = type { i64, i32, i32 }
%struct.ieee80211_mmie_16 = type { i64, i32, i32 }

@WLAN_EID_MMIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ieee80211_get_mmie_keyidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_mmie_keyidx(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_mgmt*, align 8
  %5 = alloca %struct.ieee80211_mmie*, align 8
  %6 = alloca %struct.ieee80211_mmie_16*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %11, %struct.ieee80211_mgmt** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 40
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_multicast_ether_addr(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %1
  store i32 -1, i32* %2, align 4
  br label %90

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %90

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 16
  %39 = inttoptr i64 %38 to %struct.ieee80211_mmie*
  store %struct.ieee80211_mmie* %39, %struct.ieee80211_mmie** %5, align 8
  %40 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WLAN_EID_MMIE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %29
  %46 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, 14
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %90

56:                                               ; preds = %45, %29
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 16
  %66 = inttoptr i64 %65 to %struct.ieee80211_mmie_16*
  store %struct.ieee80211_mmie_16* %66, %struct.ieee80211_mmie_16** %6, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp uge i64 %70, 40
  br i1 %71, label %72, label %89

72:                                               ; preds = %56
  %73 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @WLAN_EID_MMIE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, 14
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %78, %72, %56
  store i32 -1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %84, %51, %28, %23
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
