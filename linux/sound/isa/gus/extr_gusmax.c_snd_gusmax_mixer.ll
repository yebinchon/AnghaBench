; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusmax.c_snd_gusmax_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusmax.c_snd_gusmax_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Aux Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Synth Playback Switch\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Aux Playback Volume\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Synth Playback Volume\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"CD Playback Switch\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CD Playback Volume\00", align 1
@SNDRV_MIXER_ETYPE_INPUT = common dso_local global i32 0, align 4
@SNDRV_MIXER_ETYPE_SWITCH1 = common dso_local global i32 0, align 4
@SNDRV_MIXER_ETYPE_VOLUME1 = common dso_local global i32 0, align 4
@SNDRV_MIXER_IN_MIC = common dso_local global i8* null, align 8
@SNDRV_MIXER_IN_MONO = common dso_local global i8* null, align 8
@mixer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_wss*)* @snd_gusmax_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusmax_mixer(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  %6 = alloca %struct.snd_ctl_elem_id, align 4
  %7 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %8 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %9 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %8, i32 0, i32 0
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %4, align 8
  %11 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 12)
  %12 = call i32 @memset(%struct.snd_ctl_elem_id* %6, i32 0, i32 12)
  %13 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %23 = call i32 @snd_ctl_rename_id(%struct.snd_card* %22, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %23, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %35 = call i32 @snd_ctl_rename_id(%struct.snd_card* %34, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %35, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %48 = call i32 @snd_ctl_rename_id(%struct.snd_card* %47, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %48, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcpy(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %60 = call i32 @snd_ctl_rename_id(%struct.snd_card* %59, %struct.snd_ctl_elem_id* %5, %struct.snd_ctl_elem_id* %6)
  store i32 %60, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62, %50, %37, %25
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_ctl_rename_id(%struct.snd_card*, %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
