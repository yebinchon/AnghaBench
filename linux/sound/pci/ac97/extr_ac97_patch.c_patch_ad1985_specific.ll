; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_ad1985_specific.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_ad1985_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Master Playback\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Master Surround Playback\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Headphone Playback\00", align 1
@snd_ac97_ad198x_2cmic = common dso_local global i32 0, align 4
@snd_ac97_ad1985_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_ad1985_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1985_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %8 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %10 = call i32 @patch_build_controls(%struct.snd_ac97* %9, i32* @snd_ac97_ad198x_2cmic, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %16 = load i32*, i32** @snd_ac97_ad1985_controls, align 8
  %17 = load i32*, i32** @snd_ac97_ad1985_controls, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = call i32 @patch_build_controls(%struct.snd_ac97* %15, i32* %16, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97*, i8*, i8*) #1

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
