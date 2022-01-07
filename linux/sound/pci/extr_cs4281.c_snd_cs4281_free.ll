; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4281 = type { i64, i32, i32, i32 }

@BA0_HIMR = common dso_local global i32 0, align 4
@BA0_CLKCR1 = common dso_local global i32 0, align 4
@BA0_SSPM = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs4281*)* @snd_cs4281_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_free(%struct.cs4281* %0) #0 {
  %2 = alloca %struct.cs4281*, align 8
  store %struct.cs4281* %0, %struct.cs4281** %2, align 8
  %3 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %4 = call i32 @snd_cs4281_free_gameport(%struct.cs4281* %3)
  %5 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %6 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %11 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @synchronize_irq(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %16 = load i32, i32* @BA0_HIMR, align 4
  %17 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %15, i32 %16, i32 2147483647)
  %18 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %19 = load i32, i32* @BA0_CLKCR1, align 4
  %20 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %18, i32 %19, i32 0)
  %21 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %22 = load i32, i32* @BA0_SSPM, align 4
  %23 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %21, i32 %22, i32 0)
  %24 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %25 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCI_D3hot, align 4
  %28 = call i32 @pci_set_power_state(i32 %26, i32 %27)
  %29 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %30 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %14
  %34 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %35 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %38 = call i32 @free_irq(i64 %36, %struct.cs4281* %37)
  br label %39

39:                                               ; preds = %33, %14
  %40 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %41 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @iounmap(i32 %42)
  %44 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %45 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iounmap(i32 %46)
  %48 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %49 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pci_release_regions(i32 %50)
  %52 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %53 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pci_disable_device(i32 %54)
  %56 = load %struct.cs4281*, %struct.cs4281** %2, align 8
  %57 = call i32 @kfree(%struct.cs4281* %56)
  ret i32 0
}

declare dso_local i32 @snd_cs4281_free_gameport(%struct.cs4281*) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i32, i32) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.cs4281*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.cs4281*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
