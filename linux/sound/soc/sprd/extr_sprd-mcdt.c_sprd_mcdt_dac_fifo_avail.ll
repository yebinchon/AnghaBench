; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_dac_fifo_avail.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_dac_fifo_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_dev = type { i32 }

@MCDT_DAC0_FIFO_ADDR_ST = common dso_local global i32 0, align 4
@MCDT_CH_FIFO_ADDR_SHIFT = common dso_local global i32 0, align 4
@MCDT_CH_FIFO_ADDR_MASK = common dso_local global i32 0, align 4
@MCDT_FIFO_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_mcdt_dev*, i32)* @sprd_mcdt_dac_fifo_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_mcdt_dac_fifo_avail(%struct.sprd_mcdt_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_mcdt_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sprd_mcdt_dev* %0, %struct.sprd_mcdt_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MCDT_DAC0_FIFO_ADDR_ST, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 8
  %12 = add nsw i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %14 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @readl_relaxed(i32 %17)
  %19 = load i32, i32* @MCDT_CH_FIFO_ADDR_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @MCDT_CH_FIFO_ADDR_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %4, align 8
  %24 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @readl_relaxed(i32 %27)
  %29 = load i32, i32* @MCDT_CH_FIFO_ADDR_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32, i32* @MCDT_FIFO_LENGTH, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = mul nsw i32 4, %39
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = mul nsw i32 4, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
