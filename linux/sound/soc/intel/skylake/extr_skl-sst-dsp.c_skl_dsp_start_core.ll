; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_start_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_start_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unstall/run core: core_mask = %x\0A\00", align 1
@SKL_ADSP_REG_ADSPCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DSP start core failed: core_mask %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_start_core(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @skl_dsp_core_unset_reset_state(%struct.sst_dsp* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %21 = load i32, i32* @SKL_ADSP_REG_ADSPCS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @SKL_ADSPCS_CSTALL_MASK(i32 %22)
  %24 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %20, i32 %21, i32 %23, i32 0)
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @is_skl_dsp_core_enable(%struct.sst_dsp* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %14
  %30 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @skl_dsp_reset_core(%struct.sst_dsp* %30, i32 %31)
  %33 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %34 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %14
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @skl_dsp_core_unset_reset_state(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @SKL_ADSPCS_CSTALL_MASK(i32) #1

declare dso_local i32 @is_skl_dsp_core_enable(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_dsp_reset_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
