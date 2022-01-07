; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_bss_get_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_bss_get_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_bss_ies = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.element* @ieee80211_bss_get_elem(%struct.cfg80211_bss* %0, i32 %1) #0 {
  %3 = alloca %struct.element*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_bss_ies*, align 8
  store %struct.cfg80211_bss* %0, %struct.cfg80211_bss** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %9)
  store %struct.cfg80211_bss_ies* %10, %struct.cfg80211_bss_ies** %6, align 8
  %11 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %6, align 8
  %12 = icmp ne %struct.cfg80211_bss_ies* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.element* null, %struct.element** %3, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %6, align 8
  %17 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %6, align 8
  %20 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.element* @cfg80211_find_elem(i32 %15, i32 %18, i32 %21)
  store %struct.element* %22, %struct.element** %3, align 8
  br label %23

23:                                               ; preds = %14, %13
  %24 = load %struct.element*, %struct.element** %3, align 8
  ret %struct.element* %24
}

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local %struct.element* @cfg80211_find_elem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
