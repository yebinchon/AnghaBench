; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_tx_active.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_tx_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I2SCON = common dso_local global i64 0, align 8
@CON_TXSDMA_ACTIVE = common dso_local global i32 0, align 4
@CON_TXDMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_dai*)* @tx_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_active(%struct.i2s_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2s_dai*, align 8
  %4 = alloca i32, align 4
  store %struct.i2s_dai* %0, %struct.i2s_dai** %3, align 8
  %5 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %6 = icmp ne %struct.i2s_dai* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %10 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I2SCON, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %18 = call i64 @is_secondary(%struct.i2s_dai* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load i32, i32* @CON_TXSDMA_ACTIVE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %8
  %25 = load i32, i32* @CON_TXDMA_ACTIVE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @is_secondary(%struct.i2s_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
