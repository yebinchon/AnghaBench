; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_set_rd_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_set_rd_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32* }
%struct.regulatory_request = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid regulatory domain detected: %c%c\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*, %struct.regulatory_request*)* @reg_set_rd_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_set_rd_user(%struct.ieee80211_regdomain* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %6, align 8
  %7 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @regdom_changes(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EALREADY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %17 = call i32 @is_valid_rd(%struct.ieee80211_regdomain* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %32 = call i32 @print_regdomain_info(%struct.ieee80211_regdomain* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %15
  %36 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %37 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %42 = call i32 @reset_regdomains(i32 0, %struct.ieee80211_regdomain* %41)
  store i32 0, i32* %3, align 4
  br label %57

43:                                               ; preds = %35
  %44 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %45 = call i32 (...) @get_cfg80211_regdom()
  %46 = call %struct.ieee80211_regdomain* @regdom_intersect(%struct.ieee80211_regdomain* %44, i32 %45)
  store %struct.ieee80211_regdomain* %46, %struct.ieee80211_regdomain** %6, align 8
  %47 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %48 = icmp ne %struct.ieee80211_regdomain* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %54 = call i32 @kfree(%struct.ieee80211_regdomain* %53)
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %4, align 8
  %55 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %56 = call i32 @reset_regdomains(i32 0, %struct.ieee80211_regdomain* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %49, %40, %19, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @regdom_changes(i32*) #1

declare dso_local i32 @is_valid_rd(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @print_regdomain_info(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @reset_regdomains(i32, %struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @regdom_intersect(%struct.ieee80211_regdomain*, i32) #1

declare dso_local i32 @get_cfg80211_regdom(...) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
