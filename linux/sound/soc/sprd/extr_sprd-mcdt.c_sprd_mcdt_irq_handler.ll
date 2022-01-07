; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_dev = type { i32, %struct.sprd_mcdt_chan* }
%struct.sprd_mcdt_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@MCDT_ADC_CHANNEL_NUM = common dso_local global i32 0, align 4
@MCDT_ADC_FIFO_AF_INT = common dso_local global i32 0, align 4
@MCDT_DAC_CHANNEL_NUM = common dso_local global i32 0, align 4
@MCDT_DAC_FIFO_AE_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sprd_mcdt_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_mcdt_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sprd_mcdt_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sprd_mcdt_chan*, align 8
  %8 = alloca %struct.sprd_mcdt_chan*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sprd_mcdt_dev*
  store %struct.sprd_mcdt_dev* %10, %struct.sprd_mcdt_dev** %5, align 8
  %11 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %12 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MCDT_ADC_CHANNEL_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MCDT_ADC_FIFO_AF_INT, align 4
  %22 = call i64 @sprd_mcdt_chan_int_sts(%struct.sprd_mcdt_dev* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %26 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %25, i32 0, i32 1
  %27 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %27, i64 %29
  store %struct.sprd_mcdt_chan* %30, %struct.sprd_mcdt_chan** %7, align 8
  %31 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MCDT_ADC_FIFO_AF_INT, align 4
  %34 = call i32 @sprd_mcdt_chan_int_clear(%struct.sprd_mcdt_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %7, align 8
  %36 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %24
  %40 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %7, align 8
  %41 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %7, align 8
  %46 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %44(i32 %49)
  br label %51

51:                                               ; preds = %39, %24
  br label %52

52:                                               ; preds = %51, %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %98, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MCDT_DAC_CHANNEL_NUM, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MCDT_DAC_FIFO_AE_INT, align 4
  %65 = call i64 @sprd_mcdt_chan_int_sts(%struct.sprd_mcdt_dev* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %69 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %68, i32 0, i32 1
  %70 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @MCDT_ADC_CHANNEL_NUM, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %70, i64 %74
  store %struct.sprd_mcdt_chan* %75, %struct.sprd_mcdt_chan** %8, align 8
  %76 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MCDT_DAC_FIFO_AE_INT, align 4
  %79 = call i32 @sprd_mcdt_chan_int_clear(%struct.sprd_mcdt_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %8, align 8
  %81 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp ne %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %67
  %85 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %8, align 8
  %86 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (i32)*, i32 (i32)** %88, align 8
  %90 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %8, align 8
  %91 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %89(i32 %94)
  br label %96

96:                                               ; preds = %84, %67
  br label %97

97:                                               ; preds = %96, %61
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %57

101:                                              ; preds = %57
  %102 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %5, align 8
  %103 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sprd_mcdt_chan_int_sts(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_chan_int_clear(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
