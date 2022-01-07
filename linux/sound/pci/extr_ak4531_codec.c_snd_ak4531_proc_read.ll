; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ak4531_codec.c_snd_ak4531_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ak4531_codec.c_snd_ak4531_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ak4531* }
%struct.snd_ak4531 = type { i32* }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Asahi Kasei AK4531\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Recording source   : %s\0AMIC gain           : %s\0A\00", align 1
@AK4531_AD_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@AK4531_MIC_GAIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"+30dB\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"+0dB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ak4531_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ak4531_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ak4531*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %6 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %7 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %6, i32 0, i32 0
  %8 = load %struct.snd_ak4531*, %struct.snd_ak4531** %7, align 8
  store %struct.snd_ak4531* %8, %struct.snd_ak4531** %5, align 8
  %9 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %10 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %12 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @AK4531_AD_IN, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %22 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @AK4531_MIC_GAIN, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %32 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %31)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
