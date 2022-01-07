; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_compat_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_compat_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32 }
%struct.ac97_codec_device = type { %struct.ac97_controller* }
%struct.ac97_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ac97_controller*, i32, i16, i16)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @compat_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.ac97_codec_device*, align 8
  %8 = alloca %struct.ac97_controller*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ac97_codec_device* @to_ac97_device(i32 %11)
  store %struct.ac97_codec_device* %12, %struct.ac97_codec_device** %7, align 8
  %13 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %7, align 8
  %14 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %13, i32 0, i32 0
  %15 = load %struct.ac97_controller*, %struct.ac97_controller** %14, align 8
  store %struct.ac97_controller* %15, %struct.ac97_controller** %8, align 8
  %16 = load %struct.ac97_controller*, %struct.ac97_controller** %8, align 8
  %17 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ac97_controller*, i32, i16, i16)*, i32 (%struct.ac97_controller*, i32, i16, i16)** %19, align 8
  %21 = load %struct.ac97_controller*, %struct.ac97_controller** %8, align 8
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i16, i16* %5, align 2
  %26 = load i16, i16* %6, align 2
  %27 = call i32 %20(%struct.ac97_controller* %21, i32 %24, i16 zeroext %25, i16 zeroext %26)
  ret void
}

declare dso_local %struct.ac97_codec_device* @to_ac97_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
