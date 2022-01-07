; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_old_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_old_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%union.evrec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_seq_event = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_SEQ_EVENT_PGMCHANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*)* @old_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_event(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %union.evrec*, align 8
  %7 = alloca %struct.snd_seq_event*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %union.evrec* %1, %union.evrec** %6, align 8
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  %8 = load %union.evrec*, %union.evrec** %6, align 8
  %9 = bitcast %union.evrec* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %63 [
    i32 132, label %12
    i32 131, label %28
    i32 128, label %44
    i32 130, label %45
    i32 129, label %58
  ]

12:                                               ; preds = %3
  %13 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %14 = load %union.evrec*, %union.evrec** %6, align 8
  %15 = bitcast %union.evrec* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %union.evrec*, %union.evrec** %6, align 8
  %19 = bitcast %union.evrec* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %union.evrec*, %union.evrec** %6, align 8
  %23 = bitcast %union.evrec* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %27 = call i32 @note_off_event(%struct.seq_oss_devinfo* %13, i32 0, i32 %17, i32 %21, i32 %25, %struct.snd_seq_event* %26)
  store i32 %27, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  %29 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %30 = load %union.evrec*, %union.evrec** %6, align 8
  %31 = bitcast %union.evrec* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %union.evrec*, %union.evrec** %6, align 8
  %35 = bitcast %union.evrec* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %union.evrec*, %union.evrec** %6, align 8
  %39 = bitcast %union.evrec* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %43 = call i32 @note_on_event(%struct.seq_oss_devinfo* %29, i32 0, i32 %33, i32 %37, i32 %41, %struct.snd_seq_event* %42)
  store i32 %43, i32* %4, align 4
  br label %66

44:                                               ; preds = %3
  br label %63

45:                                               ; preds = %3
  %46 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %47 = load i32, i32* @SNDRV_SEQ_EVENT_PGMCHANGE, align 4
  %48 = load %union.evrec*, %union.evrec** %6, align 8
  %49 = bitcast %union.evrec* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %union.evrec*, %union.evrec** %6, align 8
  %53 = bitcast %union.evrec* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %57 = call i32 @set_control_event(%struct.seq_oss_devinfo* %46, i32 0, i32 %47, i32 %51, i32 0, i32 %55, %struct.snd_seq_event* %56)
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %3
  %59 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %60 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_seq_oss_timer_reset(i32 %61)
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %3, %44
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %58, %45, %28, %12
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @note_off_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @note_on_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @set_control_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_timer_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
