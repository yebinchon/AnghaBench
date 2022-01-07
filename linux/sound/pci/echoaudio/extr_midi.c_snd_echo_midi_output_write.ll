; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_output_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@MIDI_OUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Try to send %d bytes...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"write_midi() error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%d bytes sent\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Full\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Timer armed(%d)\0A\00", align 1
@chip = common dso_local global %struct.echoaudio* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @snd_echo_midi_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_echo_midi_output_write(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %11 = ptrtoint %struct.echoaudio* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = load i32, i32* @timer, align 4
  %14 = call %struct.echoaudio* @from_timer(i32 %11, %struct.timer_list* %12, i32 %13)
  store %struct.echoaudio* %14, %struct.echoaudio** %3, align 8
  %15 = load i32, i32* @MIDI_OUT_BUFFER_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %21 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_rawmidi_transmit_empty(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %87, label %31

31:                                               ; preds = %1
  %32 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MIDI_OUT_BUFFER_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @snd_rawmidi_transmit_peek(i32 %34, i8* %19, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @write_midi(%struct.echoaudio* %45, i8* %19, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %31
  %51 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %52 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 9000, i32* %6, align 4
  %58 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %86

60:                                               ; preds = %31
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %65 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %72 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @snd_rawmidi_transmit_ack(i32 %73, i32 %74)
  br label %85

76:                                               ; preds = %60
  %77 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %78 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 32, i32* %6, align 4
  %83 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %84 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %63
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %89 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @snd_rawmidi_transmit_empty(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %87
  %94 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %95 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 3
  %101 = sdiv i32 %100, 25
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %104 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %103, i32 0, i32 3
  %105 = load i64, i64* @jiffies, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @HZ, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %108, 999
  %110 = sdiv i32 %109, 1000
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %105, %111
  %113 = call i32 @mod_timer(i32* %104, i64 %112)
  %114 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %115 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @HZ, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %121, 999
  %123 = sdiv i32 %122, 1000
  %124 = call i32 (i32, i8*, ...) @dev_dbg(i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %98, %93, %87
  %126 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %127 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %126, i32 0, i32 1
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %130)
  ret void
}

declare dso_local %struct.echoaudio* @from_timer(i32, %struct.timer_list*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit_empty(i32) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @write_midi(%struct.echoaudio*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
