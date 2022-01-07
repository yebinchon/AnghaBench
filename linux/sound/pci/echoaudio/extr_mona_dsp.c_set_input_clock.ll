; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_mona_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@GML_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@GML_CLOCK_DETECT_BIT_SPDIF96 = common dso_local global i32 0, align 4
@GML_SPDIF_CLOCK = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@GML_CLOCK_DETECT_BIT_WORD96 = common dso_local global i32 0, align 4
@GML_WORD_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set Mona clock to ADAT\0A\00", align 1
@GML_ADAT_CLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Input clock 0x%x not supported for Mona\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %9, i32 0, i32 6
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %157

16:                                               ; preds = %2
  %17 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %140 [
    i32 130, label %32
    i32 129, label %40
    i32 128, label %83
    i32 131, label %117
  ]

32:                                               ; preds = %16
  %33 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 0
  store i32 130, i32* %34, align 8
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @set_sample_rate(%struct.echoaudio* %35, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %157

40:                                               ; preds = %16
  %41 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %157

49:                                               ; preds = %40
  %50 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %51 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %50, i32 0, i32 3
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GML_CLOCK_DETECT_BIT_SPDIF96, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @switch_asic(%struct.echoaudio* %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 3
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %157

65:                                               ; preds = %49
  %66 = load i32, i32* @GML_SPDIF_CLOCK, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @GML_CLOCK_DETECT_BIT_SPDIF96, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %82

77:                                               ; preds = %65
  %78 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %73
  br label %150

83:                                               ; preds = %16
  %84 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %85 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @GML_CLOCK_DETECT_BIT_WORD96, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @switch_asic(%struct.echoaudio* %87, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %93 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %92, i32 0, i32 3
  %94 = call i32 @spin_lock_irq(i32* %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %157

99:                                               ; preds = %83
  %100 = load i32, i32* @GML_WORD_CLOCK, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @GML_CLOCK_DETECT_BIT_WORD96, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %116

111:                                              ; preds = %99
  %112 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %111, %107
  br label %150

117:                                              ; preds = %16
  %118 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %119 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_dbg(i32 %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %124 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %125 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %157

132:                                              ; preds = %117
  %133 = load i32, i32* @GML_ADAT_CLOCK, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %150

140:                                              ; preds = %16
  %141 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %142 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %132, %116, %82
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %153 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @write_control_reg(%struct.echoaudio* %154, i32 %155, i32 1)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %140, %129, %97, %63, %46, %32, %13
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @switch_asic(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
