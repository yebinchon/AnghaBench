; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.jz4740_i2s = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pll half\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @jz4740_i2s_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jz4740_i2s*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.jz4740_i2s* %14, %struct.jz4740_i2s** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 128, label %23
  ]

16:                                               ; preds = %4
  %17 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %17, %struct.clk** %11, align 8
  %18 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %10, align 8
  %19 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.clk*, %struct.clk** %11, align 8
  %22 = call i32 @clk_set_parent(i32 %20, %struct.clk* %21)
  br label %38

23:                                               ; preds = %4
  %24 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %24, %struct.clk** %11, align 8
  %25 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %10, align 8
  %26 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clk*, %struct.clk** %11, align 8
  %29 = call i32 @clk_set_parent(i32 %27, %struct.clk* %28)
  %30 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %10, align 8
  %31 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @clk_set_rate(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %23, %16
  %39 = load %struct.clk*, %struct.clk** %11, align 8
  %40 = call i32 @clk_put(%struct.clk* %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
