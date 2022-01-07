; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_soft_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_soft_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DAC33_PWR_CTRL = common dso_local global i32 0, align 4
@DAC33_PDNALLB = common dso_local global i32 0, align 4
@DAC33_OSCPDNB = common dso_local global i32 0, align 4
@DAC33_DACRPDNB = common dso_local global i32 0, align 4
@DAC33_DACLPDNB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @dac33_soft_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac33_soft_power(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = load i32, i32* @DAC33_PWR_CTRL, align 4
  %8 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @DAC33_PDNALLB, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @DAC33_PDNALLB, align 4
  %17 = load i32, i32* @DAC33_OSCPDNB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DAC33_DACRPDNB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DAC33_DACLPDNB, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %15, %11
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @DAC33_PWR_CTRL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dac33_write(%struct.snd_soc_component* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @dac33_read_reg_cache(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dac33_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
