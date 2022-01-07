; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_wolfson_wm9713_specific.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_wolfson_wm9713_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wm13_snd_ac97_controls = common dso_local global i32* null, align 8
@AC97_PC_BEEP = common dso_local global i32 0, align 4
@AC97_PHONE = common dso_local global i32 0, align 4
@AC97_MIC = common dso_local global i32 0, align 4
@AC97_LINE = common dso_local global i32 0, align 4
@AC97_CD = common dso_local global i32 0, align 4
@AC97_VIDEO = common dso_local global i32 0, align 4
@AC97_REC_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_wolfson_wm9713_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_wolfson_wm9713_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32*, i32** @wm13_snd_ac97_controls, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @wm13_snd_ac97_controls, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %22 = call i32 @snd_ac97_cnew(i32* %20, %struct.snd_ac97* %21)
  %23 = call i32 @snd_ctl_add(i32 %16, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %33 = load i32, i32* @AC97_PC_BEEP, align 4
  %34 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %32, i32 %33, i32 2056)
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %36 = load i32, i32* @AC97_PHONE, align 4
  %37 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %35, i32 %36, i32 2056)
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %39 = load i32, i32* @AC97_MIC, align 4
  %40 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %38, i32 %39, i32 2056)
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %42 = load i32, i32* @AC97_LINE, align 4
  %43 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %41, i32 %42, i32 218)
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %45 = load i32, i32* @AC97_CD, align 4
  %46 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %44, i32 %45, i32 2056)
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %48 = load i32, i32* @AC97_VIDEO, align 4
  %49 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %47, i32 %48, i32 54802)
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %51 = load i32, i32* @AC97_REC_GAIN, align 4
  %52 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %50, i32 %51, i32 7072)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %31, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ac97_cnew(i32*, %struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
