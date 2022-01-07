; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i32, i64, i64, i16, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@ECHO_CLOCK_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@FW_MONA_361_1_ASIC96 = common dso_local global i16 0, align 2
@FW_MONA_301_1_ASIC96 = common dso_local global i16 0, align 2
@FW_MONA_361_1_ASIC48 = common dso_local global i16 0, align 2
@FW_MONA_301_1_ASIC48 = common dso_local global i16 0, align 2
@DSP_FNC_LOAD_MONA_PCI_CARD_ASIC = common dso_local global i32 0, align 4
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
@.str.1 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d invalid!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %175

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 88200
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %175

44:                                               ; preds = %35
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DEVICE_ID_56361, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i16, i16* @FW_MONA_361_1_ASIC96, align 2
  store i16 %51, i16* %8, align 2
  br label %54

52:                                               ; preds = %44
  %53 = load i16, i16* @FW_MONA_301_1_ASIC96, align 2
  store i16 %53, i16* %8, align 2
  br label %54

54:                                               ; preds = %52, %50
  br label %66

55:                                               ; preds = %32
  %56 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %57 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DEVICE_ID_56361, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i16, i16* @FW_MONA_361_1_ASIC48, align 2
  store i16 %62, i16* %8, align 2
  br label %65

63:                                               ; preds = %55
  %64 = load i16, i16* @FW_MONA_301_1_ASIC48, align 2
  store i16 %64, i16* %8, align 2
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %54
  store i8 0, i8* %9, align 1
  %67 = load i16, i16* %8, align 2
  %68 = sext i16 %67 to i32
  %69 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %70 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %69, i32 0, i32 4
  %71 = load i16, i16* %70, align 8
  %72 = sext i16 %71 to i32
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %66
  %75 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %76 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %75, i32 0, i32 7
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %79 = load i32, i32* @DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, align 4
  %80 = load i16, i16* %8, align 2
  %81 = call i32 @load_asic_generic(%struct.echoaudio* %78, i32 %79, i16 signext %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %83 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %82, i32 0, i32 7
  %84 = call i32 @spin_lock_irq(i32* %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %175

89:                                               ; preds = %74
  %90 = load i16, i16* %8, align 2
  %91 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %92 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %91, i32 0, i32 4
  store i16 %90, i16* %92, align 8
  store i8 1, i8* %9, align 1
  br label %93

93:                                               ; preds = %89, %66
  store i32 0, i32* %7, align 4
  %94 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %95 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %94, i32 0, i32 6
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @le32_to_cpu(i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @GML_SPDIF_RATE_CLEAR_MASK, align 4
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  switch i32 %106, label %140 [
    i32 96000, label %107
    i32 88200, label %109
    i32 48000, label %111
    i32 44100, label %115
    i32 32000, label %126
    i32 22050, label %132
    i32 16000, label %134
    i32 11025, label %136
    i32 8000, label %138
  ]

107:                                              ; preds = %93
  %108 = load i32, i32* @GML_96KHZ, align 4
  store i32 %108, i32* %7, align 4
  br label %150

109:                                              ; preds = %93
  %110 = load i32, i32* @GML_88KHZ, align 4
  store i32 %110, i32* %7, align 4
  br label %150

111:                                              ; preds = %93
  %112 = load i32, i32* @GML_48KHZ, align 4
  %113 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %7, align 4
  br label %150

115:                                              ; preds = %93
  %116 = load i32, i32* @GML_44KHZ, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %115
  br label %150

126:                                              ; preds = %93
  %127 = load i32, i32* @GML_32KHZ, align 4
  %128 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %7, align 4
  br label %150

132:                                              ; preds = %93
  %133 = load i32, i32* @GML_22KHZ, align 4
  store i32 %133, i32* %7, align 4
  br label %150

134:                                              ; preds = %93
  %135 = load i32, i32* @GML_16KHZ, align 4
  store i32 %135, i32* %7, align 4
  br label %150

136:                                              ; preds = %93
  %137 = load i32, i32* @GML_11KHZ, align 4
  store i32 %137, i32* %7, align 4
  br label %150

138:                                              ; preds = %93
  %139 = load i32, i32* @GML_8KHZ, align 4
  store i32 %139, i32* %7, align 4
  br label %150

140:                                              ; preds = %93
  %141 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %142 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %141, i32 0, i32 5
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %175

150:                                              ; preds = %138, %136, %134, %132, %126, %125, %111, %109, %107
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %157 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %156, i32 0, i32 6
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i8* %155, i8** %159, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %162 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %164 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %163, i32 0, i32 5
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i32, i8*, ...) @dev_dbg(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %169)
  %171 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i8, i8* %9, align 1
  %174 = call i32 @write_control_reg(%struct.echoaudio* %171, i32 %172, i8 signext %173)
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %150, %140, %87, %41, %16
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i16 signext) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
