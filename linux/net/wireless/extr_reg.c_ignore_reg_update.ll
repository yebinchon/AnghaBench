; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_ignore_reg_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_ignore_reg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32 }
%struct.regulatory_request = type { i32 }

@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Ignoring regulatory request set by %s since last_request is not set\0A\00", align 1
@NL80211_REGDOM_SET_BY_CORE = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"Ignoring regulatory request set by %s since the driver uses its own custom regulatory domain\0A\00", align 1
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [107 x i8] c"Ignoring regulatory request set by %s since the driver requires its own regulatory domain to be set first\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @ignore_reg_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_reg_update(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %7, %struct.regulatory_request** %6, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %17 = icmp ne %struct.regulatory_request* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @reg_initiator_name(i32 %19)
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 1, i32* %3, align 4
  br label %68

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NL80211_REGDOM_SET_BY_CORE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %28 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @reg_initiator_name(i32 %34)
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 1, i32* %3, align 4
  br label %68

37:                                               ; preds = %26, %22
  %38 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %39 = call i64 @wiphy_strict_alpha2_regd(%struct.wiphy* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %43 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %52 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @is_world_regdom(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @reg_initiator_name(i32 %57)
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 1, i32* %3, align 4
  br label %68

60:                                               ; preds = %50, %46, %41, %37
  %61 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %62 = call i64 @reg_request_cell_base(%struct.regulatory_request* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %66 = call i32 @reg_dev_ignore_cell_hint(%struct.wiphy* %65)
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %56, %33, %18, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @reg_initiator_name(i32) #1

declare dso_local i64 @wiphy_strict_alpha2_regd(%struct.wiphy*) #1

declare dso_local i32 @is_world_regdom(i32) #1

declare dso_local i64 @reg_request_cell_base(%struct.regulatory_request*) #1

declare dso_local i32 @reg_dev_ignore_cell_hint(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
