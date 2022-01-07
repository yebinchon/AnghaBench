; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_get_blc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_get_blc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I2SMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_dai*)* @get_blc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_blc(%struct.i2s_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2s_dai*, align 8
  %4 = alloca i32, align 4
  store %struct.i2s_dai* %0, %struct.i2s_dai** %3, align 8
  %5 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %6 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I2SMOD, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 13
  %15 = and i32 %14, 3
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %19 [
    i32 2, label %17
    i32 1, label %18
  ]

17:                                               ; preds = %1
  store i32 24, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 16, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
