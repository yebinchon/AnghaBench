; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c___detect_linklayer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c___detect_linklayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_ratespec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"TC linklayer: Giving up ATM detection\0A\00", align 1
@TC_LINKLAYER_ETHERNET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"TC linklayer: Detected ATM, low(%d)=high(%d)=%u\0A\00", align 1
@TC_LINKLAYER_ATM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_ratespec*, i64*)* @__detect_linklayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__detect_linklayer(%struct.tc_ratespec* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_ratespec*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tc_ratespec* %0, %struct.tc_ratespec** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %11 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @roundup(i32 %12, i32 48)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @roundup(i32 %15, i32 48)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %19 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %24 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %29 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 12500000
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %2
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @TC_LINKLAYER_ETHERNET, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 256
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %52, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i64*, i64** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i64 %66)
  %68 = load i32, i32* @TC_LINKLAYER_ATM, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %47, %44, %40
  %70 = load i32, i32* @TC_LINKLAYER_ETHERNET, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %59, %37
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
