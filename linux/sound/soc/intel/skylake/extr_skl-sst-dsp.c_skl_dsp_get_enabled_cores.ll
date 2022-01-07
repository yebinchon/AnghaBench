; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_get_enabled_cores.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_get_enabled_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.skl_dev* }
%struct.skl_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SKL_ADSP_REG_ADSPCS = common dso_local global i32 0, align 4
@SKL_ADSPCS_CPA_SHIFT = common dso_local global i32 0, align 4
@SKL_ADSPCS_CRST_SHIFT = common dso_local global i32 0, align 4
@SKL_ADSPCS_CSTALL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DSP enabled cores mask = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_get_enabled_cores(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 1
  %9 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  store %struct.skl_dev* %9, %struct.skl_dev** %3, align 8
  %10 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %11 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SKL_DSP_CORES_MASK(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %16 = load i32, i32* @SKL_ADSP_REG_ADSPCS, align 4
  %17 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SKL_ADSPCS_CPA_MASK(i32 %19)
  %21 = and i32 %18, %20
  %22 = load i32, i32* @SKL_ADSPCS_CPA_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SKL_ADSPCS_CRST_MASK(i32 %26)
  %28 = and i32 %25, %27
  %29 = load i32, i32* @SKL_ADSPCS_CRST_SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @SKL_ADSPCS_CSTALL_MASK(i32 %35)
  %37 = and i32 %34, %36
  %38 = load i32, i32* @SKL_ADSPCS_CSTALL_SHIFT, align 4
  %39 = lshr i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %46 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @SKL_DSP_CORES_MASK(i32) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @SKL_ADSPCS_CPA_MASK(i32) #1

declare dso_local i32 @SKL_ADSPCS_CRST_MASK(i32) #1

declare dso_local i32 @SKL_ADSPCS_CSTALL_MASK(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
