; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_midi.c_snd_wavefront_midi_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_midi.c_snd_wavefront_midi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"MIDI interface not ready for command\0A\00", align 1
@UART_MODE_ON = common dso_local global i32 0, align 4
@MPU_ACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot set UART mode for MIDI interface\00", align 1
@WFC_MISYNTH_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"can't enable MIDI-IN-2-synth routing.\0A\00", align 1
@WFC_VMIDI_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"virtual MIDI mode not disabled\0A\00", align 1
@WFC_VMIDI_ON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot enable virtual MIDI mode.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wavefront_midi_start(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %25, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 30000
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = call i32 @output_ready(%struct.TYPE_12__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %14

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = call i32 @output_ready(%struct.TYPE_12__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @snd_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %105

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @UART_MODE_ON, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @outb(i32 %37, i32 %40)
  store i32 0, i32* %4, align 4
  store i32 50000, i32* %5, align 4
  br label %42

42:                                               ; preds = %63, %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %66

51:                                               ; preds = %49
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = call i64 @input_avail(%struct.TYPE_12__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = call i64 @read_data(%struct.TYPE_12__* %56)
  %58 = load i64, i64* @MPU_ACK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %66

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %42

66:                                               ; preds = %60, %49
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = call i32 @snd_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  store i32 -1, i32* %2, align 4
  br label %105

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = load i32, i32* @WFC_MISYNTH_ON, align 4
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %78 = call i64 @snd_wavefront_cmd(%struct.TYPE_11__* %74, i32 %75, i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 @snd_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = load i32, i32* @WFC_VMIDI_OFF, align 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %87 = call i64 @snd_wavefront_cmd(%struct.TYPE_11__* %83, i32 %84, i8* %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @snd_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %105

91:                                               ; preds = %82
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = call i32 @snd_wavefront_midi_enable_virtual(%struct.TYPE_13__* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = load i32, i32* @WFC_VMIDI_ON, align 4
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %98 = call i64 @snd_wavefront_cmd(%struct.TYPE_11__* %94, i32 %95, i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = call i32 @snd_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = call i32 @snd_wavefront_midi_disable_virtual(%struct.TYPE_13__* %102)
  br label %104

104:                                              ; preds = %100, %91
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %89, %69, %32
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @output_ready(%struct.TYPE_12__*) #1

declare dso_local i32 @snd_printk(i8*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i64 @input_avail(%struct.TYPE_12__*) #1

declare dso_local i64 @read_data(%struct.TYPE_12__*) #1

declare dso_local i64 @snd_wavefront_cmd(%struct.TYPE_11__*, i32, i8*, i8*) #1

declare dso_local i32 @snd_wavefront_midi_enable_virtual(%struct.TYPE_13__*) #1

declare dso_local i32 @snd_wavefront_midi_disable_virtual(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
