; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___reg_process_hint_driver.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c___reg_process_hint_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i64, i32 }

@NL80211_REGDOM_SET_BY_CORE = common dso_local global i64 0, align 8
@REG_REQ_OK = common dso_local global i32 0, align 4
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i64 0, align 8
@REG_REQ_INTERSECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulatory_request*)* @__reg_process_hint_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reg_process_hint_driver(%struct.regulatory_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulatory_request*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %3, align 8
  %5 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %5, %struct.regulatory_request** %4, align 8
  %6 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %7 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NL80211_REGDOM_SET_BY_CORE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %13 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @regdom_changes(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %23 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %29 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @regdom_changes(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27, %21
  %36 = load i32, i32* @REG_REQ_INTERSECT, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %19, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @regdom_changes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
