; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_read_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_read_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_ac97_read_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @test_bit(i16 zeroext %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i16 (%struct.snd_ac97*, i16)**
  %19 = load i16 (%struct.snd_ac97*, i16)*, i16 (%struct.snd_ac97*, i16)** %18, align 8
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %21 = load i16, i16* %4, align 2
  %22 = call zeroext i16 %19(%struct.snd_ac97* %20, i16 zeroext %21)
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %23, i32 0, i32 0
  %25 = load i16*, i16** %24, align 8
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  store i16 %22, i16* %28, align 2
  br label %29

29:                                               ; preds = %11, %2
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 0
  %32 = load i16*, i16** %31, align 8
  %33 = load i16, i16* %4, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  ret i16 %36
}

declare dso_local i32 @test_bit(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
