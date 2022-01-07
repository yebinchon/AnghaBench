; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_unload_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_unload_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.skl_dev* }
%struct.skl_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Module bad usage cnt!:%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SKL_NUM_MODULES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to UnLoad module\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @skl_unload_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_unload_module(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %10 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %9, i32 0, i32 1
  %11 = load %struct.skl_dev*, %struct.skl_dev** %10, align 8
  store %struct.skl_dev* %11, %struct.skl_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @skl_put_module(%struct.sst_dsp* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %47

29:                                               ; preds = %25
  %30 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %31 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %30, i32 0, i32 0
  %32 = load i32, i32* @SKL_NUM_MODULES, align 4
  %33 = call i32 @skl_ipc_unload_modules(i32* %31, i32 %32, i32* %5)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %38 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @skl_get_module(%struct.sst_dsp* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %36, %28, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @skl_put_module(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @skl_ipc_unload_modules(i32*, i32, i32*) #1

declare dso_local i32 @skl_get_module(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
