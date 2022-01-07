; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_get_bclk_div.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_get_bclk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_i2s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sun4i_i2s_clk_div* }
%struct.sun4i_i2s_clk_div = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_i2s*, i64, i32, i32, i32)* @sun4i_i2s_get_bclk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_get_bclk_div(%struct.sun4i_i2s* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sun4i_i2s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sun4i_i2s_clk_div*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sun4i_i2s_clk_div*, align 8
  store %struct.sun4i_i2s* %0, %struct.sun4i_i2s** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %7, align 8
  %17 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.sun4i_i2s_clk_div*, %struct.sun4i_i2s_clk_div** %19, align 8
  store %struct.sun4i_i2s_clk_div* %20, %struct.sun4i_i2s_clk_div** %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = udiv i64 %21, %23
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = udiv i64 %24, %26
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = udiv i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %55, %5
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %7, align 8
  %35 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load %struct.sun4i_i2s_clk_div*, %struct.sun4i_i2s_clk_div** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sun4i_i2s_clk_div, %struct.sun4i_i2s_clk_div* %41, i64 %43
  store %struct.sun4i_i2s_clk_div* %44, %struct.sun4i_i2s_clk_div** %15, align 8
  %45 = load %struct.sun4i_i2s_clk_div*, %struct.sun4i_i2s_clk_div** %15, align 8
  %46 = getelementptr inbounds %struct.sun4i_i2s_clk_div, %struct.sun4i_i2s_clk_div* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.sun4i_i2s_clk_div*, %struct.sun4i_i2s_clk_div** %15, align 8
  %52 = getelementptr inbounds %struct.sun4i_i2s_clk_div, %struct.sun4i_i2s_clk_div* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %61

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
