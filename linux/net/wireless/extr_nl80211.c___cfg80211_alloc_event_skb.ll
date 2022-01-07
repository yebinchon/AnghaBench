; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_alloc_event_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_alloc_event_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.wiphy = type { i32, %struct.nl80211_vendor_cmd_info* }
%struct.nl80211_vendor_cmd_info = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__cfg80211_alloc_event_skb(%struct.wiphy* %0, %struct.wireless_dev* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cfg80211_registered_device*, align 8
  %19 = alloca %struct.nl80211_vendor_cmd_info*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %10, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %18, align 8
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %53 [
    i32 129, label %23
    i32 128, label %31
  ]

23:                                               ; preds = %8
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %65

30:                                               ; preds = %23
  store %struct.nl80211_vendor_cmd_info* null, %struct.nl80211_vendor_cmd_info** %19, align 8
  br label %55

31:                                               ; preds = %8
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %37 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ true, %31 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %65

46:                                               ; preds = %40
  %47 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %48 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %47, i32 0, i32 1
  %49 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nl80211_vendor_cmd_info, %struct.nl80211_vendor_cmd_info* %49, i64 %51
  store %struct.nl80211_vendor_cmd_info* %52, %struct.nl80211_vendor_cmd_info** %19, align 8
  br label %55

53:                                               ; preds = %8
  %54 = call i32 @WARN_ON(i32 1)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %65

55:                                               ; preds = %46, %30
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %18, align 8
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %19, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call %struct.sk_buff* @__cfg80211_alloc_vendor_skb(%struct.cfg80211_registered_device* %56, %struct.wireless_dev* %57, i32 %58, i32 %59, i32 0, i32 %60, i32 %61, %struct.nl80211_vendor_cmd_info* %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %9, align 8
  br label %65

65:                                               ; preds = %55, %53, %45, %29
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %66
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @__cfg80211_alloc_vendor_skb(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, i32, i32, i32, i32, %struct.nl80211_vendor_cmd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
