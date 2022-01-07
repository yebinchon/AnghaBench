; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sonicvibes*)* @snd_sonicvibes_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_free(%struct.sonicvibes* %0) #0 {
  %2 = alloca %struct.sonicvibes*, align 8
  store %struct.sonicvibes* %0, %struct.sonicvibes** %2, align 8
  %3 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %4 = call i32 @snd_sonicvibes_free_gameport(%struct.sonicvibes* %3)
  %5 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %6 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %9 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pci_write_config_dword(i32 %7, i32 64, i32 %10)
  %12 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %13 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %16 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pci_write_config_dword(i32 %14, i32 72, i32 %17)
  %19 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %20 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %25 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %28 = call i32 @free_irq(i64 %26, %struct.sonicvibes* %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %31 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @release_and_free_resource(i32 %32)
  %34 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %35 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @release_and_free_resource(i32 %36)
  %38 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %39 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_release_regions(i32 %40)
  %42 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %43 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_disable_device(i32 %44)
  %46 = load %struct.sonicvibes*, %struct.sonicvibes** %2, align 8
  %47 = call i32 @kfree(%struct.sonicvibes* %46)
  ret i32 0
}

declare dso_local i32 @snd_sonicvibes_free_gameport(%struct.sonicvibes*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.sonicvibes*) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.sonicvibes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
