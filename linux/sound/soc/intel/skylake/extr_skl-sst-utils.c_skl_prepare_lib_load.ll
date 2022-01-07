; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-utils.c_skl_prepare_lib_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-utils.c_skl_prepare_lib_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i64, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.skl_lib_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Request lib %s failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_prepare_lib_load(%struct.skl_dev* %0, %struct.skl_lib_info* %1, %struct.firmware* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca %struct.skl_lib_info*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sst_dsp*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %7, align 8
  store %struct.skl_lib_info* %1, %struct.skl_lib_info** %8, align 8
  store %struct.firmware* %2, %struct.firmware** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %15 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %14, i32 0, i32 2
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %15, align 8
  store %struct.sst_dsp* %16, %struct.sst_dsp** %13, align 8
  %17 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %18 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %5
  %22 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %23 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %22, i32 0, i32 0
  %24 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %25 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %28 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @request_firmware(%struct.TYPE_3__** %23, i32 %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %21
  %34 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %35 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %38 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %79

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %46 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %13, align 8
  %51 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %52 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @snd_skl_parse_uuids(%struct.sst_dsp* %50, %struct.TYPE_3__* %53, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %79

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %64 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.firmware*, %struct.firmware** %9, align 8
  %69 = getelementptr inbounds %struct.firmware, %struct.firmware* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.skl_lib_info*, %struct.skl_lib_info** %8, align 8
  %71 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.firmware*, %struct.firmware** %9, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.firmware*, %struct.firmware** %9, align 8
  %78 = call i32 @skl_dsp_strip_extended_manifest(%struct.firmware* %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %62, %59, %33
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @request_firmware(%struct.TYPE_3__**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_skl_parse_uuids(%struct.sst_dsp*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @skl_dsp_strip_extended_manifest(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
