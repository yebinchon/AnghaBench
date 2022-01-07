; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina24_dsp.c_dsp_set_digital_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina24_dsp.c_dsp_set_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ECHO_CLOCK_ADAT = common dso_local global i32 0, align 4
@ECHO_CLOCK_SPDIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Digital mode not supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@GML_DIGITAL_MODE_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_OPTICAL_MODE = common dso_local global i32 0, align 4
@DEVICE_ID_56301 = common dso_local global i32 0, align 4
@GML_SPDIF_CDROM_MODE = common dso_local global i32 0, align 4
@GML_ADAT_MODE = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"set_digital_mode to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @dsp_set_digital_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_set_digital_mode(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %26 [
    i32 129, label %10
    i32 130, label %10
    i32 128, label %10
    i32 131, label %18
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ECHO_CLOCK_ADAT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %10
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ECHO_CLOCK_SPDIF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %18
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %108

36:                                               ; preds = %25, %17
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 3
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 0
  store i32 48000, i32* %44, align 8
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = load i32, i32* @ECHO_CLOCK_INTERNAL, align 4
  %47 = call i32 @set_input_clock(%struct.echoaudio* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @GML_DIGITAL_MODE_CLEAR_MASK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %83 [
    i32 129, label %59
    i32 130, label %63
    i32 128, label %74
    i32 131, label %75
  ]

59:                                               ; preds = %48
  %60 = load i32, i32* @GML_SPDIF_OPTICAL_MODE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %83

63:                                               ; preds = %48
  %64 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %65 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DEVICE_ID_56301, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @GML_SPDIF_CDROM_MODE, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %63
  br label %83

74:                                               ; preds = %48
  br label %83

75:                                               ; preds = %48
  %76 = load i32, i32* @GML_ADAT_MODE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %48, %75, %74, %73, %59
  %84 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @write_control_reg(%struct.echoaudio* %84, i32 %85, i32 1)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %88 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %87, i32 0, i32 3
  %89 = call i32 @spin_unlock_irq(i32* %88)
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %108

94:                                               ; preds = %83
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %97 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %99 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %104 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %94, %92, %26
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_input_clock(%struct.echoaudio*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
