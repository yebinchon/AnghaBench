; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_timing_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_timing_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32 }
%union.evrec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_seq_event = type { i32 }

@SNDRV_SEQ_OSS_MODE_MUSIC = common dso_local global i32 0, align 4
@SEQ_ECHO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*)* @timing_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timing_event(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %union.evrec*, align 8
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca %union.evrec, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %union.evrec* %1, %union.evrec** %6, align 8
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  %9 = load %union.evrec*, %union.evrec** %6, align 8
  %10 = bitcast %union.evrec* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %74 [
    i32 130, label %13
    i32 129, label %37
    i32 131, label %48
    i32 128, label %59
  ]

13:                                               ; preds = %3
  %14 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %15 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SNDRV_SEQ_OSS_MODE_MUSIC, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %21 = load %union.evrec*, %union.evrec** %6, align 8
  %22 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %23 = call i32 @set_echo_event(%struct.seq_oss_devinfo* %20, %union.evrec* %21, %struct.snd_seq_event* %22)
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %13
  %25 = call i32 @memset(%union.evrec* %8, i32 0, i32 8)
  %26 = load %union.evrec*, %union.evrec** %6, align 8
  %27 = bitcast %union.evrec* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* @SEQ_ECHO, align 4
  %32 = or i32 %30, %31
  %33 = bitcast %union.evrec* %8 to i32*
  store i32 %32, i32* %33, align 4
  %34 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %35 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %36 = call i32 @set_echo_event(%struct.seq_oss_devinfo* %34, %union.evrec* %8, %struct.snd_seq_event* %35)
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %3
  %38 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %39 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %44 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_seq_oss_timer_stop(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %77

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %77

48:                                               ; preds = %3
  %49 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %50 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %55 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_seq_oss_timer_continue(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %77

58:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %77

59:                                               ; preds = %3
  %60 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %61 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %66 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %union.evrec*, %union.evrec** %6, align 8
  %69 = bitcast %union.evrec* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_seq_oss_timer_tempo(i32 %67, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %77

73:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %77

74:                                               ; preds = %3
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %73, %64, %58, %53, %47, %42, %24, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @set_echo_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @memset(%union.evrec*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_timer_stop(i32) #1

declare dso_local i32 @snd_seq_oss_timer_continue(i32) #1

declare dso_local i32 @snd_seq_oss_timer_tempo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
