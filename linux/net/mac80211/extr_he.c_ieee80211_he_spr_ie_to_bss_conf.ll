; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_he.c_ieee80211_he_spr_ie_to_bss_conf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_he.c_ieee80211_he_spr_ie_to_bss_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_he_obss_pd }
%struct.ieee80211_he_obss_pd = type { i32, i32, i32 }
%struct.ieee80211_he_spr = type { i32, i32* }

@IEEE80211_HE_SPR_NON_SRG_OFFSET_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_HE_SPR_SRG_INFORMATION_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_he_spr_ie_to_bss_conf(%struct.ieee80211_vif* %0, %struct.ieee80211_he_spr* %1) #0 {
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.ieee80211_he_spr*, align 8
  %5 = alloca %struct.ieee80211_he_obss_pd*, align 8
  %6 = alloca i32*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  store %struct.ieee80211_he_spr* %1, %struct.ieee80211_he_spr** %4, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ieee80211_he_obss_pd* %9, %struct.ieee80211_he_obss_pd** %5, align 8
  %10 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %11 = call i32 @memset(%struct.ieee80211_he_obss_pd* %10, i32 0, i32 12)
  %12 = load %struct.ieee80211_he_spr*, %struct.ieee80211_he_spr** %4, align 8
  %13 = icmp ne %struct.ieee80211_he_spr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_he_spr*, %struct.ieee80211_he_spr** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_he_spr, %struct.ieee80211_he_spr* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.ieee80211_he_spr*, %struct.ieee80211_he_spr** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_he_spr, %struct.ieee80211_he_spr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE80211_HE_SPR_NON_SRG_OFFSET_PRESENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.ieee80211_he_spr*, %struct.ieee80211_he_spr** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_he_spr, %struct.ieee80211_he_spr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_HE_SPR_SRG_INFORMATION_PRESENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %36, align 4
  %39 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %14, %35, %28
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_he_obss_pd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
