; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_note_off_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_note_off_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%struct.snd_seq_event = type { i32 }
%struct.seq_oss_synthinfo = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NOTEON = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NOTEOFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*)* @note_off_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_off_event(%struct.seq_oss_devinfo* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.snd_seq_event* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_oss_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_seq_event*, align 8
  %14 = alloca %struct.seq_oss_synthinfo*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_seq_event* %5, %struct.snd_seq_event** %13, align 8
  %15 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.seq_oss_synthinfo* @snd_seq_oss_synth_info(%struct.seq_oss_devinfo* %15, i32 %16)
  store %struct.seq_oss_synthinfo* %17, %struct.seq_oss_synthinfo** %14, align 8
  %18 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %19 = icmp ne %struct.seq_oss_synthinfo* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %112

23:                                               ; preds = %6
  %24 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %25 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %109 [
    i32 129, label %28
    i32 130, label %100
    i32 128, label %100
  ]

28:                                               ; preds = %23
  %29 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %30 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %39 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %33, %28
  %43 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %50 = call i32 @set_note_event(%struct.seq_oss_devinfo* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, %struct.snd_seq_event* %49)
  store i32 %50, i32* %7, align 4
  br label %112

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %54 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @array_index_nospec(i32 %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %58 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %51
  %67 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %68 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %76 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %83 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 -1, i32* %88, align 4
  %89 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %96 = call i32 @set_note_event(%struct.seq_oss_devinfo* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, %struct.snd_seq_event* %95)
  store i32 %96, i32* %7, align 4
  br label %112

97:                                               ; preds = %51
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %112

100:                                              ; preds = %23, %23
  %101 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %108 = call i32 @set_note_event(%struct.seq_oss_devinfo* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, %struct.snd_seq_event* %107)
  store i32 %108, i32* %7, align 4
  br label %112

109:                                              ; preds = %23
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %100, %97, %66, %42, %20
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.seq_oss_synthinfo* @snd_seq_oss_synth_info(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @set_note_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
