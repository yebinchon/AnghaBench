; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_iec958.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_iec958.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ca0106* }
%struct.snd_ca0106 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@SAMPLE_RATE_TRACKER_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Status: %s, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Rate Locked\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Not Rate Locked\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SPDIF Locked\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"No SPDIF Lock\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Audio Valid\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"No valid audio\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Estimated sample rate: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"IEC958/SPDIF input status:\0A\00", align 1
@SPDIF_INPUT_STATUS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ca0106_proc_iec958 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ca0106_proc_iec958(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ca0106*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_ca0106*, %struct.snd_ca0106** %8, align 8
  store %struct.snd_ca0106* %9, %struct.snd_ca0106** %5, align 8
  %10 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %11 = load i32, i32* @SAMPLE_RATE_TRACKER_STATUS, align 4
  %12 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %10, i32 %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1048576
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 2097152
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 4194304
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %23, i8* %28)
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 1048575
  %33 = mul nsw i32 %32, 48000
  %34 = sdiv i32 %33, 32768
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 2097152
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %42 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %43 = load i32, i32* @SPDIF_INPUT_STATUS, align 4
  %44 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @snd_ca0106_proc_dump_iec958(%struct.snd_info_buffer* %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %2
  %49 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_ca0106_proc_dump_iec958(%struct.snd_info_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
