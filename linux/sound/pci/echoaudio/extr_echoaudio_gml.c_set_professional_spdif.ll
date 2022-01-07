; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_gml.c_set_professional_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_gml.c_set_professional_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i8, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GML_SPDIF_FORMAT_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_TWO_CHANNEL = common dso_local global i32 0, align 4
@GML_SPDIF_24_BIT = common dso_local global i32 0, align 4
@GML_SPDIF_COPY_PERMIT = common dso_local global i32 0, align 4
@GML_SPDIF_PRO_MODE = common dso_local global i32 0, align 4
@GML_SPDIF_SAMPLE_RATE0 = common dso_local global i32 0, align 4
@GML_SPDIF_SAMPLE_RATE1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set_professional_spdif to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Professional\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Consumer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i8)* @set_professional_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_professional_spdif(%struct.echoaudio* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @GML_SPDIF_FORMAT_CLEAR_MASK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @GML_SPDIF_TWO_CHANNEL, align 4
  %18 = load i32, i32* @GML_SPDIF_24_BIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GML_SPDIF_COPY_PERMIT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i8, i8* %5, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %47 [
    i32 32000, label %33
    i32 44100, label %39
    i32 48000, label %43
  ]

33:                                               ; preds = %26
  %34 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %35 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %47

39:                                               ; preds = %26
  %40 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %26
  %44 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %26, %43, %39, %33
  br label %63

48:                                               ; preds = %2
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %62 [
    i32 32000, label %52
    i32 48000, label %58
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %54 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %48, %58, %52
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @write_control_reg(%struct.echoaudio* %64, i32 %65, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %63
  %71 = load i8, i8* %5, align 1
  %72 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %73 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %72, i32 0, i32 1
  store i8 %71, i8* %73, align 4
  %74 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %75 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8, i8* %5, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %84 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %70, %68
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
