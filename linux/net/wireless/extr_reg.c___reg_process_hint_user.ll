; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___reg_process_hint_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___reg_process_hint_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i64, i32, i64 }

@REG_REQ_IGNORE = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@REG_REQ_INTERSECT = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_CORE = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i64 0, align 8
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@REG_REQ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulatory_request*)* @__reg_process_hint_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reg_process_hint_user(%struct.regulatory_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulatory_request*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %3, align 8
  %5 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %5, %struct.regulatory_request** %4, align 8
  %6 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %7 = call i64 @reg_request_cell_base(%struct.regulatory_request* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %11 = call i32 @reg_ignore_cell_hint(%struct.regulatory_request* %10)
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %14 = call i64 @reg_request_cell_base(%struct.regulatory_request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %12
  %19 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %20 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @REG_REQ_INTERSECT, align 4
  store i32 %25, i32* %2, align 4
  br label %75

26:                                               ; preds = %18
  %27 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %28 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %34 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %38, i32* %2, align 4
  br label %75

39:                                               ; preds = %32, %26
  %40 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %41 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_REGDOM_SET_BY_CORE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %47 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %53 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51, %45, %39
  %58 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %59 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @regdom_changes(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %57, %51
  %66 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %67 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @regdom_changes(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %71, %63, %37, %24, %16, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @reg_request_cell_base(%struct.regulatory_request*) #1

declare dso_local i32 @reg_ignore_cell_hint(%struct.regulatory_request*) #1

declare dso_local i64 @regdom_changes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
