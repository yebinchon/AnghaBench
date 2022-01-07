; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9721.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9721.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32* }

@patch_sigmatel_stac9700_ops = common dso_local global i32 0, align 4
@AC97_SIGMATEL_ANALOG = common dso_local global i32 0, align 4
@AC97_SIGMATEL_CIC1 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_CIC2 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_BIAS1 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_BIAS2 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_MULTICHN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_sigmatel_stac9721 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_sigmatel_stac9721(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %3 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %3, i32 0, i32 0
  store i32* @patch_sigmatel_stac9700_ops, i32** %4, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = load i32, i32* @AC97_SIGMATEL_ANALOG, align 4
  %7 = call i64 @snd_ac97_read(%struct.snd_ac97* %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %11 = load i32, i32* @AC97_SIGMATEL_CIC1, align 4
  %12 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %10, i32 %11, i32 43962)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %14 = load i32, i32* @AC97_SIGMATEL_CIC2, align 4
  %15 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %13, i32 %14, i32 16384)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = load i32, i32* @AC97_SIGMATEL_BIAS1, align 4
  %18 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %16, i32 %17, i32 43962)
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %20 = load i32, i32* @AC97_SIGMATEL_BIAS2, align 4
  %21 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %19, i32 %20, i32 2)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %24 = load i32, i32* @AC97_SIGMATEL_MULTICHN, align 4
  %25 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %23, i32 %24, i32 0)
  ret i32 0
}

declare dso_local i64 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
