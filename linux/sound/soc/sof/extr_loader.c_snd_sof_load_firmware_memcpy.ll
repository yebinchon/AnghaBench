; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_load_firmware_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_load_firmware_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.snd_sof_pdata* }
%struct.snd_sof_pdata = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"error: invalid FW header\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error: failed to reset DSP\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"error: invalid FW modules\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_load_firmware_memcpy(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.snd_sof_pdata*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 1
  %8 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %7, align 8
  store %struct.snd_sof_pdata* %8, %struct.snd_sof_pdata** %4, align 8
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %10 = call i32 @snd_sof_load_firmware_raw(%struct.snd_sof_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %17 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %18 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @check_header(%struct.snd_sof_dev* %16, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %25 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

28:                                               ; preds = %15
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %30 = call i32 @snd_sof_dsp_reset(%struct.snd_sof_dev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %35 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %52

38:                                               ; preds = %28
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %40 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @load_modules(%struct.snd_sof_dev* %39, i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %48 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %60

52:                                               ; preds = %46, %33, %23
  %53 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %54 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @release_firmware(i32* %55)
  %57 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %58 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %51, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @snd_sof_load_firmware_raw(%struct.snd_sof_dev*) #1

declare dso_local i32 @check_header(%struct.snd_sof_dev*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_reset(%struct.snd_sof_dev*) #1

declare dso_local i32 @load_modules(%struct.snd_sof_dev*, i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
