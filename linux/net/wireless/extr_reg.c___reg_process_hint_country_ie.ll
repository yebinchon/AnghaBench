; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___reg_process_hint_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___reg_process_hint_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i64, i32, i32 }

@REG_REQ_IGNORE = common dso_local global i32 0, align 4
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@REGULATORY_COUNTRY_IE_IGNORE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@REG_REQ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*)* @__reg_process_hint_country_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reg_process_hint_country_ie(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  store %struct.wiphy* null, %struct.wiphy** %6, align 8
  %8 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %8, %struct.regulatory_request** %7, align 8
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %10 = call i64 @reg_request_cell_base(%struct.regulatory_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %14 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @regdom_changes(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %12
  %21 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %24 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @REGULATORY_COUNTRY_IE_IGNORE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %30, i32* %3, align 4
  br label %81

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %34 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @is_an_alpha2(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %81

45:                                               ; preds = %32
  %46 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %47 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %45
  %54 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %55 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.wiphy* @wiphy_idx_to_wiphy(i32 %56)
  store %struct.wiphy* %57, %struct.wiphy** %6, align 8
  %58 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %59 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %60 = icmp ne %struct.wiphy* %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %63 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @regdom_changes(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %61
  %70 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %70, i32* %3, align 4
  br label %81

71:                                               ; preds = %53
  %72 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %73 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @regdom_changes(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %77, %69, %67, %51, %42, %29, %20, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @reg_request_cell_base(%struct.regulatory_request*) #1

declare dso_local i64 @regdom_changes(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_an_alpha2(i32) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
