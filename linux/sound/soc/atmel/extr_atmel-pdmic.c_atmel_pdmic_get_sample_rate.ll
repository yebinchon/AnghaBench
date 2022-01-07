; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_get_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_get_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pdmic = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_pdmic*, i32*, i32*)* @atmel_pdmic_get_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pdmic_get_sample_rate(%struct.atmel_pdmic* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.atmel_pdmic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.atmel_pdmic* %0, %struct.atmel_pdmic** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %4, align 8
  %17 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = ashr i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_get_rate(i32 %29)
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %36, %3
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @DIV_ROUND_CLOSEST(i64 %45, i32 128)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %8, align 8
  %49 = ashr i64 %48, 6
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
