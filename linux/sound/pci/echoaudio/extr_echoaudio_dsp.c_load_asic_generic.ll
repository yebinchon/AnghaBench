; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_asic_generic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_asic_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Firmware not found !\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed on write_dsp\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i64, i16)* @load_asic_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic_generic(%struct.echoaudio* %0, i64 %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i64 %1, i64* %6, align 8
  store i16 %2, i16* %7, align 2
  %13 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %14 = load i16, i16* %7, align 2
  %15 = call i32 @get_firmware(%struct.firmware** %8, %struct.echoaudio* %13, i16 signext %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %3
  %27 = load %struct.firmware*, %struct.firmware** %8, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  store i64* %30, i64** %12, align 8
  %31 = load %struct.firmware*, %struct.firmware** %8, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @write_dsp(%struct.echoaudio* %34, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %67

39:                                               ; preds = %26
  %40 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @write_dsp(%struct.echoaudio* %40, i64 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %67

45:                                               ; preds = %39
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @write_dsp(%struct.echoaudio* %51, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %67

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load %struct.firmware*, %struct.firmware** %8, align 8
  %65 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %66 = call i32 @free_firmware(%struct.firmware* %64, %struct.echoaudio* %65)
  store i32 0, i32* %4, align 4
  br label %79

67:                                               ; preds = %58, %44, %38
  %68 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.firmware*, %struct.firmware** %8, align 8
  %75 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %76 = call i32 @free_firmware(%struct.firmware* %74, %struct.echoaudio* %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %67, %63, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @get_firmware(%struct.firmware**, %struct.echoaudio*, i16 signext) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @write_dsp(%struct.echoaudio*, i64) #1

declare dso_local i32 @free_firmware(%struct.firmware*, %struct.echoaudio*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
