; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.aureon_spec* }
%struct.aureon_spec = type { i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ice1712*, i16)* @aureon_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @aureon_ac97_read(%struct.snd_ice1712* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.aureon_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 0
  %8 = load %struct.aureon_spec*, %struct.aureon_spec** %7, align 8
  store %struct.aureon_spec* %8, %struct.aureon_spec** %5, align 8
  %9 = load %struct.aureon_spec*, %struct.aureon_spec** %5, align 8
  %10 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %9, i32 0, i32 0
  %11 = load i16*, i16** %10, align 8
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 127
  %15 = ashr i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %11, i64 %16
  %18 = load i16, i16* %17, align 2
  ret i16 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
