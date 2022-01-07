; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16_get_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16_get_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb*)* @snd_sb16_get_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb16_get_dma_mode(%struct.snd_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb*, align 8
  store %struct.snd_sb* %0, %struct.snd_sb** %3, align 8
  %4 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %5 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %16 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %20 [
    i32 128, label %18
    i32 129, label %19
  ]

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %21

19:                                               ; preds = %14
  store i32 2, i32* %2, align 4
  br label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %13
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
