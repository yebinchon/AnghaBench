; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_print_dpcm_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_print_dpcm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.loopback_pcm = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"    inactive\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"    buffer_size:\09%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"    buffer_pos:\09\09%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"    silent_size:\09%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"    period_size:\09%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"    bytes_per_sec:\09%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"    sample_align:\09%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"    rate_shift:\09\09%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"    update_pending:\09%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"    irq_pos:\09\09%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"    period_frac:\09%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"    last_jiffies:\09%lu (%lu)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"    timer_expires:\09%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.loopback_pcm*, i8*)* @print_dpcm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dpcm_info(%struct.snd_info_buffer* %0, %struct.loopback_pcm* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca i8*, align 8
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.loopback_pcm* %1, %struct.loopback_pcm** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %11 = icmp eq %struct.loopback_pcm* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %14 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %78

15:                                               ; preds = %3
  %16 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %18 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %23 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %32 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %37 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %38 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %42 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %43 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %48 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %49)
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %53 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %57 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %58 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %57, i32 0, i32 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %59)
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %62 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %63 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %62, i32 0, i32 9
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %64)
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %67 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %68 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @jiffies, align 4
  %71 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %74 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
