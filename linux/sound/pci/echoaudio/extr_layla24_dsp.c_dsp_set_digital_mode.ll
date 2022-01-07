; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_dsp_set_digital_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_dsp_set_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ECHO_CLOCK_ADAT = common dso_local global i32 0, align 4
@FW_LAYLA24_2S_ASIC = common dso_local global i16 0, align 2
@ECHO_CLOCK_SPDIF = common dso_local global i32 0, align 4
@FW_LAYLA24_2A_ASIC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [32 x i8] c"Digital mode not supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GML_DIGITAL_MODE_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_OPTICAL_MODE = common dso_local global i32 0, align 4
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
  %9 = alloca i16, align 2
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %20
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ECHO_CLOCK_ADAT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i16, i16* @FW_LAYLA24_2S_ASIC, align 2
  store i16 %19, i16* %9, align 2
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ECHO_CLOCK_SPDIF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i16, i16* @FW_LAYLA24_2A_ASIC, align 2
  store i16 %28, i16* %9, align 2
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %112

39:                                               ; preds = %27, %18
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 0
  store i32 48000, i32* %44, align 8
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %49 = load i32, i32* @ECHO_CLOCK_INTERNAL, align 4
  %50 = call i32 @set_input_clock(%struct.echoaudio* %48, i32 %49)
  %51 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %52 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %51, i32 0, i32 3
  %53 = call i32 @spin_unlock_irq(i32* %52)
  br label %54

54:                                               ; preds = %42, %39
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = load i16, i16* %9, align 2
  %57 = call i64 @switch_asic(%struct.echoaudio* %55, i16 signext %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %112

62:                                               ; preds = %54
  %63 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 3
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %67 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @GML_DIGITAL_MODE_CLEAR_MASK, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  switch i32 %75, label %89 [
    i32 129, label %76
    i32 128, label %80
    i32 130, label %81
  ]

76:                                               ; preds = %62
  %77 = load i32, i32* @GML_SPDIF_OPTICAL_MODE, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %89

80:                                               ; preds = %62
  br label %89

81:                                               ; preds = %62
  %82 = load i32, i32* @GML_ADAT_MODE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %62, %81, %80, %76
  %90 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @write_control_reg(%struct.echoaudio* %90, i32 %91, i32 1)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %94 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %93, i32 0, i32 3
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %112

100:                                              ; preds = %89
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %103 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %105 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %100, %98, %59, %29
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_input_clock(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @switch_asic(%struct.echoaudio*, i16 signext) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
