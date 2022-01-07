; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina24_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_gina24_dsp.c_set_sample_rate.c"
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
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 50000
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %126

24:                                               ; preds = %16
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ECHO_CLOCK_INTERNAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %32 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %126

46:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %47 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le32_to_cpu(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %54 = load i32, i32* @GML_SPDIF_RATE_CLEAR_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %92 [
    i32 96000, label %59
    i32 88200, label %61
    i32 48000, label %63
    i32 44100, label %67
    i32 32000, label %78
    i32 22050, label %84
    i32 16000, label %86
    i32 11025, label %88
    i32 8000, label %90
  ]

59:                                               ; preds = %46
  %60 = load i32, i32* @GML_96KHZ, align 4
  store i32 %60, i32* %7, align 4
  br label %102

61:                                               ; preds = %46
  %62 = load i32, i32* @GML_88KHZ, align 4
  store i32 %62, i32* %7, align 4
  br label %102

63:                                               ; preds = %46
  %64 = load i32, i32* @GML_48KHZ, align 4
  %65 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %102

67:                                               ; preds = %46
  %68 = load i32, i32* @GML_44KHZ, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GML_SPDIF_PRO_MODE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %67
  br label %102

78:                                               ; preds = %46
  %79 = load i32, i32* @GML_32KHZ, align 4
  %80 = load i32, i32* @GML_SPDIF_SAMPLE_RATE0, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @GML_SPDIF_SAMPLE_RATE1, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  br label %102

84:                                               ; preds = %46
  %85 = load i32, i32* @GML_22KHZ, align 4
  store i32 %85, i32* %7, align 4
  br label %102

86:                                               ; preds = %46
  %87 = load i32, i32* @GML_16KHZ, align 4
  store i32 %87, i32* %7, align 4
  br label %102

88:                                               ; preds = %46
  %89 = load i32, i32* @GML_11KHZ, align 4
  store i32 %89, i32* %7, align 4
  br label %102

90:                                               ; preds = %46
  %91 = load i32, i32* @GML_8KHZ, align 4
  store i32 %91, i32* %7, align 4
  br label %102

92:                                               ; preds = %46
  %93 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %94 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %126

102:                                              ; preds = %90, %88, %86, %84, %78, %77, %63, %61, %59
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %109 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %108, i32 0, i32 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i8* %107, i8** %111, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %114 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %116 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @dev_dbg(i32 %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @write_control_reg(%struct.echoaudio* %123, i32 %124, i32 0)
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %102, %92, %30, %21
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
