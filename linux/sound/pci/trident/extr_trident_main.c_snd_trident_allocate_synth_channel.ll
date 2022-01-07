; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_synth_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_synth_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@T4D_BANK_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_allocate_synth_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_allocate_synth_channel(%struct.snd_trident* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  store i32 31, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %10 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @T4D_BANK_A, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %23 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @T4D_BANK_A, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %21
  store i32 %28, i32* %26, align 4
  %29 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %30 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %8
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %5

39:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
