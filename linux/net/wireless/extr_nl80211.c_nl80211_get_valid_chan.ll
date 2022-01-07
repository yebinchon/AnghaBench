; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_valid_chan.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_valid_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.wiphy = type { i32 }
%struct.nlattr = type { i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.wiphy*, %struct.nlattr*)* @nl80211_get_valid_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @nl80211_get_valid_chan(%struct.wiphy* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %7 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %8 = icmp eq %struct.nlattr* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %13 = call i32 @nla_get_u32(%struct.nlattr* %12)
  %14 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %11, i32 %13)
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %6, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %16 = icmp ne %struct.ieee80211_channel* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %10
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %27

25:                                               ; preds = %17
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  store %struct.ieee80211_channel* %26, %struct.ieee80211_channel** %3, align 8
  br label %27

27:                                               ; preds = %25, %24, %9
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  ret %struct.ieee80211_channel* %28
}

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
