; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___freq_reg_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___freq_reg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { i32 }
%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_reg_rule* (%struct.wiphy*, i32, i32)* @__freq_reg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_reg_rule* @__freq_reg_info(%struct.wiphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_reg_rule*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_regdomain*, align 8
  %9 = alloca %struct.ieee80211_reg_rule*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.ieee80211_regdomain* @reg_get_regdomain(%struct.wiphy* %11)
  store %struct.ieee80211_regdomain* %12, %struct.ieee80211_regdomain** %8, align 8
  store %struct.ieee80211_reg_rule* null, %struct.ieee80211_reg_rule** %9, align 8
  %13 = call i32 @MHZ_TO_KHZ(i32 20)
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32 %19, %struct.ieee80211_regdomain* %20, i32 %21)
  store %struct.ieee80211_reg_rule* %22, %struct.ieee80211_reg_rule** %9, align 8
  %23 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %24 = call i32 @IS_ERR(%struct.ieee80211_reg_rule* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  store %struct.ieee80211_reg_rule* %27, %struct.ieee80211_reg_rule** %4, align 8
  br label %34

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %10, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  store %struct.ieee80211_reg_rule* %33, %struct.ieee80211_reg_rule** %4, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  ret %struct.ieee80211_reg_rule* %35
}

declare dso_local %struct.ieee80211_regdomain* @reg_get_regdomain(%struct.wiphy*) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32, %struct.ieee80211_regdomain*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
