; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_write_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_write_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_ac97*, i16, i16)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ac97_write_cache(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %8 = load i16, i16* %5, align 2
  %9 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %7, i16 zeroext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %42

12:                                               ; preds = %3
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i16, i16* %6, align 2
  %17 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %17, i32 0, i32 0
  %19 = load i16*, i16** %18, align 8
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  store i16 %16, i16* %22, align 2
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.snd_ac97*, i16, i16)*, i32 (%struct.snd_ac97*, i16, i16)** %28, align 8
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = load i16, i16* %5, align 2
  %32 = load i16, i16* %6, align 2
  %33 = call i32 %29(%struct.snd_ac97* %30, i16 zeroext %31, i16 zeroext %32)
  %34 = load i16, i16* %5, align 2
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_bit(i16 zeroext %34, i32 %37)
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i16 zeroext) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i16 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
