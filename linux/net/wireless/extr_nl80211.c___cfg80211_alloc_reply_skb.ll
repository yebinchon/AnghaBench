; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_alloc_reply_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___cfg80211_alloc_reply_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__cfg80211_alloc_reply_skb(%struct.wiphy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %12 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %11)
  store %struct.cfg80211_registered_device* %12, %struct.cfg80211_registered_device** %10, align 8
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %39

22:                                               ; preds = %4
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %26 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.sk_buff* @__cfg80211_alloc_vendor_skb(%struct.cfg80211_registered_device* %23, i32* null, i32 %24, i32 %29, i32 %34, i32 %35, i32 %36, i32* null, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %5, align 8
  br label %39

39:                                               ; preds = %22, %21
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %40
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @__cfg80211_alloc_vendor_skb(%struct.cfg80211_registered_device*, i32*, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
