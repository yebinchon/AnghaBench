; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sti-sas.c_sti_sas_init_sas_registers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sti-sas.c_sti_sas_init_sas_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sti_sas_data = type { i32 }

@STIH407_AUDIO_GLUE_CTRL = common dso_local global i32 0, align 4
@SPDIF_BIPHASE_ENABLE_MASK = common dso_local global i32 0, align 4
@SPDIF_BIPHASE_IDLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to update SPDIF registers\0A\00", align 1
@STIH407_AUDIO_DAC_CTRL = common dso_local global i32 0, align 4
@STIH407_DAC_STANDBY_MASK = common dso_local global i32 0, align 4
@STIH407_DAC_STANDBY_ANA_MASK = common dso_local global i32 0, align 4
@STIH407_DAC_SOFTMUTE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to update DAC registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.sti_sas_data*)* @sti_sas_init_sas_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_sas_init_sas_registers(%struct.snd_soc_component* %0, %struct.sti_sas_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.sti_sas_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.sti_sas_data* %1, %struct.sti_sas_data** %5, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %8 = load i32, i32* @STIH407_AUDIO_GLUE_CTRL, align 4
  %9 = load i32, i32* @SPDIF_BIPHASE_ENABLE_MASK, align 4
  %10 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %7, i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = load i32, i32* @STIH407_AUDIO_GLUE_CTRL, align 4
  %16 = load i32, i32* @SPDIF_BIPHASE_IDLE_MASK, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %61

27:                                               ; preds = %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %29 = load i32, i32* @STIH407_AUDIO_DAC_CTRL, align 4
  %30 = load i32, i32* @STIH407_DAC_STANDBY_MASK, align 4
  %31 = load i32, i32* @STIH407_DAC_STANDBY_MASK, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %37 = load i32, i32* @STIH407_AUDIO_DAC_CTRL, align 4
  %38 = load i32, i32* @STIH407_DAC_STANDBY_ANA_MASK, align 4
  %39 = load i32, i32* @STIH407_DAC_STANDBY_ANA_MASK, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %27
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = load i32, i32* @STIH407_AUDIO_DAC_CTRL, align 4
  %47 = load i32, i32* @STIH407_DAC_SOFTMUTE_MASK, align 4
  %48 = load i32, i32* @STIH407_DAC_SOFTMUTE_MASK, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %53, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
