; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_hint_core.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_hint_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_CORE = common dso_local global i32 0, align 4
@WIPHY_IDX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @regulatory_hint_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulatory_hint_core(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.regulatory_request* @kzalloc(i32 16, i32 %5)
  store %struct.regulatory_request* %6, %struct.regulatory_request** %4, align 8
  %7 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %8 = icmp ne %struct.regulatory_request* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %17 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %15, i8* %19, align 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %24 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %22, i8* %26, align 1
  %27 = load i32, i32* @NL80211_REGDOM_SET_BY_CORE, align 4
  %28 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %29 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @WIPHY_IDX_INVALID, align 4
  %31 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %32 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %34 = call i32 @queue_regulatory_request(%struct.regulatory_request* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %12, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.regulatory_request* @kzalloc(i32, i32) #1

declare dso_local i32 @queue_regulatory_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
