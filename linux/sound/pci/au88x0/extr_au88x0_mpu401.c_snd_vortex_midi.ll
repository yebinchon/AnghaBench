; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_mpu401.c_snd_vortex_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_mpu401.c_snd_vortex_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.snd_rawmidi*, %struct.TYPE_5__*, i64 }
%struct.snd_rawmidi = type { i32, %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@VORTEX_CTRL = common dso_local global i64 0, align 8
@CTRL_MIDI_PORT = common dso_local global i64 0, align 8
@CTRL_MIDI_EN = common dso_local global i64 0, align 8
@VORTEX_CTRL2 = common dso_local global i64 0, align 8
@MIDI_CLOCK_DIV = common dso_local global i32 0, align 4
@VORTEX_MIDI_CMD = common dso_local global i64 0, align 8
@MPU401_RESET = common dso_local global i64 0, align 8
@VORTEX_MIDI_DATA = common dso_local global i64 0, align 8
@MPU401_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"midi port doesn't acknowledge!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VORTEX_IRQ_CTRL = common dso_local global i64 0, align 8
@IRQ_MIDI = common dso_local global i64 0, align 8
@MPU401_HW_AUREAL = common dso_local global i32 0, align 4
@MPU401_INFO_INTEGRATED = common dso_local global i32 0, align 4
@MPU401_INFO_MMIO = common dso_local global i32 0, align 4
@MPU401_INFO_IRQ_HOOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s MIDI %d\00", align 1
@CARD_NAME_SHORT = common dso_local global i8* null, align 8
@MPU401_HW_MPU401 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @snd_vortex_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_midi(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.snd_rawmidi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_mpu401*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VORTEX_CTRL, align 8
  %13 = call i64 @hwread(i64 %11, i64 %12)
  %14 = load i64, i64* @CTRL_MIDI_PORT, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = load i64, i64* @CTRL_MIDI_EN, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VORTEX_CTRL, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 @hwwrite(i64 %23, i64 %24, i64 %26)
  store i32 1, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VORTEX_CTRL2, align 8
  %32 = call i64 @hwread(i64 %30, i64 %31)
  %33 = and i64 %32, 4294901967
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @MIDI_CLOCK_DIV, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 255
  %40 = shl i32 %39, 4
  %41 = or i32 %36, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VORTEX_CTRL2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @hwwrite(i64 %46, i64 %47, i64 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VORTEX_MIDI_CMD, align 8
  %55 = load i64, i64* @MPU401_RESET, align 8
  %56 = call i32 @hwwrite(i64 %53, i64 %54, i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VORTEX_MIDI_DATA, align 8
  %61 = call i64 @hwread(i64 %59, i64 %60)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @MPU401_ACK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %147

75:                                               ; preds = %1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VORTEX_IRQ_CTRL, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VORTEX_IRQ_CTRL, align 8
  %84 = call i64 @hwread(i64 %82, i64 %83)
  %85 = load i64, i64* @IRQ_MIDI, align 8
  %86 = or i64 %84, %85
  %87 = call i32 @hwwrite(i64 %78, i64 %79, i64 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VORTEX_MIDI_DATA, align 8
  %92 = add nsw i64 %90, %91
  store i64 %92, i64* %8, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* @MPU401_HW_AUREAL, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* @MPU401_INFO_INTEGRATED, align 4
  %99 = load i32, i32* @MPU401_INFO_MMIO, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @MPU401_INFO_IRQ_HOOK, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @snd_mpu401_uart_new(%struct.TYPE_5__* %95, i32 0, i32 %96, i64 %97, i32 %102, i32 -1, %struct.snd_rawmidi** %4)
  store i32 %103, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %75
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VORTEX_CTRL, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VORTEX_CTRL, align 8
  %114 = call i64 @hwread(i64 %112, i64 %113)
  %115 = load i64, i64* @CTRL_MIDI_PORT, align 8
  %116 = xor i64 %115, -1
  %117 = and i64 %114, %116
  %118 = load i64, i64* @CTRL_MIDI_EN, align 8
  %119 = xor i64 %118, -1
  %120 = and i64 %117, %119
  %121 = call i32 @hwwrite(i64 %108, i64 %109, i64 %120)
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %147

123:                                              ; preds = %75
  %124 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %125 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %124, i32 0, i32 1
  %126 = load %struct.snd_mpu401*, %struct.snd_mpu401** %125, align 8
  store %struct.snd_mpu401* %126, %struct.snd_mpu401** %7, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VORTEX_MIDI_CMD, align 8
  %131 = add nsw i64 %129, %130
  %132 = load %struct.snd_mpu401*, %struct.snd_mpu401** %7, align 8
  %133 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %135 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** @CARD_NAME_SHORT, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @snprintf(i32 %136, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %137, i32 %142)
  %144 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store %struct.snd_rawmidi* %144, %struct.snd_rawmidi** %146, align 8
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %123, %105, %66
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @hwread(i64, i64) #1

declare dso_local i32 @hwwrite(i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_mpu401_uart_new(%struct.TYPE_5__*, i32, i32, i64, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
