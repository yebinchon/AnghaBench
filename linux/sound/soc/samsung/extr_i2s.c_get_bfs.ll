; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_get_bfs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_get_bfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { %struct.samsung_i2s_priv* }
%struct.samsung_i2s_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@I2SMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_dai*)* @get_bfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bfs(%struct.i2s_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2s_dai*, align 8
  %4 = alloca %struct.samsung_i2s_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.i2s_dai* %0, %struct.i2s_dai** %3, align 8
  %6 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %7 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %6, i32 0, i32 0
  %8 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %7, align 8
  store %struct.samsung_i2s_priv* %8, %struct.samsung_i2s_priv** %4, align 8
  %9 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %4, align 8
  %10 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I2SMOD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %4, align 8
  %16 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %14, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %4, align 8
  %22 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %37 [
    i32 8, label %29
    i32 7, label %30
    i32 6, label %31
    i32 5, label %32
    i32 4, label %33
    i32 3, label %34
    i32 2, label %35
    i32 1, label %36
  ]

29:                                               ; preds = %1
  store i32 256, i32* %2, align 4
  br label %38

30:                                               ; preds = %1
  store i32 192, i32* %2, align 4
  br label %38

31:                                               ; preds = %1
  store i32 128, i32* %2, align 4
  br label %38

32:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %38

33:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %38

34:                                               ; preds = %1
  store i32 24, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  store i32 16, i32* %2, align 4
  br label %38

36:                                               ; preds = %1
  store i32 48, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 32, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %33, %32, %31, %30, %29
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
