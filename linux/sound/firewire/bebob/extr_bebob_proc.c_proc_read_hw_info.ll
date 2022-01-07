; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_proc_read_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_proc_read_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_bebob* }
%struct.snd_bebob = type { i32 }
%struct.snd_info_buffer = type { i32 }
%struct.hw_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Manufacturer:\09%.8s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Protocol Ver:\09%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Build Ver:\09%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"GUID:\09\090x%.8X%.8X\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Model ID:\090x%02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Model Rev:\09%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Firmware Date:\09%.8s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Firmware Time:\09%.8s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Firmware ID:\090x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Firmware Ver:\09%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Base Addr:\090x%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Max Size:\09%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Loader Date:\09%.8s\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Loader Time:\09%.8s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_hw_info(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca %struct.hw_info*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_bebob*, %struct.snd_bebob** %8, align 8
  store %struct.snd_bebob* %9, %struct.snd_bebob** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hw_info* @kzalloc(i32 96, i32 %10)
  store %struct.hw_info* %11, %struct.hw_info** %6, align 8
  %12 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %13 = icmp eq %struct.hw_info* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %17 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %20 = call i64 @snd_bebob_read_block(i32 %18, i32 0, %struct.hw_info* %19, i32 96)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %103

23:                                               ; preds = %15
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %26 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %25, i32 0, i32 13
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %31 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %35 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %36 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %41 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %40, i32 0, i32 12
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %48 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %47, i32 0, i32 12
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %51)
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %55 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %59 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %60 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  %63 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %64 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %65 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %64, i32 0, i32 11
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %70 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %69, i32 0, i32 10
  %71 = bitcast i32* %70 to i8*
  %72 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %75 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %79 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %80 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %81)
  %83 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %84 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %85 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %86)
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %90 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %89, i32 0, i32 7
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %91)
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %94 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %95 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %94, i32 0, i32 9
  %96 = bitcast i32* %95 to i8*
  %97 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %96)
  %98 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %99 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %100 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %99, i32 0, i32 8
  %101 = bitcast i32* %100 to i8*
  %102 = call i32 (%struct.snd_info_buffer*, i8*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %23, %22
  %104 = load %struct.hw_info*, %struct.hw_info** %6, align 8
  %105 = call i32 @kfree(%struct.hw_info* %104)
  br label %106

106:                                              ; preds = %103, %14
  ret void
}

declare dso_local %struct.hw_info* @kzalloc(i32, i32) #1

declare dso_local i64 @snd_bebob_read_block(i32, i32, %struct.hw_info*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.hw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
