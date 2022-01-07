; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_set_rd_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_set_rd_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32* }
%struct.regulatory_request = type { i64, i32 }
%struct.wiphy = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid regulatory domain detected: %c%c\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*, %struct.regulatory_request*)* @reg_set_rd_country_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_set_rd_country_ie(%struct.ieee80211_regdomain* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.wiphy*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  %7 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @is_alpha2_set(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @is_an_alpha2(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @is_unknown_alpha2(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %18, %12, %2
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %29 = call i32 @is_valid_rd(%struct.ieee80211_regdomain* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %44 = call i32 @print_regdomain_info(%struct.ieee80211_regdomain* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %68

47:                                               ; preds = %27
  %48 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %49 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.wiphy* @wiphy_idx_to_wiphy(i32 %50)
  store %struct.wiphy* %51, %struct.wiphy** %6, align 8
  %52 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %53 = icmp ne %struct.wiphy* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %59 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %67 = call i32 @reset_regdomains(i32 0, %struct.ieee80211_regdomain* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %62, %54, %31, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @is_alpha2_set(i32*) #1

declare dso_local i32 @is_an_alpha2(i32*) #1

declare dso_local i32 @is_unknown_alpha2(i32*) #1

declare dso_local i32 @is_valid_rd(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @print_regdomain_info(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i32) #1

declare dso_local i32 @reset_regdomains(i32, %struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
