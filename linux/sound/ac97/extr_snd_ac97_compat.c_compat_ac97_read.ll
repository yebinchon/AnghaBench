; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_compat_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_compat_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32 }
%struct.ac97_codec_device = type { %struct.ac97_controller* }
%struct.ac97_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 (%struct.ac97_controller*, i32, i16)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @compat_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @compat_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.ac97_codec_device*, align 8
  %6 = alloca %struct.ac97_controller*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ac97_codec_device* @to_ac97_device(i32 %9)
  store %struct.ac97_codec_device* %10, %struct.ac97_codec_device** %5, align 8
  %11 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %5, align 8
  %12 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %11, i32 0, i32 0
  %13 = load %struct.ac97_controller*, %struct.ac97_controller** %12, align 8
  store %struct.ac97_controller* %13, %struct.ac97_controller** %6, align 8
  %14 = load %struct.ac97_controller*, %struct.ac97_controller** %6, align 8
  %15 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i16 (%struct.ac97_controller*, i32, i16)*, i16 (%struct.ac97_controller*, i32, i16)** %17, align 8
  %19 = load %struct.ac97_controller*, %struct.ac97_controller** %6, align 8
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %21 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i16, i16* %4, align 2
  %24 = call zeroext i16 %18(%struct.ac97_controller* %19, i32 %22, i16 zeroext %23)
  ret i16 %24
}

declare dso_local %struct.ac97_codec_device* @to_ac97_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
