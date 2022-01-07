; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_duration.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32*, i32 }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @minstrel_get_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_duration(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcs_group*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MCS_GROUP_RATES, align 4
  %8 = sdiv i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %5, i64 %9
  store %struct.mcs_group* %10, %struct.mcs_group** %3, align 8
  %11 = load %struct.mcs_group*, %struct.mcs_group** %3, align 8
  %12 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @MCS_GROUP_RATES, align 4
  %16 = srem i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mcs_group*, %struct.mcs_group** %3, align 8
  %22 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %20, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
