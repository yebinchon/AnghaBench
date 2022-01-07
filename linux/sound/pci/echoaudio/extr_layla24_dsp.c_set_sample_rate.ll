; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla24_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", align 1
@GML_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_RATE_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_96KHZ = common dso_local global i32 0, align 4
@GML_88KHZ = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@GML_SPDIF_SAMPLE_RATE1 = common dso_local global i32 0, align 4
@GML_44KHZ = common dso_local global i32 0, align 4
@GML_SPDIF_PRO_MODE = common dso_local global i32 0, align 4
@GML_SPDIF_SAMPLE_RATE0 = common dso_local global i32 0, align 4
@GML_32KHZ = common dso_local global i32 0, align 4
@GML_22KHZ = common dso_local global i32 0, align 4
@GML_16KHZ = common dso_local global i32 0, align 4
@GML_11KHZ = common dso_local global i32 0, align 4
@GML_8KHZ = common dso_local global i32 0, align 4
@LAYLA24_CONTINUOUS_CLOCK = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LAYLA24_MAGIC_NUMBER = common dso_local global i32 0, align 4
@DSP_VC_SET_LAYLA24_FREQUENCY_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 50000
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %155

25:                                               ; preds = %17
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %155

47:                                               ; preds = %25
  %48 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le32_to_cpu(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %55 = load i32, i32* @GML_SPDIF_RATE_CLEAR_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %93 [
    i32 96000, label %60
    i32 88200, label %62
    i32 48000, label %64
    i32 44100, label %68
    i32 32000, label %79
    i32 22050, label %85
    i32 16000, label %87
    i32 11025, label %89
    i32 8000, label %91
  ]

60:                                               ; preds = %47
  %61 = load i32, i32* @GML_96KHZ, align 4
  store i32 %61, i32* %7, align 4
  br label %131

62:                                               ; preds = %47
  %63 = load i32, i32* @GML_88KHZ, align 4
  store i32 %63, i32* %7, align 4
  br label %131

64:                                               ; preds = %47
  %65 = load i32, i32* @GML_48KHZ, align 4
  %66 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %7, align 4
  br label %131

68:                                               ; preds = %47
  %69 = load i32, i32* @GML_44KHZ, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %68
  br label %131

79:                                               ; preds = %47
  %80 = load i32, i32* @GML_32KHZ, align 4
  %81 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %7, align 4
  br label %131

85:                                               ; preds = %47
  %86 = load i32, i32* @GML_22KHZ, align 4
  store i32 %86, i32* %7, align 4
  br label %131

87:                                               ; preds = %47
  %88 = load i32, i32* @GML_16KHZ, align 4
  store i32 %88, i32* %7, align 4
  br label %131

89:                                               ; preds = %47
  %90 = load i32, i32* @GML_11KHZ, align 4
  store i32 %90, i32* %7, align 4
  br label %131

91:                                               ; preds = %47
  %92 = load i32, i32* @GML_8KHZ, align 4
  store i32 %92, i32* %7, align 4
  br label %131

93:                                               ; preds = %47
  %94 = load i32, i32* @LAYLA24_CONTINUOUS_CLOCK, align 4
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp sgt i32 %95, 50000
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %97
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 25000
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 25000, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %111 = call i32 @wait_handshake(%struct.echoaudio* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %155

116:                                              ; preds = %109
  %117 = load i32, i32* @LAYLA24_MAGIC_NUMBER, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sdiv i32 %117, %118
  %120 = sub nsw i32 %119, 2
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %123 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %122, i32 0, i32 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i8* %121, i8** %125, align 8
  %126 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %127 = call i32 @clear_handshake(%struct.echoaudio* %126)
  %128 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %129 = load i32, i32* @DSP_VC_SET_LAYLA24_FREQUENCY_REG, align 4
  %130 = call i32 @send_vector(%struct.echoaudio* %128, i32 %129)
  br label %131

131:                                              ; preds = %116, %91, %89, %87, %85, %79, %78, %64, %62, %60
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %138 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %137, i32 0, i32 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i8* %136, i8** %140, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %143 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %145 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %144, i32 0, i32 3
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @dev_dbg(i32 %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @write_control_reg(%struct.echoaudio* %152, i32 %153, i32 0)
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %131, %113, %31, %22
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
