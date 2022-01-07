; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_is_skl_dsp_core_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_is_skl_dsp_core_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SKL_ADSP_REG_ADSPCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DSP core(s) enabled? %d : core_mask %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @is_skl_dsp_core_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_skl_dsp_core_enable(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %8 = load i32, i32* @SKL_ADSP_REG_ADSPCS, align 4
  %9 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @SKL_ADSPCS_CPA_MASK(i32 %11)
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SKL_ADSPCS_SPA_MASK(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SKL_ADSPCS_CRST_MASK(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @SKL_ADSPCS_CSTALL_MASK(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %27, %21, %15, %2
  %35 = phi i1 [ false, %21 ], [ false, %15 ], [ false, %2 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %38 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @SKL_ADSPCS_CPA_MASK(i32) #1

declare dso_local i32 @SKL_ADSPCS_SPA_MASK(i32) #1

declare dso_local i32 @SKL_ADSPCS_CRST_MASK(i32) #1

declare dso_local i32 @SKL_ADSPCS_CSTALL_MASK(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
