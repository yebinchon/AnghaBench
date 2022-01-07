; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_disable_digital.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_disable_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DAC33_SER_AUDIOIF_CTRL_B = common dso_local global i32 0, align 4
@DAC33_BCLKON = common dso_local global i32 0, align 4
@DAC33_PWR_CTRL = common dso_local global i32 0, align 4
@DAC33_OSCPDNB = common dso_local global i32 0, align 4
@DAC33_DACRPDNB = common dso_local global i32 0, align 4
@DAC33_DACLPDNB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @dac33_disable_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac33_disable_digital(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_B, align 4
  %6 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @DAC33_BCLKON, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @DAC33_SER_AUDIOIF_CTRL_B, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @dac33_write(%struct.snd_soc_component* %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @DAC33_PWR_CTRL, align 4
  %17 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @DAC33_OSCPDNB, align 4
  %19 = load i32, i32* @DAC33_DACRPDNB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DAC33_DACLPDNB, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @DAC33_PWR_CTRL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @dac33_write(%struct.snd_soc_component* %26, i32 %27, i32 %28)
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
