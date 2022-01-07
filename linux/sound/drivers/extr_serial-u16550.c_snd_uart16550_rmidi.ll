; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_rmidi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_rmidi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_uart16550 = type { i32 }
%struct.snd_rawmidi = type { i32, %struct.snd_uart16550*, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"UART Serial MIDI\00", align 1
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i64 0, align 8
@snd_uart16550_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i64 0, align 8
@snd_uart16550_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Serial MIDI\00", align 1
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_uart16550*, i32, i32, i32, %struct.snd_rawmidi**)* @snd_uart16550_rmidi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_uart16550_rmidi(%struct.snd_uart16550* %0, i32 %1, i32 %2, i32 %3, %struct.snd_rawmidi** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_uart16550*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi**, align 8
  %12 = alloca %struct.snd_rawmidi*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_uart16550* %0, %struct.snd_uart16550** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.snd_rawmidi** %4, %struct.snd_rawmidi*** %11, align 8
  %14 = load %struct.snd_uart16550*, %struct.snd_uart16550** %7, align 8
  %15 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @snd_rawmidi_new(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, %struct.snd_rawmidi** %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %64

25:                                               ; preds = %5
  %26 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %27 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %28 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %26, i64 %27, i32* @snd_uart16550_input)
  %29 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %30 = load i64, i64* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %31 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %29, i64 %30, i32* @snd_uart16550_output)
  %32 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcpy(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %37 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @snd_uart16550_substreams(i32* %40)
  %42 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %43 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @snd_uart16550_substreams(i32* %46)
  %48 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %49 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_uart16550*, %struct.snd_uart16550** %7, align 8
  %56 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %57 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %56, i32 0, i32 1
  store %struct.snd_uart16550* %55, %struct.snd_uart16550** %57, align 8
  %58 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %11, align 8
  %59 = icmp ne %struct.snd_rawmidi** %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %25
  %61 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %62 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %11, align 8
  store %struct.snd_rawmidi* %61, %struct.snd_rawmidi** %62, align 8
  br label %63

63:                                               ; preds = %60, %25
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %23
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_uart16550_substreams(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
