; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_rx_active.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_rx_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I2SCON = common dso_local global i64 0, align 8
@CON_RXDMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_dai*)* @rx_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_active(%struct.i2s_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2s_dai*, align 8
  %4 = alloca i32, align 4
  store %struct.i2s_dai* %0, %struct.i2s_dai** %3, align 8
  %5 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %6 = icmp ne %struct.i2s_dai* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %10 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I2SCON, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load i32, i32* @CON_RXDMA_ACTIVE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %8, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
