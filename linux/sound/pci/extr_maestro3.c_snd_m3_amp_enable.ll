; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_amp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_amp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, i32, i32 }

@GPIO_MASK = common dso_local global i64 0, align 8
@GPIO_DIRECTION = common dso_local global i64 0, align 8
@GPO_SECONDARY_AC97 = common dso_local global i32 0, align 4
@GPO_PRIMARY_AC97 = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, i32)* @snd_m3_amp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_amp_enable(%struct.snd_m3* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_m3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %9 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %12 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %23 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %27 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @GPIO_MASK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outw(i32 %31, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @GPIO_DIRECTION, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inw(i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @GPIO_DIRECTION, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outw(i32 %43, i64 %47)
  %49 = load i32, i32* @GPO_SECONDARY_AC97, align 4
  %50 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @GPIO_DATA, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outw(i32 %53, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @GPIO_MASK, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 65535, i64 %62)
  br label %64

64:                                               ; preds = %16, %15
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
