; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_m3* }
%struct.snd_m3 = type { i32 }

@CODEC_COMMAND = common dso_local global i32 0, align 4
@CODEC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_m3_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_m3_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_m3*, align 8
  %6 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 0
  %9 = load %struct.snd_m3*, %struct.snd_m3** %8, align 8
  store %struct.snd_m3* %9, %struct.snd_m3** %5, align 8
  store i16 -1, i16* %6, align 2
  %10 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %11 = call i64 @snd_m3_ac97_wait(%struct.snd_m3* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 127
  %19 = or i32 128, %18
  %20 = load i32, i32* @CODEC_COMMAND, align 4
  %21 = call i32 @snd_m3_outb(%struct.snd_m3* %15, i32 %19, i32 %20)
  %22 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %23 = call i64 @snd_m3_ac97_wait(%struct.snd_m3* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %30

26:                                               ; preds = %14
  %27 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %28 = load i32, i32* @CODEC_DATA, align 4
  %29 = call zeroext i16 @snd_m3_inw(%struct.snd_m3* %27, i32 %28)
  store i16 %29, i16* %6, align 2
  br label %30

30:                                               ; preds = %26, %25, %13
  %31 = load i16, i16* %6, align 2
  ret i16 %31
}

declare dso_local i64 @snd_m3_ac97_wait(%struct.snd_m3*) #1

declare dso_local i32 @snd_m3_outb(%struct.snd_m3*, i32, i32) #1

declare dso_local zeroext i16 @snd_m3_inw(%struct.snd_m3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
