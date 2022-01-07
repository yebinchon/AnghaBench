; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_spdif_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_spdif_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32 }

@RME9652_SPDIF_WRITE = common dso_local global i32 0, align 4
@RME9652_SPDIF_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rme9652*, i32)* @rme9652_spdif_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rme9652_spdif_write_byte(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  store i64 128, i64* %5, align 8
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 8
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %18 = load i32, i32* @RME9652_SPDIF_WRITE, align 4
  %19 = call i32 @rme9652_spdif_set_bit(%struct.snd_rme9652* %17, i32 %18, i32 1)
  br label %24

20:                                               ; preds = %10
  %21 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %22 = load i32, i32* @RME9652_SPDIF_WRITE, align 4
  %23 = call i32 @rme9652_spdif_set_bit(%struct.snd_rme9652* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %26 = load i32, i32* @RME9652_SPDIF_CLOCK, align 4
  %27 = call i32 @rme9652_spdif_set_bit(%struct.snd_rme9652* %25, i32 %26, i32 1)
  %28 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %29 = load i32, i32* @RME9652_SPDIF_CLOCK, align 4
  %30 = call i32 @rme9652_spdif_set_bit(%struct.snd_rme9652* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = ashr i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %7

36:                                               ; preds = %7
  ret void
}

declare dso_local i32 @rme9652_spdif_set_bit(%struct.snd_rme9652*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
