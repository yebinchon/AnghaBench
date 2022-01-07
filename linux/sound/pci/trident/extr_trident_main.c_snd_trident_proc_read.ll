; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_trident* }
%struct.snd_trident = type { i32, i8*, i8*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"SiS 7018 Audio\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Trident 4DWave PCI DX\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Trident 4DWave PCI NX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Spurious IRQs    : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Spurious IRQ dlta: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"IEC958 Mixer Out : %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Rear Speakers    : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0AVirtual Memory\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Memory Maximum : %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Memory Used    : %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Memory Free    : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_trident_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca i8*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_trident*, %struct.snd_trident** %8, align 8
  store %struct.snd_trident* %9, %struct.snd_trident** %5, align 8
  %10 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %11 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 130, label %14
    i32 129, label %15
  ]

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %17

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %17

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13
  %18 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %23 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %28 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %29)
  %31 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %32 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %40, label %35

35:                                               ; preds = %17
  %36 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %37 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %49

40:                                               ; preds = %35, %17
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %42 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %43 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 40
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %48 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %51 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %56 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %57 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %62)
  %64 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %65 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %54
  %70 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %71 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %74 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %78)
  %80 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %81 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %82 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %86)
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %90 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i8* @snd_util_mem_avail(%struct.TYPE_4__* %92)
  %94 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %69, %54
  br label %96

96:                                               ; preds = %95, %49
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i8* @snd_util_mem_avail(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
