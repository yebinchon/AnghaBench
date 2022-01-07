; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_iis_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_iis_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.idma_ctrl = type { i32, i32, i32 (i32, i32)*, i64, i64, i64 }

@idma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I2SAHB = common dso_local global i64 0, align 8
@AHB_LVL0INT = common dso_local global i32 0, align 4
@AHB_CLRLVL0INT = common dso_local global i32 0, align 4
@I2SLVL0ADDR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iis_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iis_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.idma_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.idma_ctrl*
  store %struct.idma_ctrl* %10, %struct.idma_ctrl** %5, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %12 = load i64, i64* @I2SAHB, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AHB_LVL0INT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AHB_CLRLVL0INT, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %32 = load i64, i64* @I2SAHB, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %30, i64 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %36 = load i64, i64* @I2SLVL0ADDR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %52 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %63 = load i64, i64* @I2SLVL0ADDR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %61, i64 %64)
  %66 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %67 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %66, i32 0, i32 2
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = icmp ne i32 (i32, i32)* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %26
  %71 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %72 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %71, i32 0, i32 2
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %75 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %78 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %73(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %70, %26
  br label %82

82:                                               ; preds = %81, %22
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
