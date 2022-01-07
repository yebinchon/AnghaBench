; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_aztech_azf3328_specific.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_aztech_azf3328_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.snd_kcontrol = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"3D Control - Center\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"3D Control - Depth\00", align 1
@AC97_3D_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"3D Control - Width\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Master Mono Playback\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Modem Playback\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Headphone Playback\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"FM Synth Playback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_aztech_azf3328_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_aztech_azf3328_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = call %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_kcontrol* %6, %struct.snd_kcontrol** %3, align 8
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %8 = call %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store %struct.snd_kcontrol* %8, %struct.snd_kcontrol** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = icmp ne %struct.snd_kcontrol* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @AC97_3D_CONTROL, align 4
  %13 = call i8* @AC97_SINGLE_VALUE(i32 %12, i32 1, i32 7, i32 0)
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = icmp ne %struct.snd_kcontrol* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @AC97_3D_CONTROL, align 4
  %23 = call i8* @AC97_SINGLE_VALUE(i32 %22, i32 8, i32 3, i32 0)
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %28 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %30 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97*, i8*) #1

declare dso_local i8* @AC97_SINGLE_VALUE(i32, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
