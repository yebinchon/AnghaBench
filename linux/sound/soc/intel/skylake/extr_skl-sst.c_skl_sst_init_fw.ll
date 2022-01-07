; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_sst_init_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_sst_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_dev = type { i32, i32, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.1*, i32, i32)* }
%struct.sst_dsp.0 = type opaque
%struct.sst_dsp.1 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Load base fw failed : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Load Library failed : %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_sst_init_fw(%struct.device* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_dsp*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  %8 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %9 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %8, i32 0, i32 3
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  store %struct.sst_dsp* %10, %struct.sst_dsp** %7, align 8
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.0*)** %13, align 8
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %16 = bitcast %struct.sst_dsp* %15 to %struct.sst_dsp.0*
  %17 = call i32 %14(%struct.sst_dsp.0* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %27 = call i32 @skl_dsp_init_core_state(%struct.sst_dsp* %26)
  %28 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %29 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %34 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.sst_dsp.1*, i32, i32)*, i32 (%struct.sst_dsp.1*, i32, i32)** %35, align 8
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %7, align 8
  %38 = bitcast %struct.sst_dsp* %37 to %struct.sst_dsp.1*
  %39 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %40 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %43 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %36(%struct.sst_dsp.1* %38, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %56 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %48, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @skl_dsp_init_core_state(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
