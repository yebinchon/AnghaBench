; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_audio_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_audio_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@USB_ID_US428 = common dso_local global i64 0, align 8
@USB_ID_US122 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usX2Y_audio_create(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %6 = call %struct.TYPE_7__* @usX2Y(%struct.snd_card* %5)
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %10 = call i32 @usX2Y_audio_stream_new(%struct.snd_card* %9, i32 10, i32 8)
  store i32 %10, i32* %4, align 4
  %11 = icmp sgt i32 0, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %16 = call %struct.TYPE_7__* @usX2Y(%struct.snd_card* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = load i64, i64* @USB_ID_US428, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %27 = call i32 @usX2Y_audio_stream_new(%struct.snd_card* %26, i32 0, i32 10)
  store i32 %27, i32* %4, align 4
  %28 = icmp sgt i32 0, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %34 = call %struct.TYPE_7__* @usX2Y(%struct.snd_card* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  %41 = load i64, i64* @USB_ID_US122, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %45 = call %struct.TYPE_7__* @usX2Y(%struct.snd_card* %44)
  %46 = call i32 @usX2Y_rate_set(%struct.TYPE_7__* %45, i32 44100)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %29, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_7__* @usX2Y(%struct.snd_card*) #1

declare dso_local i32 @usX2Y_audio_stream_new(%struct.snd_card*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @usX2Y_rate_set(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
