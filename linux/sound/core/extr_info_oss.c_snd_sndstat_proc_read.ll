; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info_oss.c_snd_sndstat_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info_oss.c_snd_sndstat_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i32 }
%struct.snd_info_buffer = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Sound Driver:3.8.1a-980706 (ALSA emulation code)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Kernel: %s %s %s %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Config options: 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0AInstalled drivers: \0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Type 10: ALSA emulation\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0ACard config: \0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Audio devices\00", align 1
@SNDRV_OSS_INFO_DEV_AUDIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Synth devices\00", align 1
@SNDRV_OSS_INFO_DEV_SYNTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Midi devices\00", align 1
@SNDRV_OSS_INFO_DEV_MIDI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"Timers\00", align 1
@SNDRV_OSS_INFO_DEV_TIMERS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Mixers\00", align 1
@SNDRV_OSS_INFO_DEV_MIXERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_sndstat_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sndstat_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %5 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %6 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %8 = call %struct.TYPE_2__* (...) @init_utsname()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* (...) @init_utsname()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_2__* (...) @init_utsname()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* (...) @init_utsname()
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* (...) @init_utsname()
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = call i32 @snd_card_info_read_oss(%struct.snd_info_buffer* %32)
  %34 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %35 = load i32, i32* @SNDRV_OSS_INFO_DEV_AUDIO, align 4
  %36 = call i32 @snd_sndstat_show_strings(%struct.snd_info_buffer* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %38 = load i32, i32* @SNDRV_OSS_INFO_DEV_SYNTH, align 4
  %39 = call i32 @snd_sndstat_show_strings(%struct.snd_info_buffer* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = load i32, i32* @SNDRV_OSS_INFO_DEV_MIDI, align 4
  %42 = call i32 @snd_sndstat_show_strings(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %41)
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %44 = load i32, i32* @SNDRV_OSS_INFO_DEV_TIMERS, align 4
  %45 = call i32 @snd_sndstat_show_strings(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = load i32, i32* @SNDRV_OSS_INFO_DEV_MIXERS, align 4
  %48 = call i32 @snd_sndstat_show_strings(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

declare dso_local i32 @snd_card_info_read_oss(%struct.snd_info_buffer*) #1

declare dso_local i32 @snd_sndstat_show_strings(%struct.snd_info_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
