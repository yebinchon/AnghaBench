; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@ECHO_CLOCK_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@E3G_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@E3G_96KHZ = common dso_local global i32 0, align 4
@E3G_88KHZ = common dso_local global i32 0, align 4
@E3G_48KHZ = common dso_local global i32 0, align 4
@E3G_44KHZ = common dso_local global i32 0, align 4
@E3G_32KHZ = common dso_local global i32 0, align 4
@E3G_CONTINUOUS_CLOCK = common dso_local global i32 0, align 4
@E3G_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@E3G_MAGIC_NUMBER = common dso_local global i32 0, align 4
@E3G_FREQ_REG_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SetSampleRate: %d clock %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %17 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %23, i8** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @set_input_clock(%struct.echoaudio* %31, i64 %34)
  store i32 0, i32* %3, align 4
  br label %133

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 50000
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @snd_BUG_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %133

53:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le32_to_cpu(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @E3G_CLOCK_CLEAR_MASK, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %74 [
    i32 96000, label %64
    i32 88200, label %66
    i32 48000, label %68
    i32 44100, label %70
    i32 32000, label %72
  ]

64:                                               ; preds = %53
  %65 = load i32, i32* @E3G_96KHZ, align 4
  store i32 %65, i32* %7, align 4
  br label %83

66:                                               ; preds = %53
  %67 = load i32, i32* @E3G_88KHZ, align 4
  store i32 %67, i32* %7, align 4
  br label %83

68:                                               ; preds = %53
  %69 = load i32, i32* @E3G_48KHZ, align 4
  store i32 %69, i32* %7, align 4
  br label %83

70:                                               ; preds = %53
  %71 = load i32, i32* @E3G_44KHZ, align 4
  store i32 %71, i32* %7, align 4
  br label %83

72:                                               ; preds = %53
  %73 = load i32, i32* @E3G_32KHZ, align 4
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %53
  %75 = load i32, i32* @E3G_CONTINUOUS_CLOCK, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 50000
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %72, %70, %68, %66, %64
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @set_spdif_bits(%struct.echoaudio* %87, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 50000
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %83
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 32000
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 32000, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* @E3G_MAGIC_NUMBER, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %102, %103
  %105 = sub nsw i32 %104, 2
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @E3G_FREQ_REG_MAX, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @E3G_FREQ_REG_MAX, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %101
  %112 = load i32, i32* %5, align 4
  %113 = call i8* @cpu_to_le32(i32 %112)
  %114 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %115 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %114, i32 0, i32 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %120 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %122 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @dev_dbg(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @write_control_reg(%struct.echoaudio* %129, i32 %130, i32 %131, i32 0)
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %111, %50, %15
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @set_input_clock(%struct.echoaudio*, i64) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_spdif_bits(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
