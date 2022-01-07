; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_sst_init_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_sst_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_dev = type { i32, %struct.sst_dsp* }
%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sst_dsp.0*)* }
%struct.sst_dsp.0 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"load base fw failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cnl_sst_init_fw(%struct.device* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_dsp*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  %8 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %9 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %8, i32 0, i32 1
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  store %struct.sst_dsp* %10, %struct.sst_dsp** %7, align 8
  %11 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %12 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %11, i32 0, i32 1
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %12, align 8
  %14 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.0*)** %15, align 8
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %18 = bitcast %struct.sst_dsp* %17 to %struct.sst_dsp.0*
  %19 = call i32 %16(%struct.sst_dsp.0* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %29 = call i32 @skl_dsp_init_core_state(%struct.sst_dsp* %28)
  %30 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %31 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @skl_dsp_init_core_state(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
