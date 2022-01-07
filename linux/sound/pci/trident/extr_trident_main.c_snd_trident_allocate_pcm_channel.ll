; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_pcm_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_pcm_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64, i64, i32* }

@T4D_BANK_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_allocate_pcm_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_allocate_pcm_channel(%struct.snd_trident* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  %5 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %6 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %9 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  store i32 31, i32* %4, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %19 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @T4D_BANK_B, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %32 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @T4D_BANK_B, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %30
  store i32 %37, i32* %35, align 4
  %38 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %39 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 32
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  br label %14

48:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %28, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
