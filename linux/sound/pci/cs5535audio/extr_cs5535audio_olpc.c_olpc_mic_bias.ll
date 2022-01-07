; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_olpc.c_olpc_mic_bias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_olpc.c_olpc_mic_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AC97_AD_MISC = common dso_local global i32 0, align 4
@AC97_AD_VREFD_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setting MIC Bias - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @olpc_mic_bias(%struct.snd_ac97* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @machine_is_olpc()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %34

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %15 = load i32, i32* @AC97_AD_MISC, align 4
  %16 = load i32, i32* @AC97_AD_VREFD_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AC97_AD_VREFD_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %14, i32 %15, i32 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %9
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %8, %24, %9
  ret void
}

declare dso_local i32 @machine_is_olpc(...) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
