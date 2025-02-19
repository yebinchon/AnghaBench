; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_ac97_update_bits_page.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_ac97_update_bits_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@AC97_INT_PAGING = common dso_local global i16 0, align 2
@AC97_PAGE_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i16, i16, i16, i16)* @ac97_update_bits_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_update_bits_page(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %17 = load i16, i16* @AC97_INT_PAGING, align 2
  %18 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %16, i16 zeroext %17)
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @AC97_PAGE_MASK, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %11, align 2
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %25 = load i16, i16* @AC97_INT_PAGING, align 2
  %26 = load i16, i16* @AC97_PAGE_MASK, align 2
  %27 = load i16, i16* %10, align 2
  %28 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %24, i16 zeroext %25, i16 zeroext %26, i16 zeroext %27)
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %30 = load i16, i16* %7, align 2
  %31 = load i16, i16* %8, align 2
  %32 = load i16, i16* %9, align 2
  %33 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %29, i16 zeroext %30, i16 zeroext %31, i16 zeroext %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %35 = load i16, i16* @AC97_INT_PAGING, align 2
  %36 = load i16, i16* @AC97_PAGE_MASK, align 2
  %37 = load i16, i16* %11, align 2
  %38 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %34, i16 zeroext %35, i16 zeroext %36, i16 zeroext %37)
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %40 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %12, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i16 zeroext) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
