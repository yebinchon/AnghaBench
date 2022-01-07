; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_acpi_nfit_test.c_nfit_intel_shutdown_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/extr_acpi_nfit_test.c_nfit_intel_shutdown_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_mem = type { i32, i32 }

@NFIT_MEM_DIRTY_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfit_intel_shutdown_status(%struct.nfit_mem* %0) #0 {
  %2 = alloca %struct.nfit_mem*, align 8
  store %struct.nfit_mem* %0, %struct.nfit_mem** %2, align 8
  %3 = load i32, i32* @NFIT_MEM_DIRTY_COUNT, align 4
  %4 = load %struct.nfit_mem*, %struct.nfit_mem** %2, align 8
  %5 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %4, i32 0, i32 1
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load %struct.nfit_mem*, %struct.nfit_mem** %2, align 8
  %8 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %7, i32 0, i32 0
  store i32 42, i32* %8, align 4
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
