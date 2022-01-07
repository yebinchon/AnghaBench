; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_read_functions.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_read_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@snd_ac97_proc_read_functions.function_names = internal global [12 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c"Master Out\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"AUX Out\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Center/LFE Out\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SPDIF Out\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Phone In\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Mic 1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Mic 2\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CD In\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Video In\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Aux In\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Mono Out\00", align 1
@snd_ac97_proc_read_functions.locations = internal global [8 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [15 x i8] c"Rear I/O Panel\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Front Panel\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Motherboard\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Dock/External\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"NC/unused\00", align 1
@AC97_FUNC_SELECT = common dso_local global i32 0, align 4
@AC97_FUNC_INFO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [64 x i8] c"\0A                    Gain     Inverted  Buffer delay  Location\0A\00", align 1
@AC97_SENSE_INFO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [48 x i8] c"%-17s: %3d.%d dBV    %c      %2d/fs         %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, %struct.snd_info_buffer*)* @snd_ac97_proc_read_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ac97_proc_read_functions(%struct.snd_ac97* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %76, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %79

12:                                               ; preds = %9
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %14 = load i32, i32* @AC97_FUNC_SELECT, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 1
  %17 = call i32 @snd_ac97_write(%struct.snd_ac97* %13, i32 %14, i32 %16)
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %19 = load i32, i32* @AC97_FUNC_INFO, align 4
  %20 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %18, i32 %19)
  store i16 %20, i16* %7, align 2
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  br label %76

26:                                               ; preds = %12
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %34 = load i32, i32* @AC97_SENSE_INFO, align 4
  %35 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %33, i32 %34)
  store i16 %35, i16* %8, align 2
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [12 x i8*], [12 x i8*]* @snd_ac97_proc_read_functions.function_names, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 32768
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 1
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 28672
  %50 = ashr i32 %49, 12
  %51 = mul nsw i32 %46, %50
  %52 = mul nsw i32 %51, 3
  %53 = sdiv i32 %52, 2
  %54 = load i16, i16* %7, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 2048
  %57 = ashr i32 %56, 11
  %58 = mul nsw i32 %57, 5
  %59 = load i16, i16* %7, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 1024
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 88, i32 45
  %65 = load i16, i16* %7, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 992
  %68 = ashr i32 %67, 5
  %69 = load i16, i16* %8, align 2
  %70 = zext i16 %69 to i32
  %71 = ashr i32 %70, 13
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8*], [8 x i8*]* @snd_ac97_proc_read_functions.locations, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8* %40, i32 %53, i32 %58, i32 %64, i32 %68, i8* %74)
  br label %76

76:                                               ; preds = %32, %25
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %9

79:                                               ; preds = %9
  ret void
}

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i32, i32) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
