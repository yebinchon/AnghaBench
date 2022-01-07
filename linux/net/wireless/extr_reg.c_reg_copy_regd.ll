; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_copy_regd.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_copy_regd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, %struct.ieee80211_regdomain* }

@reg_rules = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.ieee80211_regdomain*)* @reg_copy_regd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @reg_copy_regd(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca %struct.ieee80211_regdomain*, align 8
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  %6 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %7 = load i32, i32* @reg_rules, align 4
  %8 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @struct_size(%struct.ieee80211_regdomain* %6, i32 %7, i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ieee80211_regdomain* @kzalloc(i32 %11, i32 %12)
  store %struct.ieee80211_regdomain* %13, %struct.ieee80211_regdomain** %4, align 8
  %14 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %15 = icmp ne %struct.ieee80211_regdomain* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %18)
  store %struct.ieee80211_regdomain* %19, %struct.ieee80211_regdomain** %2, align 8
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %22 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %23 = call i32 @memcpy(%struct.ieee80211_regdomain* %21, %struct.ieee80211_regdomain* %22, i32 16)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %20
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %31, i32 0, i32 1
  %33 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %33, i64 %35
  %37 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %37, i32 0, i32 1
  %39 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %39, i64 %41
  %43 = call i32 @memcpy(%struct.ieee80211_regdomain* %36, %struct.ieee80211_regdomain* %42, i32 4)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_regdomain* %48, %struct.ieee80211_regdomain** %2, align 8
  br label %49

49:                                               ; preds = %47, %16
  %50 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  ret %struct.ieee80211_regdomain* %50
}

declare dso_local %struct.ieee80211_regdomain* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ieee80211_regdomain*, i32, i32) #1

declare dso_local %struct.ieee80211_regdomain* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_regdomain*, %struct.ieee80211_regdomain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
