; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_transfer_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_transfer_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.sst_dsp.0*, i8*, i32, i32)*, i32 (%struct.sst_dsp.1*)* }
%struct.sst_dsp.0 = type opaque
%struct.sst_dsp.1 = type opaque

@SKL_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@SKL_FW_STS_MASK = common dso_local global i32 0, align 4
@SKL_FW_RFW_START = common dso_local global i32 0, align 4
@SKL_BASEFW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Firmware boot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i8*, i32)* @skl_transfer_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_transfer_firmware(%struct.sst_dsp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %10 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.sst_dsp.0*, i8*, i32, i32)*, i32 (%struct.sst_dsp.0*, i8*, i32, i32)** %12, align 8
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %15 = bitcast %struct.sst_dsp* %14 to %struct.sst_dsp.0*
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 %13(%struct.sst_dsp.0* %15, i8* %16, i32 %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %25 = load i32, i32* @SKL_ADSP_FW_STATUS, align 4
  %26 = load i32, i32* @SKL_FW_STS_MASK, align 4
  %27 = load i32, i32* @SKL_FW_RFW_START, align 4
  %28 = load i32, i32* @SKL_BASEFW_TIMEOUT, align 4
  %29 = call i32 @sst_dsp_register_poll(%struct.sst_dsp* %24, i32 %25, i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %31 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.sst_dsp.1*)*, i32 (%struct.sst_dsp.1*)** %33, align 8
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %36 = bitcast %struct.sst_dsp* %35 to %struct.sst_dsp.1*
  %37 = call i32 %34(%struct.sst_dsp.1* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %21
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @sst_dsp_register_poll(%struct.sst_dsp*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
