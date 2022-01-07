; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_spdif_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_spdif_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32 }

@RME9652_SPDIF_CLOCK = common dso_local global i32 0, align 4
@RME9652_status_register = common dso_local global i32 0, align 4
@RME9652_SPDIF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*)* @rme9652_spdif_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_spdif_read_byte(%struct.snd_rme9652* %0) #0 {
  %2 = alloca %struct.snd_rme9652*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 128, i64* %3, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i64, i64* %5, align 8
  %8 = icmp slt i64 %7, 8
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %11 = load i32, i32* @RME9652_SPDIF_CLOCK, align 4
  %12 = call i32 @rme9652_spdif_set_bit(%struct.snd_rme9652* %10, i32 %11, i32 1)
  %13 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %14 = load i32, i32* @RME9652_status_register, align 4
  %15 = call i32 @rme9652_read(%struct.snd_rme9652* %13, i32 %14)
  %16 = load i32, i32* @RME9652_SPDIF_READ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %9
  %24 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %25 = load i32, i32* @RME9652_SPDIF_CLOCK, align 4
  %26 = call i32 @rme9652_spdif_set_bit(%struct.snd_rme9652* %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = ashr i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %6

32:                                               ; preds = %6
  %33 = load i64, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

declare dso_local i32 @rme9652_spdif_set_bit(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_read(%struct.snd_rme9652*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
