; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_reset.c_snd_gf1_alloc_voice_use.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_reset.c_snd_gf1_alloc_voice_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_gus_voice = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*, %struct.snd_gus_voice*, i32, i32, i32)* @snd_gf1_alloc_voice_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_alloc_voice_use(%struct.snd_gus_card* %0, %struct.snd_gus_voice* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca %struct.snd_gus_voice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %6, align 8
  store %struct.snd_gus_voice* %1, %struct.snd_gus_voice** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %12 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %22
    i32 130, label %31
  ]

14:                                               ; preds = %5
  %15 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %16 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %21 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  br label %40

22:                                               ; preds = %5
  %23 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %24 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %23, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %27 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %30 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  br label %40

31:                                               ; preds = %5
  %32 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %33 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %32, i32 0, i32 5
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %36 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %7, align 8
  %39 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %5, %31, %22, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
