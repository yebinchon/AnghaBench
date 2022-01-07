; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_get_noa_absent_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_get_noa_absent_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_noa_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_noa_data*, i32)* @ieee80211_get_noa_absent_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_noa_absent_time(%struct.ieee80211_noa_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_noa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_noa_data* %0, %struct.ieee80211_noa_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 5, i32* %7, align 4
  %8 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ieee80211_extend_absent_time(%struct.ieee80211_noa_data* %8, i32 %9, i32* %5)
  br label %11

11:                                               ; preds = %20, %2
  %12 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ieee80211_extend_absent_time(%struct.ieee80211_noa_data* %12, i32 %13, i32* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %11, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @ieee80211_extend_absent_time(%struct.ieee80211_noa_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
