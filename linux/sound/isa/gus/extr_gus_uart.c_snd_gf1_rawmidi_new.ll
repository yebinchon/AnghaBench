; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_rawmidi_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_rawmidi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.snd_rawmidi*, i64, i32 }
%struct.snd_rawmidi = type { i32, %struct.snd_gus_card*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"GF1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"AMD InterWave\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_gf1_uart_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_gf1_uart_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_rawmidi_new(%struct.snd_gus_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_rawmidi_new(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_rawmidi** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)
  %26 = call i32 @strcpy(i32 %19, i8* %25)
  %27 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %28 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %29 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %27, i32 %28, i32* @snd_gf1_uart_output)
  %30 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %31 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %32 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %30, i32 %31, i32* @snd_gf1_uart_input)
  %33 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %34 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %43 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %43, i32 0, i32 1
  store %struct.snd_gus_card* %42, %struct.snd_gus_card** %44, align 8
  %45 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %46 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %47 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %46, i32 0, i32 0
  store %struct.snd_rawmidi* %45, %struct.snd_rawmidi** %47, align 8
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %16, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
