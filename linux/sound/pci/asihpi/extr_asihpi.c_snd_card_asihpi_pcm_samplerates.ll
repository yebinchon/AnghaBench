; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_samplerates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_samplerates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_hardware = type { i32, i32, i32 }

@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_8000_96000 = common dso_local global i32 0, align 4
@HPI_SOURCENODE_CLOCK_SOURCE = common dso_local global i32 0, align 4
@HPI_CONTROL_SAMPLECLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No local sampleclock, err %d\0A\00", align 1
@SNDRV_PCM_RATE_5512 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_8000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_11025 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_16000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_22050 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_64000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_176400 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_192000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card_asihpi*, %struct.snd_pcm_hardware*)* @snd_card_asihpi_pcm_samplerates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_card_asihpi_pcm_samplerates(%struct.snd_card_asihpi* %0, %struct.snd_pcm_hardware* %1) #0 {
  %3 = alloca %struct.snd_card_asihpi*, align 8
  %4 = alloca %struct.snd_pcm_hardware*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %3, align 8
  store %struct.snd_pcm_hardware* %1, %struct.snd_pcm_hardware** %4, align 8
  store i32 200000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %13 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %18 = load i32, i32* %11, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @SNDRV_PCM_RATE_8000_96000, align 4
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %11, align 4
  store i32 8000, i32* %9, align 4
  store i32 100000, i32* %10, align 4
  br label %128

23:                                               ; preds = %2
  %24 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %25 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HPI_SOURCENODE_CLOCK_SOURCE, align 4
  %28 = load i32, i32* @HPI_CONTROL_SAMPLECLOCK, align 4
  %29 = call i64 @hpi_mixer_get_control(i32 %26, i32 %27, i32 0, i32 0, i32 0, i32 %28, i32* %6)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %34 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %32, %23
  store i32 -1, i32* %8, align 4
  br label %40

40:                                               ; preds = %124, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 100
  br i1 %42, label %43, label %127

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @hpi_sample_clock_get_sample_rate(i32 %47, i32* %7)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %124

51:                                               ; preds = %46
  br label %59

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @hpi_sample_clock_query_local_rate(i32 %53, i32 %54, i32* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %127

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @max(i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  switch i32 %66, label %119 [
    i32 5512, label %67
    i32 8000, label %71
    i32 11025, label %75
    i32 16000, label %79
    i32 22050, label %83
    i32 32000, label %87
    i32 44100, label %91
    i32 48000, label %95
    i32 64000, label %99
    i32 88200, label %103
    i32 96000, label %107
    i32 176400, label %111
    i32 192000, label %115
  ]

67:                                               ; preds = %59
  %68 = load i32, i32* @SNDRV_PCM_RATE_5512, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %123

71:                                               ; preds = %59
  %72 = load i32, i32* @SNDRV_PCM_RATE_8000, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %123

75:                                               ; preds = %59
  %76 = load i32, i32* @SNDRV_PCM_RATE_11025, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %123

79:                                               ; preds = %59
  %80 = load i32, i32* @SNDRV_PCM_RATE_16000, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %123

83:                                               ; preds = %59
  %84 = load i32, i32* @SNDRV_PCM_RATE_22050, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %123

87:                                               ; preds = %59
  %88 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %123

91:                                               ; preds = %59
  %92 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %123

95:                                               ; preds = %59
  %96 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %123

99:                                               ; preds = %59
  %100 = load i32, i32* @SNDRV_PCM_RATE_64000, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %123

103:                                              ; preds = %59
  %104 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %123

107:                                              ; preds = %59
  %108 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %123

111:                                              ; preds = %59
  %112 = load i32, i32* @SNDRV_PCM_RATE_176400, align 4
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %123

115:                                              ; preds = %59
  %116 = load i32, i32* @SNDRV_PCM_RATE_192000, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %123

119:                                              ; preds = %59
  %120 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67
  br label %124

124:                                              ; preds = %123, %50
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %40

127:                                              ; preds = %57, %40
  br label %128

128:                                              ; preds = %127, %16
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %4, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %4, align 8
  %134 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local i64 @hpi_mixer_get_control(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @hpi_sample_clock_get_sample_rate(i32, i32*) #1

declare dso_local i64 @hpi_sample_clock_query_local_rate(i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
