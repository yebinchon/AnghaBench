; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___regulatory_set_wiphy_regd.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___regulatory_set_wiphy_regd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type opaque
%struct.cfg80211_registered_device = type { %struct.ieee80211_regdomain* }

@EINVAL = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"wiphy should have REGULATORY_WIPHY_SELF_MANAGED\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid regulatory domain detected\0A\00", align 1
@reg_requests_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.ieee80211_regdomain*)* @__regulatory_set_wiphy_regd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__regulatory_set_wiphy_regd(%struct.wiphy* %0, %struct.ieee80211_regdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %5, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = icmp ne %struct.wiphy* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %13 = icmp ne %struct.ieee80211_regdomain* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %15
  %24 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %23
  %38 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %39 = call i32 @is_valid_rd(%struct.ieee80211_regdomain* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %47 = call i32 @print_regdomain_info(%struct.ieee80211_regdomain* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %72

50:                                               ; preds = %37
  %51 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %52 = call %struct.ieee80211_regdomain* @reg_copy_regd(%struct.ieee80211_regdomain* %51)
  store %struct.ieee80211_regdomain* %52, %struct.ieee80211_regdomain** %6, align 8
  %53 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %54 = call i64 @IS_ERR(%struct.ieee80211_regdomain* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %58 = call i32 @PTR_ERR(%struct.ieee80211_regdomain* %57)
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %50
  %60 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %61 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %60)
  store %struct.cfg80211_registered_device* %61, %struct.cfg80211_registered_device** %8, align 8
  %62 = call i32 @spin_lock(i32* @reg_requests_lock)
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %64 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %63, i32 0, i32 0
  %65 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %64, align 8
  store %struct.ieee80211_regdomain* %65, %struct.ieee80211_regdomain** %7, align 8
  %66 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %68 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %67, i32 0, i32 0
  store %struct.ieee80211_regdomain* %66, %struct.ieee80211_regdomain** %68, align 8
  %69 = call i32 @spin_unlock(i32* @reg_requests_lock)
  %70 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %71 = call i32 @kfree(%struct.ieee80211_regdomain* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %59, %56, %45, %34, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @is_valid_rd(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @print_regdomain_info(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @reg_copy_regd(%struct.ieee80211_regdomain*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
