; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_load_library.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.skl_dev* }
%struct.skl_dev = type { i32* }
%struct.skl_lib_info = type { i32 }
%struct.firmware = type { i32, i32 }

@SKL_ADSP_FW_BIN_HDR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, %struct.skl_lib_info*, i32)* @skl_load_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_load_library(%struct.sst_dsp* %0, %struct.skl_lib_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.skl_lib_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_dev*, align 8
  %9 = alloca %struct.firmware, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store %struct.skl_lib_info* %1, %struct.skl_lib_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %13 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %12, i32 0, i32 0
  %14 = load %struct.skl_dev*, %struct.skl_dev** %13, align 8
  store %struct.skl_dev* %14, %struct.skl_dev** %8, align 8
  store i32 1, i32* %11, align 4
  br label %15

15:                                               ; preds = %45, %3
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %21 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %22 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* @SKL_ADSP_FW_BIN_HDR_OFFSET, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @skl_prepare_lib_load(%struct.skl_dev* %20, i32* %26, %struct.firmware* %9, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %49

33:                                               ; preds = %19
  %34 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @skl_transfer_module(%struct.sst_dsp* %34, i32 %36, i32 %38, i32 0, i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %49

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %15

48:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %54

49:                                               ; preds = %43, %32
  %50 = load %struct.skl_lib_info*, %struct.skl_lib_info** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @skl_release_library(%struct.skl_lib_info* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %48
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @skl_prepare_lib_load(%struct.skl_dev*, i32*, %struct.firmware*, i32, i32) #1

declare dso_local i32 @skl_transfer_module(%struct.sst_dsp*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skl_release_library(%struct.skl_lib_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
