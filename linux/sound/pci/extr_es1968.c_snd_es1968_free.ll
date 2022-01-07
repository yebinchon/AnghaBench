; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64, i32, i32, i32, i64, i64, i32 }

@ESM_PORT_HOST_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1968*)* @snd_es1968_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_free(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %3 = load %struct.es1968*, %struct.es1968** %2, align 8
  %4 = getelementptr inbounds %struct.es1968, %struct.es1968* %3, i32 0, i32 6
  %5 = call i32 @cancel_work_sync(i32* %4)
  %6 = load %struct.es1968*, %struct.es1968** %2, align 8
  %7 = getelementptr inbounds %struct.es1968, %struct.es1968* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.es1968*, %struct.es1968** %2, align 8
  %12 = getelementptr inbounds %struct.es1968, %struct.es1968* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.es1968*, %struct.es1968** %2, align 8
  %17 = getelementptr inbounds %struct.es1968, %struct.es1968* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @synchronize_irq(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.es1968*, %struct.es1968** %2, align 8
  %22 = getelementptr inbounds %struct.es1968, %struct.es1968* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @outw(i32 1, i64 %24)
  %26 = load %struct.es1968*, %struct.es1968** %2, align 8
  %27 = getelementptr inbounds %struct.es1968, %struct.es1968* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 0, i64 %30)
  br label %32

32:                                               ; preds = %20, %1
  %33 = load %struct.es1968*, %struct.es1968** %2, align 8
  %34 = getelementptr inbounds %struct.es1968, %struct.es1968* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.es1968*, %struct.es1968** %2, align 8
  %39 = getelementptr inbounds %struct.es1968, %struct.es1968* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.es1968*, %struct.es1968** %2, align 8
  %42 = call i32 @free_irq(i64 %40, %struct.es1968* %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.es1968*, %struct.es1968** %2, align 8
  %45 = call i32 @snd_es1968_free_gameport(%struct.es1968* %44)
  %46 = load %struct.es1968*, %struct.es1968** %2, align 8
  %47 = getelementptr inbounds %struct.es1968, %struct.es1968* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_release_regions(i32 %48)
  %50 = load %struct.es1968*, %struct.es1968** %2, align 8
  %51 = getelementptr inbounds %struct.es1968, %struct.es1968* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_disable_device(i32 %52)
  %54 = load %struct.es1968*, %struct.es1968** %2, align 8
  %55 = call i32 @kfree(%struct.es1968* %54)
  ret i32 0
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.es1968*) #1

declare dso_local i32 @snd_es1968_free_gameport(%struct.es1968*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.es1968*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
