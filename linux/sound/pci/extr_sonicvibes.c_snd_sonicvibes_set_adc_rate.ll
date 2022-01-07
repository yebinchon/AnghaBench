; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_set_adc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_set_adc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i32 }

@SV_IREG_ADC_PLL = common dso_local global i32 0, align 4
@SV_IREG_ADC_ALT_RATE = common dso_local global i32 0, align 4
@SV_IREG_ADC_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sonicvibes*, i32)* @snd_sonicvibes_set_adc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sonicvibes_set_adc_rate(%struct.sonicvibes* %0, i32 %1) #0 {
  %3 = alloca %struct.sonicvibes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.sonicvibes* %0, %struct.sonicvibes** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = udiv i32 48000, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %6, align 4
  %15 = udiv i32 48000, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8 16, i8* %7, align 1
  br label %24

19:                                               ; preds = %13
  store i8 0, i8* %7, align 1
  %20 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %21 = load i32, i32* @SV_IREG_ADC_PLL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @snd_sonicvibes_setpll(%struct.sonicvibes* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %18
  %25 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %26 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %30 = load i32, i32* @SV_IREG_ADC_ALT_RATE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, 1
  %33 = shl i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %29, i32 %30, i8 zeroext %34)
  %36 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %37 = load i32, i32* @SV_IREG_ADC_CLOCK, align 4
  %38 = load i8, i8* %7, align 1
  %39 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %36, i32 %37, i8 zeroext %38)
  %40 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %41 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @snd_sonicvibes_setpll(%struct.sonicvibes*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sonicvibes_out1(%struct.sonicvibes*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
