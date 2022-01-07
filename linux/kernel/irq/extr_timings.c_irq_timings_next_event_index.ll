; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_timings.c_irq_timings_next_event_index.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_timings.c_irq_timings_next_event_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PREDICTION_PERIOD_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @irq_timings_next_event_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_timings_next_event_index(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = sub i64 %12, %15
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 3
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %74, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PREDICTION_PERIOD_MIN, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %72, %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i64, i64* %10, align 8
  %37 = mul i64 %36, 4
  %38 = call i32 @memcmp(i32* %31, i32* %35, i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %73

41:                                               ; preds = %30
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = urem i64 %53, %55
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %41
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %68, %70
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %67, %59
  br label %30

73:                                               ; preds = %30
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %22

77:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
