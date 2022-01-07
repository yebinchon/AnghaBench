; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_flush_fifo_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_flush_fifo_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_msp = type { i64 }

@MSP_GCR = common dso_local global i64 0, align 8
@TX_ENABLE = common dso_local global i32 0, align 4
@MSP_ITCR_ITEN = common dso_local global i32 0, align 4
@MSP_ITCR_TESTFIFO = common dso_local global i32 0, align 4
@MSP_ITCR = common dso_local global i64 0, align 8
@MSP_FLR = common dso_local global i64 0, align 8
@TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@MSP_TSTDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ux500_msp*)* @flush_fifo_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_fifo_tx(%struct.ux500_msp* %0) #0 {
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
  %14 = load i32, i32* @TX_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %17 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSP_GCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load i32, i32* @MSP_ITCR_ITEN, align 4
  %23 = load i32, i32* @MSP_ITCR_TESTFIFO, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %26 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MSP_ITCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %32 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MSP_FLR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %48, %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TX_FIFO_EMPTY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %43, 0
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  %49 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %50 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MSP_TSTDR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %56 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MSP_FLR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %5, align 4
  br label %37

61:                                               ; preds = %46
  %62 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %63 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MSP_ITCR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %70 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MSP_GCR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
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
