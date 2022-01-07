; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_update_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_update_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32* }
%struct.regulatory_request = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NL80211_REGDOM_SET_BY_CORE = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32)* @wiphy_update_regulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_update_regulatory(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %7, %struct.regulatory_request** %6, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ignore_reg_update(%struct.wiphy* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NL80211_REGDOM_SET_BY_CORE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %32 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %33 = call i32 @reg_call_notifier(%struct.wiphy* %31, %struct.regulatory_request* %32)
  br label %34

34:                                               ; preds = %30, %23, %16, %12
  br label %67

35:                                               ; preds = %2
  %36 = call %struct.TYPE_2__* (...) @get_cfg80211_regdom()
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %40 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %56, %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %49 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @handle_band(%struct.wiphy* %46, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %61 = call i32 @reg_process_beacons(%struct.wiphy* %60)
  %62 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %63 = call i32 @reg_process_ht_flags(%struct.wiphy* %62)
  %64 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %65 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %66 = call i32 @reg_call_notifier(%struct.wiphy* %64, %struct.regulatory_request* %65)
  br label %67

67:                                               ; preds = %59, %34
  ret void
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @ignore_reg_update(%struct.wiphy*, i32) #1

declare dso_local i32 @reg_call_notifier(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local %struct.TYPE_2__* @get_cfg80211_regdom(...) #1

declare dso_local i32 @handle_band(%struct.wiphy*, i32, i32) #1

declare dso_local i32 @reg_process_beacons(%struct.wiphy*) #1

declare dso_local i32 @reg_process_ht_flags(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
