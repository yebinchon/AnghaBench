; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.es1968* }
%struct.es1968 = type { i64 }

@ESM_AC97_INDEX = common dso_local global i64 0, align 8
@ESM_AC97_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_es1968_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_es1968_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca %struct.es1968*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 0
  %9 = load %struct.es1968*, %struct.es1968** %8, align 8
  store %struct.es1968* %9, %struct.es1968** %6, align 8
  %10 = load %struct.es1968*, %struct.es1968** %6, align 8
  %11 = call i32 @snd_es1968_ac97_wait(%struct.es1968* %10)
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %13, 128
  %15 = trunc i32 %14 to i16
  %16 = load %struct.es1968*, %struct.es1968** %6, align 8
  %17 = getelementptr inbounds %struct.es1968, %struct.es1968* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ESM_AC97_INDEX, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i16 zeroext %15, i64 %20)
  %22 = load %struct.es1968*, %struct.es1968** %6, align 8
  %23 = call i32 @snd_es1968_ac97_wait_poll(%struct.es1968* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.es1968*, %struct.es1968** %6, align 8
  %27 = getelementptr inbounds %struct.es1968, %struct.es1968* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ESM_AC97_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call zeroext i16 @inw(i64 %30)
  store i16 %31, i16* %5, align 2
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i16, i16* %5, align 2
  ret i16 %33
}

declare dso_local i32 @snd_es1968_ac97_wait(%struct.es1968*) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @snd_es1968_ac97_wait_poll(%struct.es1968*) #1

declare dso_local zeroext i16 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
