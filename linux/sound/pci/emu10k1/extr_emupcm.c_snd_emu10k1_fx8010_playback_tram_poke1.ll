; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_tram_poke1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_tram_poke1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, i16*, i16*, i32, i32)* @snd_emu10k1_fx8010_playback_tram_poke1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_fx8010_playback_tram_poke1(i16* %0, i16* %1, i16* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  store i16* %1, i16** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i32, i32* %9, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i16*, i16** %8, align 8
  %21 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %21, i16** %8, align 8
  %22 = load i16, i16* %20, align 2
  %23 = load i16*, i16** %6, align 8
  %24 = getelementptr inbounds i16, i16* %23, i32 -1
  store i16* %24, i16** %6, align 8
  store i16 %22, i16* %23, align 2
  %25 = load i16*, i16** %8, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %8, align 8
  %27 = load i16, i16* %25, align 2
  %28 = load i16*, i16** %7, align 8
  %29 = getelementptr inbounds i16, i16* %28, i32 -1
  store i16* %29, i16** %7, align 8
  store i16 %27, i16* %28, align 2
  br label %15

30:                                               ; preds = %15
  br label %48

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i16*, i16** %8, align 8
  %38 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %38, i16** %8, align 8
  %39 = load i16, i16* %37, align 2
  %40 = load i16*, i16** %7, align 8
  %41 = getelementptr inbounds i16, i16* %40, i32 -1
  store i16* %41, i16** %7, align 8
  store i16 %39, i16* %40, align 2
  %42 = load i16*, i16** %8, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %8, align 8
  %44 = load i16, i16* %42, align 2
  %45 = load i16*, i16** %6, align 8
  %46 = getelementptr inbounds i16, i16* %45, i32 -1
  store i16* %46, i16** %6, align 8
  store i16 %44, i16* %45, align 2
  br label %32

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
