; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_cancel_hs_type_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_cancel_hs_type_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs42l42_private = type { i32 }

@CS42L42_DET_INT2_MASK = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_TF_MASK = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_FT_MASK = common dso_local global i32 0, align 4
@CS42L42_M_HSBIAS_HIZ_MASK = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_RLS_MASK = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_DET_MASK = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_TF_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_FT_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_HSBIAS_HIZ_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_RLS_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_DET_SHIFT = common dso_local global i32 0, align 4
@CS42L42_MISC_DET_CTL = common dso_local global i32 0, align 4
@CS42L42_DETECT_MODE_MASK = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_CTL_MASK = common dso_local global i32 0, align 4
@CS42L42_PDN_MIC_LVL_DET_MASK = common dso_local global i32 0, align 4
@CS42L42_DETECT_MODE_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_CTL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PDN_MIC_LVL_DET_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_SC_AUTOCTL = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_SENSE_EN_MASK = common dso_local global i32 0, align 4
@CS42L42_AUTO_HSBIAS_HIZ_MASK = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_EN_MASK = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_SENSE_TRIP_MASK = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_SENSE_EN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_AUTO_HSBIAS_HIZ_SHIFT = common dso_local global i32 0, align 4
@CS42L42_TIP_SENSE_EN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_SENSE_TRIP_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSDET_CTL2 = common dso_local global i32 0, align 4
@CS42L42_HSDET_CTRL_MASK = common dso_local global i32 0, align 4
@CS42L42_HSDET_SET_MASK = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_REF_MASK = common dso_local global i32 0, align 4
@CS42L42_HSDET_AUTO_TIME_MASK = common dso_local global i32 0, align 4
@CS42L42_HSDET_CTRL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSDET_SET_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSBIAS_REF_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HSDET_AUTO_TIME_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs42l42_private*)* @cs42l42_cancel_hs_type_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs42l42_cancel_hs_type_detect(%struct.cs42l42_private* %0) #0 {
  %2 = alloca %struct.cs42l42_private*, align 8
  store %struct.cs42l42_private* %0, %struct.cs42l42_private** %2, align 8
  %3 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %4 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CS42L42_DET_INT2_MASK, align 4
  %7 = load i32, i32* @CS42L42_M_DETECT_TF_MASK, align 4
  %8 = load i32, i32* @CS42L42_M_DETECT_FT_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CS42L42_M_HSBIAS_HIZ_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CS42L42_M_SHORT_RLS_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CS42L42_M_SHORT_DET_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CS42L42_M_DETECT_TF_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @CS42L42_M_DETECT_FT_SHIFT, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = load i32, i32* @CS42L42_M_HSBIAS_HIZ_SHIFT, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @CS42L42_M_SHORT_RLS_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @CS42L42_M_SHORT_DET_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %15, i32 %29)
  %31 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %32 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CS42L42_MISC_DET_CTL, align 4
  %35 = load i32, i32* @CS42L42_DETECT_MODE_MASK, align 4
  %36 = load i32, i32* @CS42L42_HSBIAS_CTL_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CS42L42_PDN_MIC_LVL_DET_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CS42L42_DETECT_MODE_SHIFT, align 4
  %41 = shl i32 0, %40
  %42 = load i32, i32* @CS42L42_HSBIAS_CTL_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @CS42L42_PDN_MIC_LVL_DET_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %39, i32 %47)
  %49 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %50 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CS42L42_HSBIAS_SC_AUTOCTL, align 4
  %53 = load i32, i32* @CS42L42_HSBIAS_SENSE_EN_MASK, align 4
  %54 = load i32, i32* @CS42L42_AUTO_HSBIAS_HIZ_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CS42L42_TIP_SENSE_EN_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CS42L42_HSBIAS_SENSE_TRIP_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CS42L42_HSBIAS_SENSE_EN_SHIFT, align 4
  %61 = shl i32 0, %60
  %62 = load i32, i32* @CS42L42_AUTO_HSBIAS_HIZ_SHIFT, align 4
  %63 = shl i32 0, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @CS42L42_TIP_SENSE_EN_SHIFT, align 4
  %66 = shl i32 0, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @CS42L42_HSBIAS_SENSE_TRIP_SHIFT, align 4
  %69 = shl i32 3, %68
  %70 = or i32 %67, %69
  %71 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %59, i32 %70)
  %72 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %73 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CS42L42_HSDET_CTL2, align 4
  %76 = load i32, i32* @CS42L42_HSDET_CTRL_MASK, align 4
  %77 = load i32, i32* @CS42L42_HSDET_SET_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CS42L42_HSBIAS_REF_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CS42L42_HSDET_AUTO_TIME_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CS42L42_HSDET_CTRL_SHIFT, align 4
  %84 = shl i32 0, %83
  %85 = load i32, i32* @CS42L42_HSDET_SET_SHIFT, align 4
  %86 = shl i32 2, %85
  %87 = or i32 %84, %86
  %88 = load i32, i32* @CS42L42_HSBIAS_REF_SHIFT, align 4
  %89 = shl i32 0, %88
  %90 = or i32 %87, %89
  %91 = load i32, i32* @CS42L42_HSDET_AUTO_TIME_SHIFT, align 4
  %92 = shl i32 3, %91
  %93 = or i32 %90, %92
  %94 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %82, i32 %93)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
