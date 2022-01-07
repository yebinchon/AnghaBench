; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_pcxhr* }
%struct.snd_pcxhr = type { %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i64, i32, i32, i32, i64 }
%struct.snd_info_buffer = type { i32 }

@pcxhr_proc_sync.textsHR22 = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"AES Sync\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AES 1\00", align 1
@pcxhr_proc_sync.textsPCXHR = internal global [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"Word\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"AES 2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"AES 3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"AES 4\00", align 1
@HR22_CLOCK_TYPE_MAX = common dso_local global i32 0, align 4
@PCXHR_CLOCK_TYPE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Current Sample Clock\09: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Current Sample Rate\09= %d\0A\00", align 1
@PCXHR_FIRMWARE_DSP_MAIN_INDEX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"%s Clock\09\09= %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"no firmware loaded\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @pcxhr_proc_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_proc_sync(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %13 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %12, i32 0, i32 0
  %14 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %13, align 8
  store %struct.snd_pcxhr* %14, %struct.snd_pcxhr** %5, align 8
  %15 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %15, i32 0, i32 0
  %17 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %16, align 8
  store %struct.pcxhr_mgr* %17, %struct.pcxhr_mgr** %6, align 8
  %18 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %19 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pcxhr_proc_sync.textsHR22, i64 0, i64 0), i8*** %7, align 8
  %23 = load i32, i32* @HR22_CLOCK_TYPE_MAX, align 4
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %2
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @pcxhr_proc_sync.textsPCXHR, i64 0, i64 0), i8*** %7, align 8
  %25 = load i32, i32* @PCXHR_CLOCK_TYPE_MAX, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %29 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %30)
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %35 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %38)
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %42 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  %45 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %46 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PCXHR_FIRMWARE_DSP_MAIN_INDEX, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @pcxhr_get_external_clock(%struct.pcxhr_mgr* %58, i32 %59, i32* %11)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %76

64:                                               ; preds = %57
  %65 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %53

76:                                               ; preds = %63, %53
  br label %80

77:                                               ; preds = %26
  %78 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %79 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %82 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @pcxhr_get_external_clock(%struct.pcxhr_mgr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
