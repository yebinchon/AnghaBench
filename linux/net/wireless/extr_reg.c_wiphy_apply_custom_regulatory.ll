; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_apply_custom_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_apply_custom_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32* }
%struct.ieee80211_regdomain = type { i32 }

@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wiphy should have REGULATORY_CUSTOM_REG\0A\00", align 1
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_apply_custom_regulatory(%struct.wiphy* %0, %struct.ieee80211_regdomain* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %48, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %48

35:                                               ; preds = %25
  %36 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %37 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %38 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %45 = call i32 @handle_band_custom(%struct.wiphy* %36, i32 %43, %struct.ieee80211_regdomain* %44)
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %35, %34
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @handle_band_custom(%struct.wiphy*, i32, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
