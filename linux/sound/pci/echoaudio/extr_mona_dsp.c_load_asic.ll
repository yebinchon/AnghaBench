; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i16, i64 }

@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@FW_MONA_361_1_ASIC48 = common dso_local global i16 0, align 2
@FW_MONA_301_1_ASIC48 = common dso_local global i16 0, align 2
@DSP_FNC_LOAD_MONA_PCI_CARD_ASIC = common dso_local global i32 0, align 4
@DSP_FNC_LOAD_MONA_EXTERNAL_ASIC = common dso_local global i32 0, align 4
@FW_MONA_2_ASIC = common dso_local global i16 0, align 2
@GML_CONVERTER_ENABLE = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %7 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %8 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = call i32 @mdelay(i32 10)
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEVICE_ID_56361, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i16, i16* @FW_MONA_361_1_ASIC48, align 2
  store i16 %20, i16* %6, align 2
  br label %23

21:                                               ; preds = %12
  %22 = load i16, i16* @FW_MONA_301_1_ASIC48, align 2
  store i16 %22, i16* %6, align 2
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %25 = load i32, i32* @DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, align 4
  %26 = load i16, i16* %6, align 2
  %27 = call i32 @load_asic_generic(%struct.echoaudio* %24, i32 %25, i16 signext %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %23
  %33 = load i16, i16* %6, align 2
  %34 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 1
  store i16 %33, i16* %35, align 8
  %36 = call i32 @mdelay(i32 10)
  %37 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %38 = load i32, i32* @DSP_FNC_LOAD_MONA_EXTERNAL_ASIC, align 4
  %39 = load i16, i16* @FW_MONA_2_ASIC, align 2
  %40 = call i32 @load_asic_generic(%struct.echoaudio* %37, i32 %38, i16 signext %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %32
  %46 = call i32 @mdelay(i32 10)
  %47 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %48 = call i32 @check_asic_status(%struct.echoaudio* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @GML_CONVERTER_ENABLE, align 4
  %53 = load i32, i32* @GML_48KHZ, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @write_control_reg(%struct.echoaudio* %55, i32 %56, i32 1)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %43, %30, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i16 signext) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
