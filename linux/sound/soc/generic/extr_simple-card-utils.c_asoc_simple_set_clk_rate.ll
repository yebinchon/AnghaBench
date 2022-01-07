; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_set_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_set_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_dai = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_dai*, i64)* @asoc_simple_set_clk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_simple_set_clk_rate(%struct.asoc_simple_dai* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asoc_simple_dai*, align 8
  %5 = alloca i64, align 8
  store %struct.asoc_simple_dai* %0, %struct.asoc_simple_dai** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %4, align 8
  %7 = icmp ne %struct.asoc_simple_dai* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

9:                                                ; preds = %2
  %10 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %4, align 8
  %11 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %4, align 8
  %17 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_get_rate(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %4, align 8
  %25 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @clk_set_rate(i32 %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %22, %14, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
