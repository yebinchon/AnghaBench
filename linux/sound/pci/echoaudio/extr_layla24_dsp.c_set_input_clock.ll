; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GML_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GML_SPDIF_CLOCK = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@GML_WORD_CLOCK = common dso_local global i32 0, align 4
@GML_CLOCK_DETECT_BIT_WORD96 = common dso_local global i32 0, align 4
@GML_ADAT_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Input clock 0x%x not supported for Layla24\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %17 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %83 [
    i32 130, label %23
    i32 129, label %31
    i32 128, label %48
    i32 131, label %66
  ]

23:                                               ; preds = %2
  %24 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 0
  store i32 130, i32* %25, align 8
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_sample_rate(%struct.echoaudio* %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %100

31:                                               ; preds = %2
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %100

40:                                               ; preds = %31
  %41 = load i32, i32* @GML_SPDIF_CLOCK, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %93

48:                                               ; preds = %2
  %49 = load i32, i32* @GML_WORD_CLOCK, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GML_CLOCK_DETECT_BIT_WORD96, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %65

60:                                               ; preds = %48
  %61 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %93

66:                                               ; preds = %2
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %100

75:                                               ; preds = %66
  %76 = load i32, i32* @GML_ADAT_CLOCK, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %93

83:                                               ; preds = %2
  %84 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %85 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %100

93:                                               ; preds = %75, %65, %40
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %96 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @write_control_reg(%struct.echoaudio* %97, i32 %98, i32 1)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %93, %83, %72, %37, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
