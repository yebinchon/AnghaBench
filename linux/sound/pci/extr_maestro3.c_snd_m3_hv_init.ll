; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_hv_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_hv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i64, i32 }

@GPI_VOL_DOWN = common dso_local global i32 0, align 4
@GPI_VOL_UP = common dso_local global i32 0, align 4
@GPIO_MASK = common dso_local global i64 0, align 8
@GPIO_DATA = common dso_local global i64 0, align 8
@GPIO_DIRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*)* @snd_m3_hv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_hv_init(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  %5 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %6 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @GPI_VOL_DOWN, align 4
  %9 = load i32, i32* @GPI_VOL_UP, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %12 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %51

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @GPIO_MASK, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @outw(i32 65535, i64 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @GPIO_DATA, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @outw(i32 0, i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @GPIO_MASK, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @outw(i32 %26, i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @GPIO_DIRECTION, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @inw(i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @GPIO_DIRECTION, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @outw(i32 %37, i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @GPIO_MASK, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @outw(i32 %42, i64 %45)
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @GPIO_MASK, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @outw(i32 65535, i64 %49)
  br label %51

51:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
