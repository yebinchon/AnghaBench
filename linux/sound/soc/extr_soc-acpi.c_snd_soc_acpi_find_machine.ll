; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-acpi.c_snd_soc_acpi_find_machine.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-acpi.c_snd_soc_acpi_find_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_acpi_mach = type { {}*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(%struct.snd_soc_acpi_mach* %0) #0 {
  %2 = alloca %struct.snd_soc_acpi_mach*, align 8
  %3 = alloca %struct.snd_soc_acpi_mach*, align 8
  %4 = alloca %struct.snd_soc_acpi_mach*, align 8
  %5 = alloca %struct.snd_soc_acpi_mach*, align 8
  store %struct.snd_soc_acpi_mach* %0, %struct.snd_soc_acpi_mach** %3, align 8
  %6 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %3, align 8
  store %struct.snd_soc_acpi_mach* %6, %struct.snd_soc_acpi_mach** %4, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %7
  %15 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i64 @acpi_dev_present(i64* %17, i32* null, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)**
  %24 = load %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)*, %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)** %23, align 8
  %25 = icmp ne %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)**
  %30 = load %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)*, %struct.snd_soc_acpi_mach* (%struct.snd_soc_acpi_mach*)** %29, align 8
  %31 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %32 = call %struct.snd_soc_acpi_mach* %30(%struct.snd_soc_acpi_mach* %31)
  store %struct.snd_soc_acpi_mach* %32, %struct.snd_soc_acpi_mach** %5, align 8
  %33 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %34 = icmp ne %struct.snd_soc_acpi_mach* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  store %struct.snd_soc_acpi_mach* %37, %struct.snd_soc_acpi_mach** %4, align 8
  br label %38

38:                                               ; preds = %36, %20
  %39 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  store %struct.snd_soc_acpi_mach* %39, %struct.snd_soc_acpi_mach** %2, align 8
  br label %45

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %42, i32 1
  store %struct.snd_soc_acpi_mach* %43, %struct.snd_soc_acpi_mach** %4, align 8
  br label %7

44:                                               ; preds = %7
  store %struct.snd_soc_acpi_mach* null, %struct.snd_soc_acpi_mach** %2, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %2, align 8
  ret %struct.snd_soc_acpi_mach* %46
}

declare dso_local i64 @acpi_dev_present(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
