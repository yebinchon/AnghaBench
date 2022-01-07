; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_prefill_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_prefill_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlv320dac33_priv = type { i32, i32, i8*, i8*, i32, i32, i8*, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DAC33_NSAMPLE_MSB = common dso_local global i32 0, align 4
@DAC33_PREFILL_MSB = common dso_local global i32 0, align 4
@DAC33_FIFO_IRQ_MASK = common dso_local global i32 0, align 4
@DAC33_MAT = common dso_local global i32 0, align 4
@DAC33_MODE7_MARGIN = common dso_local global i32 0, align 4
@DAC33_MUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unhandled FIFO mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlv320dac33_priv*)* @dac33_prefill_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac33_prefill_handler(%struct.tlv320dac33_priv* %0) #0 {
  %2 = alloca %struct.tlv320dac33_priv*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tlv320dac33_priv* %0, %struct.tlv320dac33_priv** %2, align 8
  %6 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %7 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %6, i32 0, i32 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %10 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %92 [
    i32 129, label %12
    i32 128, label %60
  ]

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @DAC33_NSAMPLE_MSB, align 4
  %15 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %16 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DAC33_THRREG(i32 %17)
  %19 = call i32 @dac33_write16(%struct.snd_soc_component* %13, i32 %14, i32 %18)
  %20 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %21 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = call i32 (...) @ktime_get()
  %25 = call i8* @ktime_to_us(i32 %24)
  %26 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %27 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %29 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %28, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %32 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %34 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @DAC33_PREFILL_MSB, align 4
  %39 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %40 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DAC33_THRREG(i32 %41)
  %43 = call i32 @dac33_write16(%struct.snd_soc_component* %37, i32 %38, i32 %42)
  %44 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %45 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %48 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SAMPLES_TO_US(i32 %46, i32 %49)
  %51 = add nsw i32 %50, 1000
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 500
  %55 = call i32 @usleep_range(i32 %52, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = load i32, i32* @DAC33_FIFO_IRQ_MASK, align 4
  %58 = load i32, i32* @DAC33_MAT, align 4
  %59 = call i32 @dac33_write(%struct.snd_soc_component* %56, i32 %57, i32 %58)
  br label %100

60:                                               ; preds = %1
  %61 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %62 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = call i32 (...) @ktime_get()
  %66 = call i8* @ktime_to_us(i32 %65)
  %67 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %68 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %70 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %73 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = ptrtoint i8* %71 to i64
  %77 = sub i64 %75, %76
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %73, align 8
  %79 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %80 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %84 = load i32, i32* @DAC33_PREFILL_MSB, align 4
  %85 = load i32, i32* @DAC33_MODE7_MARGIN, align 4
  %86 = call i32 @DAC33_THRREG(i32 %85)
  %87 = call i32 @dac33_write16(%struct.snd_soc_component* %83, i32 %84, i32 %86)
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %89 = load i32, i32* @DAC33_FIFO_IRQ_MASK, align 4
  %90 = load i32, i32* @DAC33_MUT, align 4
  %91 = call i32 @dac33_write(%struct.snd_soc_component* %88, i32 %89, i32 %90)
  br label %100

92:                                               ; preds = %1
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %2, align 8
  %97 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_warn(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92, %60, %12
  ret void
}

declare dso_local i32 @dac33_write16(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @DAC33_THRREG(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @SAMPLES_TO_US(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dac33_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
