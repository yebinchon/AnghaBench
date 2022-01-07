; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_sta_info = type { %struct.minstrel_rate* }
%struct.minstrel_rate = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_sta_info*, %struct.ieee80211_sta_rates*, i32, i32)* @minstrel_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_set_rate(%struct.minstrel_sta_info* %0, %struct.ieee80211_sta_rates* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.minstrel_sta_info*, align 8
  %6 = alloca %struct.ieee80211_sta_rates*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.minstrel_rate*, align 8
  store %struct.minstrel_sta_info* %0, %struct.minstrel_sta_info** %5, align 8
  store %struct.ieee80211_sta_rates* %1, %struct.ieee80211_sta_rates** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %5, align 8
  %11 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %10, i32 0, i32 0
  %12 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %12, i64 %14
  store %struct.minstrel_rate* %15, %struct.minstrel_rate** %9, align 8
  %16 = load %struct.minstrel_rate*, %struct.minstrel_rate** %9, align 8
  %17 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 %18, i32* %25, align 4
  %26 = load %struct.minstrel_rate*, %struct.minstrel_rate** %9, align 8
  %27 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %28, i32* %35, align 4
  %36 = load %struct.minstrel_rate*, %struct.minstrel_rate** %9, align 8
  %37 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %38, i32* %45, align 4
  %46 = load %struct.minstrel_rate*, %struct.minstrel_rate** %9, align 8
  %47 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
