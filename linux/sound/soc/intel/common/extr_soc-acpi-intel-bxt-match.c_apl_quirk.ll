; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_soc-acpi-intel-bxt-match.c_apl_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_soc-acpi-intel-bxt-match.c_apl_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_acpi_mach = type { i32 }
%struct.dmi_system_id = type { i64 }

@apl_table = common dso_local global i32 0, align 4
@APL_RVP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_acpi_mach* (i8*)* @apl_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_acpi_mach* @apl_quirk(i8* %0) #0 {
  %2 = alloca %struct.snd_soc_acpi_mach*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_soc_acpi_mach*, align 8
  %5 = alloca %struct.dmi_system_id*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.snd_soc_acpi_mach*
  store %struct.snd_soc_acpi_mach* %8, %struct.snd_soc_acpi_mach** %4, align 8
  %9 = load i32, i32* @apl_table, align 4
  %10 = call %struct.dmi_system_id* @dmi_first_match(i32 %9)
  store %struct.dmi_system_id* %10, %struct.dmi_system_id** %5, align 8
  %11 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %12 = icmp ne %struct.dmi_system_id* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %15 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @APL_RVP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store %struct.snd_soc_acpi_mach* null, %struct.snd_soc_acpi_mach** %2, align 8
  br label %24

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  store %struct.snd_soc_acpi_mach* %23, %struct.snd_soc_acpi_mach** %2, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %2, align 8
  ret %struct.snd_soc_acpi_mach* %25
}

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
