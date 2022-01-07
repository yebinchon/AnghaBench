; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32 }

@DAC33_DAC_CTRL_A = common dso_local global i32 0, align 4
@DAC33_DAC_CTRL_B = common dso_local global i32 0, align 4
@DAC33_DACSRCR_RIGHT = common dso_local global i32 0, align 4
@DAC33_DACSRCL_LEFT = common dso_local global i32 0, align 4
@DAC33_DAC_CTRL_C = common dso_local global i32 0, align 4
@DAC33_ANA_VOL_SOFT_STEP_CTRL = common dso_local global i32 0, align 4
@DAC33_VOLCLKEN = common dso_local global i32 0, align 4
@DAC33_LDAC_DIG_VOL_CTRL = common dso_local global i32 0, align 4
@DAC33_RDAC_DIG_VOL_CTRL = common dso_local global i32 0, align 4
@DAC33_LINEL_TO_LLO_VOL = common dso_local global i32 0, align 4
@DAC33_LINER_TO_RLO_VOL = common dso_local global i32 0, align 4
@DAC33_OUT_AMP_CTRL = common dso_local global i32 0, align 4
@DAC33_LDAC_PWR_CTRL = common dso_local global i32 0, align 4
@DAC33_RDAC_PWR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @dac33_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac33_init_chip(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.tlv320dac33_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.tlv320dac33_priv* %5, %struct.tlv320dac33_priv** %3, align 8
  %6 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load i32, i32* @DAC33_DAC_CTRL_A, align 4
  %18 = call i32 @DAC33_DACRATE(i32 0)
  %19 = call i32 @dac33_write(%struct.snd_soc_component* %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @DAC33_DAC_CTRL_B, align 4
  %22 = load i32, i32* @DAC33_DACSRCR_RIGHT, align 4
  %23 = load i32, i32* @DAC33_DACSRCL_LEFT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @dac33_write(%struct.snd_soc_component* %20, i32 %21, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @DAC33_DAC_CTRL_C, align 4
  %28 = call i32 @dac33_write(%struct.snd_soc_component* %26, i32 %27, i32 0)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %30 = load i32, i32* @DAC33_ANA_VOL_SOFT_STEP_CTRL, align 4
  %31 = load i32, i32* @DAC33_VOLCLKEN, align 4
  %32 = call i32 @dac33_write(%struct.snd_soc_component* %29, i32 %30, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @DAC33_LDAC_DIG_VOL_CTRL, align 4
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @DAC33_LDAC_DIG_VOL_CTRL, align 4
  %37 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %35, i32 %36)
  %38 = call i32 @dac33_write(%struct.snd_soc_component* %33, i32 %34, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %40 = load i32, i32* @DAC33_RDAC_DIG_VOL_CTRL, align 4
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %42 = load i32, i32* @DAC33_RDAC_DIG_VOL_CTRL, align 4
  %43 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %41, i32 %42)
  %44 = call i32 @dac33_write(%struct.snd_soc_component* %39, i32 %40, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %46 = load i32, i32* @DAC33_LINEL_TO_LLO_VOL, align 4
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %48 = load i32, i32* @DAC33_LINEL_TO_LLO_VOL, align 4
  %49 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %47, i32 %48)
  %50 = call i32 @dac33_write(%struct.snd_soc_component* %45, i32 %46, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %52 = load i32, i32* @DAC33_LINER_TO_RLO_VOL, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %54 = load i32, i32* @DAC33_LINER_TO_RLO_VOL, align 4
  %55 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %53, i32 %54)
  %56 = call i32 @dac33_write(%struct.snd_soc_component* %51, i32 %52, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %58 = load i32, i32* @DAC33_OUT_AMP_CTRL, align 4
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %60 = load i32, i32* @DAC33_OUT_AMP_CTRL, align 4
  %61 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %59, i32 %60)
  %62 = call i32 @dac33_write(%struct.snd_soc_component* %57, i32 %58, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %64 = load i32, i32* @DAC33_LDAC_PWR_CTRL, align 4
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %66 = load i32, i32* @DAC33_LDAC_PWR_CTRL, align 4
  %67 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %65, i32 %66)
  %68 = call i32 @dac33_write(%struct.snd_soc_component* %63, i32 %64, i32 %67)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %70 = load i32, i32* @DAC33_RDAC_PWR_CTRL, align 4
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = load i32, i32* @DAC33_RDAC_PWR_CTRL, align 4
  %73 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %71, i32 %72)
  %74 = call i32 @dac33_write(%struct.snd_soc_component* %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dac33_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @DAC33_DACRATE(i32) #1

declare dso_local i32 @dac33_read_reg_cache(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
