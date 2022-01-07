; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_flush_fifo_rx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_flush_fifo_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_msp = type { i64 }

@MSP_GCR = common dso_local global i64 0, align 8
@RX_ENABLE = common dso_local global i32 0, align 4
@MSP_FLR = common dso_local global i64 0, align 8
@RX_FIFO_EMPTY = common dso_local global i32 0, align 4
@MSP_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ux500_msp*)* @flush_fifo_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_fifo_rx(%struct.ux500_msp* %0) #0 {
  %2 = alloca %struct.ux500_msp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ux500_msp* %0, %struct.ux500_msp** %2, align 8
  store i32 32, i32* %6, align 4
  %7 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %8 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MSP_GCR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RX_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %17 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSP_GCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %23 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSP_FLR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %39, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RX_FIFO_EMPTY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %34, 0
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %41 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MSP_DR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %47 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MSP_FLR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %5, align 4
  br label %28

52:                                               ; preds = %37
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %55 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MSP_GCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
