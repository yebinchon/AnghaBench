; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c___check_htcap_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c___check_htcap_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ht_cap = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap*, %struct.ieee80211_sta_ht_cap*, i32)* @__check_htcap_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__check_htcap_disable(%struct.ieee80211_ht_cap* %0, %struct.ieee80211_ht_cap* %1, %struct.ieee80211_sta_ht_cap* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_ht_cap*, align 8
  %6 = alloca %struct.ieee80211_ht_cap*, align 8
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_ht_cap* %0, %struct.ieee80211_ht_cap** %5, align 8
  store %struct.ieee80211_ht_cap* %1, %struct.ieee80211_ht_cap** %6, align 8
  store %struct.ieee80211_sta_ht_cap* %2, %struct.ieee80211_sta_ht_cap** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %18
  br label %33

33:                                               ; preds = %32, %4
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
