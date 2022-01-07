; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_codec_core_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_codec_core_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Codec: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Not Set\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Address: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"AFG Function Id: 0x%x (unsol %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"MFG Function Id: 0x%x (unsol %u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Vendor Id: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Subsystem Id: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Revision Id: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Modem Function Group: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"No Modem Function Group found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*, %struct.snd_info_buffer*)* @print_codec_core_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_codec_core_info(%struct.hdac_device* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %5 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %6 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %8 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %13 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %18 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %19 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %22 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %23)
  br label %28

25:                                               ; preds = %11, %2
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %31 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %35 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %41 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %44 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %28
  %48 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %49 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %55 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %58 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %52, %47
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %63 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %64 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %68 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %69 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %74 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %75)
  %77 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %78 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %61
  %82 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %83 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %84 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %85)
  br label %90

87:                                               ; preds = %61
  %88 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %81
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
