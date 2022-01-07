; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_saif = type { i64, i32, i32, i32 }

@SAIF_STAT = common dso_local global i64 0, align 8
@BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ = common dso_local global i32 0, align 4
@BM_SAIF_STAT_FIFO_OVERFLOW_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"underrun!!! %d\0A\00", align 1
@MXS_CLR_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"overrun!!! %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SAIF_CTRL %x SAIF_STAT %x\0A\00", align 1
@SAIF_CTRL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxs_saif_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mxs_saif*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mxs_saif*
  store %struct.mxs_saif* %9, %struct.mxs_saif** %6, align 8
  %10 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %11 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAIF_STAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @__raw_readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ, align 4
  %18 = load i32, i32* @BM_SAIF_STAT_FIFO_OVERFLOW_IRQ, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %31 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %34 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ, align 4
  %39 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %40 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SAIF_STAT, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @MXS_CLR_ADDR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @__raw_writel(i32 %38, i64 %45)
  br label %47

47:                                               ; preds = %29, %24
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BM_SAIF_STAT_FIFO_OVERFLOW_IRQ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %54 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %57 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @BM_SAIF_STAT_FIFO_OVERFLOW_IRQ, align 4
  %62 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %63 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SAIF_STAT, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* @MXS_CLR_ADDR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @__raw_writel(i32 %61, i64 %68)
  br label %70

70:                                               ; preds = %52, %47
  %71 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %72 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %75 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SAIF_CTRL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @__raw_readl(i64 %78)
  %80 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %81 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SAIF_STAT, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @__raw_readl(i64 %84)
  %86 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %70, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
