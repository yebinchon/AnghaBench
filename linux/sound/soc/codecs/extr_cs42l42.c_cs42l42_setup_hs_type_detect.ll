; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_setup_hs_type_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_setup_hs_type_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs42l42_private = type { i32*, i8, i32, i32 }

@CS42L42_PLUG_INVALID = common dso_local global i32 0, align 4
@CS42L42_MIC_DET_CTL1 = common dso_local global i32 0, align 4
@CS42L42_LATCH_TO_VP_MASK = common dso_local global i32 0, align 4
@CS42L42_EVENT_STAT_SEL_MASK = common dso_local global i32 0, align 4
@CS42L42_HS_DET_LEVEL_MASK = common dso_local global i32 0, align 4
@CS42L42_LATCH_TO_VP_SHIFT = common dso_local global i32 0, align 4
@CS42L42_EVENT_STAT_SEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HS_DET_LEVEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HS_CLAMP_DISABLE = common dso_local global i32 0, align 4
@CS42L42_HS_CLAMP_DISABLE_MASK = common dso_local global i32 0, align 4
@CS42L42_HS_CLAMP_DISABLE_SHIFT = common dso_local global i32 0, align 4
@CS42L42_TIPSENSE_CTL = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_CTRL_MASK = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_INV_MASK = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_CTRL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_INV_SHIFT = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_DEBOUNCE_SHIFT = common dso_local global i32 0, align 4
@CS42L42_TSRS_PLUG_STATUS = common dso_local global i32 0, align 4
@CS42L42_TS_PLUG_MASK = common dso_local global i8 0, align 1
@CS42L42_TS_UNPLUG_MASK = common dso_local global i8 0, align 1
@CS42L42_TS_PLUG_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs42l42_private*)* @cs42l42_setup_hs_type_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs42l42_setup_hs_type_detect(%struct.cs42l42_private* %0) #0 {
  %2 = alloca %struct.cs42l42_private*, align 8
  %3 = alloca i32, align 4
  store %struct.cs42l42_private* %0, %struct.cs42l42_private** %2, align 8
  %4 = load i32, i32* @CS42L42_PLUG_INVALID, align 4
  %5 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %6 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 8
  %7 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %8 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CS42L42_MIC_DET_CTL1, align 4
  %11 = load i32, i32* @CS42L42_LATCH_TO_VP_MASK, align 4
  %12 = load i32, i32* @CS42L42_EVENT_STAT_SEL_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CS42L42_HS_DET_LEVEL_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CS42L42_LATCH_TO_VP_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @CS42L42_EVENT_STAT_SEL_SHIFT, align 4
  %19 = shl i32 0, %18
  %20 = or i32 %17, %19
  %21 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %22 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CS42L42_HS_DET_LEVEL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %20, %27
  %29 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %15, i32 %28)
  %30 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %31 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CS42L42_HS_CLAMP_DISABLE, align 4
  %34 = load i32, i32* @CS42L42_HS_CLAMP_DISABLE_MASK, align 4
  %35 = load i32, i32* @CS42L42_HS_CLAMP_DISABLE_SHIFT, align 4
  %36 = shl i32 1, %35
  %37 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %36)
  %38 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %39 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CS42L42_TIPSENSE_CTL, align 4
  %42 = load i32, i32* @CS42L42_TIP_SENSE_CTRL_MASK, align 4
  %43 = load i32, i32* @CS42L42_TIP_SENSE_INV_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CS42L42_TIP_SENSE_DEBOUNCE_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CS42L42_TIP_SENSE_CTRL_SHIFT, align 4
  %48 = shl i32 3, %47
  %49 = load i32, i32* @CS42L42_TIP_SENSE_INV_SHIFT, align 4
  %50 = shl i32 0, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @CS42L42_TIP_SENSE_DEBOUNCE_SHIFT, align 4
  %53 = shl i32 2, %52
  %54 = or i32 %51, %53
  %55 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %46, i32 %54)
  %56 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %57 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CS42L42_TSRS_PLUG_STATUS, align 4
  %60 = call i32 @regmap_read(i32 %58, i32 %59, i32* %3)
  %61 = load i32, i32* %3, align 4
  %62 = trunc i32 %61 to i8
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @CS42L42_TS_PLUG_MASK, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @CS42L42_TS_UNPLUG_MASK, align 1
  %67 = sext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = and i32 %63, %68
  %70 = load i8, i8* @CS42L42_TS_PLUG_SHIFT, align 1
  %71 = sext i8 %70 to i32
  %72 = ashr i32 %69, %71
  %73 = trunc i32 %72 to i8
  %74 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %75 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %74, i32 0, i32 1
  store i8 %73, i8* %75, align 8
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
