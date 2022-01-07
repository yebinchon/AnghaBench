; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { %struct.snd_virmidi_dev* }
%struct.snd_virmidi_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ALSA: seq_virmidi: seq_mode is not set: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi*)* @snd_virmidi_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_dev_register(%struct.snd_rawmidi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi*, align 8
  %4 = alloca %struct.snd_virmidi_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %3, align 8
  %6 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %6, i32 0, i32 0
  %8 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %7, align 8
  store %struct.snd_virmidi_dev* %8, %struct.snd_virmidi_dev** %4, align 8
  %9 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %10 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %29 [
    i32 128, label %12
    i32 129, label %20
  ]

12:                                               ; preds = %1
  %13 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %14 = call i32 @snd_virmidi_dev_attach_seq(%struct.snd_virmidi_dev* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %12
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %22 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %20
  br label %36

29:                                               ; preds = %1
  %30 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %31 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28, %19
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %29, %25, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @snd_virmidi_dev_attach_seq(%struct.snd_virmidi_dev*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
