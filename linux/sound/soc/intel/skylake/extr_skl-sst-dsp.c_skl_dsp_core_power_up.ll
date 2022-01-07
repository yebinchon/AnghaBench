; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_core_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_core_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SKL_ADSP_REG_ADSPCS = common dso_local global i32 0, align 4
@SKL_DSP_PU_TO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Power up\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"DSP core power up failed: core_mask %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_core_power_up(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %7 = load i32, i32* @SKL_ADSP_REG_ADSPCS, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @SKL_ADSPCS_SPA_MASK(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @SKL_ADSPCS_SPA_MASK(i32 %10)
  %12 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %6, i32 %7, i32 %9, i32 %11)
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %14 = load i32, i32* @SKL_ADSP_REG_ADSPCS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SKL_ADSPCS_CPA_MASK(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SKL_ADSPCS_CPA_MASK(i32 %17)
  %19 = load i32, i32* @SKL_DSP_PU_TO, align 4
  %20 = call i32 @sst_dsp_register_poll(%struct.sst_dsp* %13, i32 %14, i32 %16, i32 %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %22 = load i32, i32* @SKL_ADSP_REG_ADSPCS, align 4
  %23 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SKL_ADSPCS_CPA_MASK(i32 %24)
  %26 = and i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @SKL_ADSPCS_CPA_MASK(i32 %27)
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %32 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %2
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @SKL_ADSPCS_SPA_MASK(i32) #1

declare dso_local i32 @sst_dsp_register_poll(%struct.sst_dsp*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @SKL_ADSPCS_CPA_MASK(i32) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
