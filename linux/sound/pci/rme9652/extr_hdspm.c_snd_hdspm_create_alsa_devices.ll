; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_alsa_devices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_alsa_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.hdspm = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [16 x i8] c"Create card...\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"proc init...\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Set defaults...\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Update mixer controls...\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Initializing complete?\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"error registering card\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"... yes now\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdspm*)* @snd_hdspm_create_alsa_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_create_alsa_devices(%struct.snd_card* %0, %struct.hdspm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdspm* %1, %struct.hdspm** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %13 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %14 = call i32 @snd_hdspm_create_pcm(%struct.snd_card* %12, %struct.hdspm* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %111

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %23 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_hdspm_create_midi(%struct.snd_card* %27, %struct.hdspm* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %40 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %41 = call i32 @snd_hdspm_create_controls(%struct.snd_card* %39, %struct.hdspm* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %111

46:                                               ; preds = %38
  %47 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %48 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %49 = call i32 @snd_hdspm_create_hwdep(%struct.snd_card* %47, %struct.hdspm* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %111

54:                                               ; preds = %46
  %55 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %56 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %60 = call i32 @snd_hdspm_proc_init(%struct.hdspm* %59)
  %61 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %62 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  %63 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %64 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %63, i32 0, i32 2
  store i32 -1, i32* %64, align 8
  %65 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %66 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %65, i32 0, i32 3
  store i32 -1, i32* %66, align 4
  %67 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %68 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %67, i32 0, i32 4
  store i32 -1, i32* %68, align 8
  %69 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %70 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %69, i32 0, i32 5
  store i32 -1, i32* %70, align 4
  %71 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %72 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %71, i32 0, i32 7
  store i32* null, i32** %72, align 8
  %73 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %74 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %73, i32 0, i32 6
  store i32* null, i32** %74, align 8
  %75 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %76 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %80 = call i32 @snd_hdspm_set_defaults(%struct.hdspm* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %54
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %111

85:                                               ; preds = %54
  %86 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %87 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %91 = call i32 @hdspm_update_simple_mixer_controls(%struct.hdspm* %90)
  %92 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %93 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %97 = call i32 @snd_card_register(%struct.snd_card* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %85
  %101 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %102 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %111

106:                                              ; preds = %85
  %107 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %108 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_dbg(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %100, %83, %52, %44, %33, %17
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_hdspm_create_pcm(%struct.snd_card*, %struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_create_midi(%struct.snd_card*, %struct.hdspm*, i32) #1

declare dso_local i32 @snd_hdspm_create_controls(%struct.snd_card*, %struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_create_hwdep(%struct.snd_card*, %struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_proc_init(%struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_set_defaults(%struct.hdspm*) #1

declare dso_local i32 @hdspm_update_simple_mixer_controls(%struct.hdspm*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
