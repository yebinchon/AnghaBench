; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_pcms_busy_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_pcms_busy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.usX2Ydev = type { i32, %struct.snd_usX2Y_substream** }
%struct.snd_usX2Y_substream = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @usX2Y_pcms_busy_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_pcms_busy_check(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = call %struct.usX2Ydev* @usX2Y(%struct.snd_card* %7)
  store %struct.usX2Ydev* %8, %struct.usX2Ydev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %12 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 2
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %18 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %17, i32 0, i32 1
  %19 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %19, i64 %21
  %23 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %22, align 8
  store %struct.snd_usX2Y_substream* %23, %struct.snd_usX2Y_substream** %6, align 8
  %24 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %25 = icmp ne %struct.snd_usX2Y_substream* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %28 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %33 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @SUBSTREAM_BUSY(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %31, %26, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %9

44:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.usX2Ydev* @usX2Y(%struct.snd_card*) #1

declare dso_local i64 @SUBSTREAM_BUSY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
