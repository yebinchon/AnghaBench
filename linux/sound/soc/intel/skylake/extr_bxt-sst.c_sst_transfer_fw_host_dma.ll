; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_sst_transfer_fw_host_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_sst_transfer_fw_host_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, i32*, i32)*, i32 (i32, i32, i32)* }

@BXT_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@SKL_FW_STS_MASK = common dso_local global i32 0, align 4
@BXT_ROM_INIT = common dso_local global i32 0, align 4
@BXT_BASEFW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Firmware boot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @sst_transfer_fw_host_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_transfer_fw_host_dma(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %4 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %5 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %6, align 8
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 %7(i32 %10, i32 1, i32 %14)
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %17 = load i32, i32* @BXT_ADSP_FW_STATUS, align 4
  %18 = load i32, i32* @SKL_FW_STS_MASK, align 4
  %19 = load i32, i32* @BXT_ROM_INIT, align 4
  %20 = load i32, i32* @BXT_BASEFW_TIMEOUT, align 4
  %21 = call i32 @sst_dsp_register_poll(%struct.sst_dsp* %16, i32 %17, i32 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %23 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %24, align 8
  %26 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %27 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %30 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %25(i32 %28, i32 0, i32 %32)
  %34 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %35 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %36, align 8
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %39 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %42 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %41, i32 0, i32 1
  %43 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %44 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %37(i32 %40, i32* %42, i32 %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @sst_dsp_register_poll(%struct.sst_dsp*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
