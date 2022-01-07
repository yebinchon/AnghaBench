; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %12 = load i16, i16* %7, align 2
  %13 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %11, i16 zeroext %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %4
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %23 = load i16, i16* %7, align 2
  %24 = load i16, i16* %8, align 2
  %25 = load i16, i16* %9, align 2
  %26 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %22, i16 zeroext %23, i16 zeroext %24, i16 zeroext %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %28 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %18, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i16 zeroext) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
