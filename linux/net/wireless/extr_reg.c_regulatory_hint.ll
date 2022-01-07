; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_hint.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulatory_hint(%struct.wiphy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = icmp ne %struct.wiphy* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %13
  %22 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.regulatory_request* @kzalloc(i32 16, i32 %28)
  store %struct.regulatory_request* %29, %struct.regulatory_request** %6, align 8
  %30 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %31 = icmp ne %struct.regulatory_request* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %60

35:                                               ; preds = %21
  %36 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %37 = call i32 @get_wiphy_idx(%struct.wiphy* %36)
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %44 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %42, i8* %46, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %51 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %49, i8* %53, align 1
  %54 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %55 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %56 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = call i32 (...) @reset_crda_timeouts()
  %58 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %59 = call i32 @queue_regulatory_request(%struct.regulatory_request* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %35, %32, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.regulatory_request* @kzalloc(i32, i32) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i32 @reset_crda_timeouts(...) #1

declare dso_local i32 @queue_regulatory_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
