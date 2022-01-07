; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"HSW_PM dsp runtime suspend\0A\00", align 1
@SST_CSR = common dso_local global i32 0, align 4
@SST_CSR_24MHZ_LPCS = common dso_local global i32 0, align 4
@SST_CSR_RST = common dso_local global i32 0, align 4
@SST_CSR_STALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"HSW_PM dsp runtime suspend exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @hsw_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_sleep(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %3 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %4 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %8 = load i32, i32* @SST_CSR, align 4
  %9 = load i32, i32* @SST_CSR_24MHZ_LPCS, align 4
  %10 = load i32, i32* @SST_CSR_RST, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SST_CSR_STALL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SST_CSR_RST, align 4
  %15 = load i32, i32* @SST_CSR_STALL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SST_CSR_24MHZ_LPCS, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %7, i32 %8, i32 %13, i32 %18)
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %21 = call i32 @hsw_set_dsp_D3(%struct.sst_dsp* %20)
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %23 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @hsw_set_dsp_D3(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
