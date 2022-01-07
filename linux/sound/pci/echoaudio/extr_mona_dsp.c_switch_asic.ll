; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_switch_asic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_switch_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i16 }

@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@FW_MONA_361_1_ASIC96 = common dso_local global i16 0, align 2
@FW_MONA_361_1_ASIC48 = common dso_local global i16 0, align 2
@FW_MONA_301_1_ASIC96 = common dso_local global i16 0, align 2
@FW_MONA_301_1_ASIC48 = common dso_local global i16 0, align 2
@DSP_FNC_LOAD_MONA_PCI_CARD_ASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i8)* @switch_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_asic(%struct.echoaudio* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DEVICE_ID_56361, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i16, i16* @FW_MONA_361_1_ASIC96, align 2
  store i16 %17, i16* %7, align 2
  br label %20

18:                                               ; preds = %13
  %19 = load i16, i16* @FW_MONA_361_1_ASIC48, align 2
  store i16 %19, i16* %7, align 2
  br label %20

20:                                               ; preds = %18, %16
  br label %29

21:                                               ; preds = %2
  %22 = load i8, i8* %5, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i16, i16* @FW_MONA_301_1_ASIC96, align 2
  store i16 %25, i16* %7, align 2
  br label %28

26:                                               ; preds = %21
  %27 = load i16, i16* @FW_MONA_301_1_ASIC48, align 2
  store i16 %27, i16* %7, align 2
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i16, i16* %7, align 2
  %31 = sext i16 %30 to i32
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = sext i16 %34 to i32
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %39 = load i32, i32* @DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, align 4
  %40 = load i16, i16* %7, align 2
  %41 = call i32 @load_asic_generic(%struct.echoaudio* %38, i32 %39, i16 signext %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load i16, i16* %7, align 2
  %48 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 1
  store i16 %47, i16* %49, align 8
  br label %50

50:                                               ; preds = %46, %29
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
