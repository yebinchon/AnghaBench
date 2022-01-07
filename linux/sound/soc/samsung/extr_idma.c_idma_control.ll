; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@idma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I2SAHB = common dso_local global i64 0, align 8
@AHB_INTENLVL0 = common dso_local global i32 0, align 4
@AHB_DMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @idma_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma_control(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %5 = load i64, i64* @I2SAHB, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0))
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %23 [
    i32 129, label %10
    i32 128, label %16
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @AHB_INTENLVL0, align 4
  %12 = load i32, i32* @AHB_DMAEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @AHB_INTENLVL0, align 4
  %18 = load i32, i32* @AHB_DMAEN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %1
  %24 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0))
  br label %32

25:                                               ; preds = %16, %10
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %28 = load i64, i64* @I2SAHB, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %26, i64 %29)
  %31 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0))
  br label %32

32:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
