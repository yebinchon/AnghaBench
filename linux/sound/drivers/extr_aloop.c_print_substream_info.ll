; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_print_substream_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_print_substream_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.loopback = type { %struct.loopback_cable*** }
%struct.loopback_cable = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Cable %i substream %i:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  inactive\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  valid: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  running: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"  pause: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.loopback*, i32, i32)* @print_substream_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_substream_info(%struct.snd_info_buffer* %0, %struct.loopback* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.loopback*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.loopback_cable*, align 8
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.loopback* %1, %struct.loopback** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.loopback*, %struct.loopback** %6, align 8
  %11 = getelementptr inbounds %struct.loopback, %struct.loopback* %10, i32 0, i32 0
  %12 = load %struct.loopback_cable***, %struct.loopback_cable**** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %12, i64 %14
  %16 = load %struct.loopback_cable**, %struct.loopback_cable*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %16, i64 %18
  %20 = load %struct.loopback_cable*, %struct.loopback_cable** %19, align 8
  store %struct.loopback_cable* %20, %struct.loopback_cable** %9, align 8
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.loopback_cable*, %struct.loopback_cable** %9, align 8
  %26 = icmp eq %struct.loopback_cable* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %60

30:                                               ; preds = %4
  %31 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %32 = load %struct.loopback_cable*, %struct.loopback_cable** %9, align 8
  %33 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %37 = load %struct.loopback_cable*, %struct.loopback_cable** %9, align 8
  %38 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %42 = load %struct.loopback_cable*, %struct.loopback_cable** %9, align 8
  %43 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %47 = load %struct.loopback_cable*, %struct.loopback_cable** %9, align 8
  %48 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @print_dpcm_info(%struct.snd_info_buffer* %46, i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %54 = load %struct.loopback_cable*, %struct.loopback_cable** %9, align 8
  %55 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @print_dpcm_info(%struct.snd_info_buffer* %53, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @print_dpcm_info(%struct.snd_info_buffer*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
