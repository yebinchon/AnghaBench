; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Unexpected intersection for country elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*)* @reg_process_hint_country_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_process_hint_country_ie(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %8 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %9 = call i32 @__reg_process_hint_country_ie(%struct.wiphy* %7, %struct.regulatory_request* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %18 [
    i32 128, label %11
    i32 130, label %12
    i32 131, label %13
    i32 129, label %16
  ]

11:                                               ; preds = %2
  br label %18

12:                                               ; preds = %2
  store i32 130, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %15 = call i32 @reg_free_request(%struct.regulatory_request* %14)
  store i32 131, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 130, i32* %3, align 4
  br label %30

18:                                               ; preds = %2, %11
  %19 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %20 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %22 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %24 = call i64 @reg_query_database(%struct.regulatory_request* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %28 = call i32 @reg_update_last_request(%struct.regulatory_request* %27)
  store i32 128, i32* %3, align 4
  br label %30

29:                                               ; preds = %18
  store i32 130, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %16, %13, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @__reg_process_hint_country_ie(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local i32 @reg_free_request(%struct.regulatory_request*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @reg_query_database(%struct.regulatory_request*) #1

declare dso_local i32 @reg_update_last_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
