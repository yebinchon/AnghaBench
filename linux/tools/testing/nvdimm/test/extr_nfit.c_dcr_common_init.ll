; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_dcr_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_dcr_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_control_region = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_nfit_control_region*)* @dcr_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcr_common_init(%struct.acpi_nfit_control_region* %0) #0 {
  %2 = alloca %struct.acpi_nfit_control_region*, align 8
  store %struct.acpi_nfit_control_region* %0, %struct.acpi_nfit_control_region** %2, align 8
  %3 = load %struct.acpi_nfit_control_region*, %struct.acpi_nfit_control_region** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_nfit_control_region, %struct.acpi_nfit_control_region* %3, i32 0, i32 0
  store i32 43981, i32* %4, align 8
  %5 = load %struct.acpi_nfit_control_region*, %struct.acpi_nfit_control_region** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_nfit_control_region, %struct.acpi_nfit_control_region* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.acpi_nfit_control_region*, %struct.acpi_nfit_control_region** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_nfit_control_region, %struct.acpi_nfit_control_region* %7, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.acpi_nfit_control_region*, %struct.acpi_nfit_control_region** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_nfit_control_region, %struct.acpi_nfit_control_region* %9, i32 0, i32 2
  store i32 1, i32* %10, align 8
  %11 = load %struct.acpi_nfit_control_region*, %struct.acpi_nfit_control_region** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_nfit_control_region, %struct.acpi_nfit_control_region* %11, i32 0, i32 3
  store i32 10, i32* %12, align 4
  %13 = call i32 @cpu_to_be16(i32 2016)
  %14 = load %struct.acpi_nfit_control_region*, %struct.acpi_nfit_control_region** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_nfit_control_region, %struct.acpi_nfit_control_region* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
