; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_tune_alc_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_tune_alc_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"ac97_quirk ALC_JACK is only for Realtek codecs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AC97_ID_ALC658D = common dso_local global i32 0, align 4
@snd_ac97_alc_jack_detect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @tune_alc_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tune_alc_jack(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, -256
  %8 = icmp ne i32 %7, 1095517952
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %11 = call i32 @ac97_err(%struct.snd_ac97* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %16 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %15, i32 122, i32 32, i32 32)
  %17 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %18 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %17, i32 122, i32 1, i32 1)
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AC97_ID_ALC658D, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %26 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %25, i32 116, i32 2048, i32 2048)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %34 = call i32 @snd_ac97_cnew(i32* @snd_ac97_alc_jack_detect, %struct.snd_ac97* %33)
  %35 = call i32 @snd_ctl_add(i32 %32, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ac97_err(%struct.snd_ac97*, i8*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ac97_cnew(i32*, %struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
