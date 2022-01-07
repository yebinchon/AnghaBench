; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_ptr_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_ptr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i32, i64 }

@PTR = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PTR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 %18, i64 %23)
  %25 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inl(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
