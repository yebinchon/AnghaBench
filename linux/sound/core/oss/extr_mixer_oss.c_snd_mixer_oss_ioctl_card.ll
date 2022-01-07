; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_ioctl_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_ioctl_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32* }
%struct.snd_mixer_oss_file = type { i32*, %struct.snd_card* }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixer_oss_ioctl_card(%struct.snd_card* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_mixer_oss_file, align 8
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = icmp ne %struct.snd_card* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %20 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %18
  %27 = call i32 @memset(%struct.snd_mixer_oss_file* %8, i32 0, i32 16)
  %28 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %29 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %8, i32 0, i32 1
  store %struct.snd_card* %28, %struct.snd_card** %29, align 8
  %30 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %8, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @snd_mixer_oss_ioctl1(%struct.snd_mixer_oss_file* %8, i32 %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %23, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.snd_mixer_oss_file*, i32, i32) #1

declare dso_local i32 @snd_mixer_oss_ioctl1(%struct.snd_mixer_oss_file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
