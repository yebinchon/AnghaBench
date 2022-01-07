; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_i2s_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_i2s_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dev_data = type { i64, i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@mmACP_EXTERNAL_INTR_STAT = common dso_local global i64 0, align 8
@BT_TX_THRESHOLD = common dso_local global i32 0, align 4
@BT_RX_THRESHOLD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i2s_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2s_dev_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.i2s_dev_data*
  store %struct.i2s_dev_data* %11, %struct.i2s_dev_data** %9, align 8
  %12 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %13 = icmp ne %struct.i2s_dev_data* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %18 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @mmACP_EXTERNAL_INTR_STAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @rv_readl(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BT_TX_THRESHOLD, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %16
  %29 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %30 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i32, i32* @BT_TX_THRESHOLD, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %37 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @mmACP_EXTERNAL_INTR_STAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @rv_writel(i32 %35, i64 %40)
  %42 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %43 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @snd_pcm_period_elapsed(i64 %44)
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %33, %28, %16
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BT_RX_THRESHOLD, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %54 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* @BT_RX_THRESHOLD, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %61 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @mmACP_EXTERNAL_INTR_STAT, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @rv_writel(i32 %59, i64 %64)
  %66 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %9, align 8
  %67 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @snd_pcm_period_elapsed(i64 %68)
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %57, %52, %46
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @IRQ_NONE, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %75, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @rv_readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rv_writel(i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
