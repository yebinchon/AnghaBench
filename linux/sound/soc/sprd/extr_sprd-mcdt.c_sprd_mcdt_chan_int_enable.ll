; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_chan = type { i32, i32, %struct.sprd_mcdt_chan_callback*, i32, i64, %struct.sprd_mcdt_dev* }
%struct.sprd_mcdt_dev = type { i32, i32 }
%struct.sprd_mcdt_chan_callback = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to set interrupt mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCDT_FIFO_LENGTH = common dso_local global i32 0, align 4
@MCDT_ADC_FIFO_AF_INT = common dso_local global i32 0, align 4
@MCDT_DAC_FIFO_AE_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported channel type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprd_mcdt_chan_int_enable(%struct.sprd_mcdt_chan* %0, i32 %1, %struct.sprd_mcdt_chan_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_mcdt_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sprd_mcdt_chan_callback*, align 8
  %8 = alloca %struct.sprd_mcdt_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sprd_mcdt_chan* %0, %struct.sprd_mcdt_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sprd_mcdt_chan_callback* %2, %struct.sprd_mcdt_chan_callback** %7, align 8
  %11 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %12 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %11, i32 0, i32 5
  %13 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %12, align 8
  store %struct.sprd_mcdt_dev* %13, %struct.sprd_mcdt_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %15 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %19 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %24 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22, %3
  %28 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %29 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %33 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %114

38:                                               ; preds = %22
  %39 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %40 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %92 [
    i32 129, label %42
    i32 128, label %67
  ]

42:                                               ; preds = %38
  %43 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %44 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %45 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev* %43, i32 %46)
  %48 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %49 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %50 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MCDT_FIFO_LENGTH, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @sprd_mcdt_adc_set_watermark(%struct.sprd_mcdt_dev* %48, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %57 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %58 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MCDT_ADC_FIFO_AF_INT, align 4
  %61 = call i32 @sprd_mcdt_chan_int_en(%struct.sprd_mcdt_dev* %56, i32 %59, i32 %60, i32 1)
  %62 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %63 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %64 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sprd_mcdt_ap_int_enable(%struct.sprd_mcdt_dev* %62, i32 %65, i32 1)
  br label %99

67:                                               ; preds = %38
  %68 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %69 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %70 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sprd_mcdt_dac_fifo_clear(%struct.sprd_mcdt_dev* %68, i32 %71)
  %73 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %74 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %75 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MCDT_FIFO_LENGTH, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @sprd_mcdt_dac_set_watermark(%struct.sprd_mcdt_dev* %73, i32 %76, i32 %78, i32 %79)
  %81 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %82 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %83 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MCDT_DAC_FIFO_AE_INT, align 4
  %86 = call i32 @sprd_mcdt_chan_int_en(%struct.sprd_mcdt_dev* %81, i32 %84, i32 %85, i32 1)
  %87 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %88 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %89 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sprd_mcdt_ap_int_enable(%struct.sprd_mcdt_dev* %87, i32 %90, i32 1)
  br label %99

92:                                               ; preds = %38
  %93 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %94 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %92, %67, %42
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load %struct.sprd_mcdt_chan_callback*, %struct.sprd_mcdt_chan_callback** %7, align 8
  %104 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %105 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %104, i32 0, i32 2
  store %struct.sprd_mcdt_chan_callback* %103, %struct.sprd_mcdt_chan_callback** %105, align 8
  %106 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %107 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %99
  %109 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %110 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %109, i32 0, i32 0
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %108, %27
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev*, i32) #1

declare dso_local i32 @sprd_mcdt_adc_set_watermark(%struct.sprd_mcdt_dev*, i32, i32, i32) #1

declare dso_local i32 @sprd_mcdt_chan_int_en(%struct.sprd_mcdt_dev*, i32, i32, i32) #1

declare dso_local i32 @sprd_mcdt_ap_int_enable(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_fifo_clear(%struct.sprd_mcdt_dev*, i32) #1

declare dso_local i32 @sprd_mcdt_dac_set_watermark(%struct.sprd_mcdt_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
