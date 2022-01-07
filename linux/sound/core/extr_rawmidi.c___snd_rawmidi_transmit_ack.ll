; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c___snd_rawmidi_transmit_ack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c___snd_rawmidi_transmit_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, i32, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32, i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [51 x i8] c"snd_rawmidi_transmit_ack: output is not active!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 2
  %9 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %8, align 8
  store %struct.snd_rawmidi_runtime* %9, %struct.snd_rawmidi_runtime** %6, align 8
  %10 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rmidi_dbg(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @snd_BUG_ON(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %35 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %47 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %21
  %58 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %59 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %64 = call i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %57
  %67 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %67, i32 0, i32 3
  %69 = call i32 @wake_up(i32* %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %21
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @rmidi_dbg(i32, i8*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
